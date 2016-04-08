define(function(require) {
	// var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Baas = justep.Baas;

	var Model = function() {
		this.callParent();
		this.userID;
		this.userLoad = true;
		this.orderLoad = true;
	};

	Model.prototype.buyFoodBtnClick = function(event) {
		var row = event.bindingContext.$object;
		var isClicked = this.comp("cartData").find([ "fFoodID" ], [ row.getID() ]);
		if (isClicked.length === 0) {
			this.comp("cartData").newData({
				defaultValues : [ {
					"fFoodID" : row.getID(),
					"fName" : row.val("fName"),
					"fPrice" : row.val("fPrice"),
					"fCount" : 1
				} ]
			});
		} else {
			isClicked[0].val("fCount", isClicked[0].val("fCount") + 1);
		}
	};

	Model.prototype.addCartCountBtnClick = function(event) {
		var row = event.bindingContext.$object;
		row.val("fCount", row.val("fCount") + 1);
	};

	Model.prototype.subCartCountBtnClick = function(event) {
		var row = event.bindingContext.$object;
		if (row.val("fCount") > 0) {
			row.val("fCount", row.val("fCount") - 1);
		}
	};

	Model.prototype.modelLoad = function(event) {
		this.userID = "user1";

		if (justep.Browser.isX5App) {
			document.addEventListener("deviceready", function() {
				this.userID = window.device.uuid;
			});
		}

		this.comp("userData").setFilter("userIDFilter", "fID = '" + this.userID + "'");
		this.comp("orderData").setFilter("orderIDFilter", "fUserID = '" + this.userID + "'");
	};

	Model.prototype.userRefreshData = function(event) {
		if (this.userLoad) {
			var userData = this.comp("userData");
			userData.refreshData();

			if (userData.count() === 0) {
				userData.newData({
					defaultValues : [ {
						"fID" : this.userID,
						"fName" : '新用户'
					} ]
				});
			}
			this.userLoad = false;
		}
	};

	Model.prototype.saveUserBtnClick = function(event) {
		this.comp("userData").saveData({
			onSuccess : function() {
				justep.Util.hint("用户地址保存成功");
			}
		});
	};

	Model.prototype.ownContentActive = function(event) {
		this.userRefreshData(event);
	};

	Model.prototype.cartContentActive = function(event) {
		this.userRefreshData(event);
	};

	Model.prototype.orderContentActive = function(event) {
		var orderData = this.comp("orderData");
		if (this.orderLoad) {
			orderData.clear();
			orderData.clearOrderBy();
			orderData.setOrderBy("fCreateTime", 0);
			
			this.comp("orderList").refresh(true);
			this.orderLoad = false;
		}
	};

	Model.prototype.createOrderBtnClick = function(event) {
		var self = this;
		var orderData = this.comp("orderData");
		var cartData = this.comp("cartData");
		var userData = this.comp("userData");
		var orderID = justep.UUID.createUUID();

		// 数据校验
		if ($.trim(userData.val("fName")) === "" || $.trim(userData.val("fPhoneNumber")) === "" || $.trim(userData.val("fAddress")) === "") {
			justep.Util.hint("请填写完整的用户信息", {
				"type" : "danger"
			});
			return;
		}

		// 合并订单内容
		var content = "";
		cartData.each(function(options) {
			var row = options.row;
			content = content + row.val("fName") + "(" + row.val("fCount") + ") ";
		});

		orderData.newData({
			index : 0,
			defaultValues : [ {
				"fID" : orderID,
				"fCreateTime" : justep.Date.toString(new Date(), justep.Date.STANDART_FORMAT),
				"fContent" : content,
				"fUserID" : userData.val("fID"),
				"fUserName" : userData.val("fName"),
				"fPhoneNumber" : userData.val("fPhoneNumber"),
				"fAddress" : userData.val("fAddress"),
				"fSum" : cartData.sum("calcMoney") + "",
				"fPayState" : 1
			} ]
		});

		orderData.saveData({
			"onSuccess" : function() {
				justep.Util.hint("下单成功，谢谢您的订餐！");
				cartData.clear();
				userData.applyUpdates();
				self.comp("contents1").to("orderContent");
			}
		});
	};

	Model.prototype.orderDataSaveCreateParam = function(event) {
		event.param.tables.push(this.comp("userData").toJson(true));
	};

	Model.prototype.orderDataSaveCommit = function(event) {
		this.comp("userData").applyUpdates();
	};

	return Model;
});