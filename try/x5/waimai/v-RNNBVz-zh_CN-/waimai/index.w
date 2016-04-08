<!DOCTYPE HTML>
<html style="width:100%;height:100%" class="no-js">
    <head><meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="apple-mobile-web-app-status-bar-style" content="black">
        <meta name="format-detection" content="telephone=no">
        <meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
        <script src="../system/lib/base/modernizr-2.8.3.min.js"></script>
		<script id="__varReplace">
    	
    	    	window.__justep = window.__justep || {};
				window.__justep.isDebug = false;
				window.__justep.__packageMode = "1";
				window.__justep.__isPackage = true;;
				window.__justep.url = location.href;
				window.__justep.versionInfo = {};
		 
    	</script>
        <script id="__updateVersion">
        
				(function(url, mode){
					if (("@"+"mode@") === mode) mode = "3";
					if (("@"+"versionUrl@") === url) url = "system/service/common/app.j";
					if ((mode!=="1" && (mode!="2") && (mode!="3"))) return;
					var async = (mode=="1");
					var x5Version = "noApp";
					var x5AppAgents = /x5app\/([0-9.]*)/.exec(navigator.userAgent);
					if(x5AppAgents && x5AppAgents.length > 1){
					   	x5Version = x5AppAgents[1] || "";
					} 
					function createXhr(){
						try {	
							return new XMLHttpRequest();
						}catch (tryMS) {	
							var version = ["MSXML2.XMLHttp.6.0",
							               "MSXML2.XMLHttp.3.0",
							               "MSXML2.XMLHttp",
							               "Miscrosoft.XMLHTTP"];
							for(var i = 0; i < version.length; i++){
								try{
							    	return new ActiveXObject(version[i]);
								}catch(e){}
							}
						}
						throw new Error("您的系统或浏览器不支持XHR对象！");
					}
					
					function createGuid(){	
						var guid = '';	
						for (var i = 1; i <= 32; i++){		
							var n = Math.floor(Math.random()*16.0).toString(16);		
							guid += n;		
							if((i==8)||(i==12)||(i==16)||(i==20))			
								guid += '-';	
						}	
						return guid;
					}
					
					function parseUrl(href){
						href = href.split("#")[0];
						var items = href.split("?");
						href = items[0];
						var query = items[1] || "";
						items = href.split("/");
						var baseItems = [];
						var pathItems = [];
						var isPath = false;
						for (var i=0; i<items.length; i++){
							if (mode == "3"){
								if (items[i] && (items[i].indexOf("v_") === 0) 
										&& (items[i].indexOf("l_") !== -1)
										&& (items[i].indexOf("s_") !== -1)
										&& (items[i].indexOf("d_") !== -1)
										|| (items[i]=="v_")){
									isPath = true;
									continue;
								}
							}else{
								if (items[i] && (items[i].indexOf("v-")===0) && (items[i].charAt(items[i].length-1)=="-") ){
									isPath = true;
									continue;
								}
							}
							if (isPath){
								pathItems.push(items[i]);
							}else{
								baseItems.push(items[i]);	
							}
							
						}
						var base = baseItems.join("/");
						if (base.charAt(base.length-1)!=="/") base += "/";
						
						var path = pathItems.join("/");
						if (path.charAt(0) !== "/") path = "/" + path;
						return [base, path, query];
					}
					
					
					var items = parseUrl(window.location.href);
					var base = items[0];
					var path = items[1];
					var query = items[2];
					var xhr = createXhr();
					url += ((url.indexOf("?")!=-1) ? "&" : "?") +"_=" + createGuid();
					if (mode === "3"){
						url += "&url=" + path;
						if (query)
							url += "&" + query;
					}
					xhr.open('GET', base + url, async);
					
					if (async){
						xhr.onreadystatechange=function(){
							if((xhr.readyState == 4) && (xhr.status == 200) && xhr.responseText){
								var versionInfo = JSON.parse(xhr.responseText);
								window.__justep.versionInfo = versionInfo;
								window.__justep.versionInfo.baseUrl = base;
								if (window.__justep.url.indexOf(versionInfo.resourceInfo.version) == -1){
									versionInfo.resourceInfo.isNewVersion = true;
								};
							}
						}
					}
					
					try{
						xhr.send(null);
						if (!async && (xhr.status == 200) && xhr.responseText){
							var versionInfo = JSON.parse(xhr.responseText);
							window.__justep.versionInfo = versionInfo;
							window.__justep.versionInfo.baseUrl = base;
							if ((mode==="3") && window.__justep.isDebug){
								/* 模式3且是调试模式不重定向 */
							}else{
								if (versionInfo.resourceInfo && versionInfo.resourceInfo.version && (window.__justep.url.indexOf(versionInfo.resourceInfo.version) == -1)){
									if (query){
										path = path + "?" + query;
									}
									path = versionInfo.resourceInfo.indexURL || path; /* 如果返回indexPath则使用indexPath，否则使用当前的path */
									var indexUrl = versionInfo.baseUrl + versionInfo.resourceInfo.version + path;
									window.location.href = indexUrl;
								}
							}
						}
					}catch(e2){}
				}("appMetadata_in_server.json", "1"));
                 
        </script>
    <link rel="stylesheet" href="../system/components/bootstrap.min.css" include="$model/UI2/system/components/bootstrap/lib/css/bootstrap,$model/UI2/system/components/bootstrap/lib/css/bootstrap-theme"><link rel="stylesheet" href="../system/components/comp.min.css" include="$model/UI2/system/components/justep/input/css/datePickerPC,$model/UI2/system/components/justep/messageDialog/css/messageDialog,$model/UI2/system/components/justep/input/css/datePicker,$model/UI2/system/components/justep/row/css/row,$model/UI2/system/components/justep/attachment/css/attachment,$model/UI2/system/components/justep/common/css/scrollable,$model/UI2/system/components/justep/barcode/css/barcodeImage,$model/UI2/system/components/bootstrap/dropdown/css/dropdown,$model/UI2/system/components/justep/dataTables/css/dataTables,$model/UI2/system/components/justep/contents/css/contents,$model/UI2/system/components/justep/common/css/forms,$model/UI2/system/components/justep/locker/css/locker,$model/UI2/system/components/justep/menu/css/menu,$model/UI2/system/components/justep/scrollView/css/scrollView,$model/UI2/system/components/justep/loadingBar/loadingBar,$model/UI2/system/components/justep/dialog/css/dialog,$model/UI2/system/components/justep/bar/css/bar,$model/UI2/system/components/justep/popMenu/css/popMenu,$model/UI2/system/components/justep/lib/css/icons,$model/UI2/system/components/justep/toolBar/css/toolBar,$model/UI2/system/components/justep/popOver/css/popOver,$model/UI2/system/components/justep/panel/css/panel,$model/UI2/system/components/bootstrap/carousel/css/carousel,$model/UI2/system/components/justep/wing/css/wing,$model/UI2/system/components/bootstrap/scrollSpy/css/scrollSpy,$model/UI2/system/components/justep/titleBar/css/titleBar,$model/UI2/system/components/justep/numberSelect/css/numberList,$model/UI2/system/components/justep/list/css/list,$model/UI2/system/components/justep/dataTables/css/dataTables"></head>
	
    <body style="width:100%;height:100%;margin: 0;">
        <script intro="none"></script>
    	<div id="applicationHost" class="applicationHost" style="width:100%;height:100%;" __component-context__="block"><div xid="window" class="window cYnQN73" component="$model/UI2/system/components/justep/window/window" design="device:m;" data-bind="component:{name:'$model/UI2/system/components/justep/window/window'}" __cid="cYnQN73" components="$model/UI2/system/components/justep/model/model,$model/UI2/system/components/justep/loadingBar/loadingBar,$model/UI2/system/components/justep/button/button,$model/UI2/system/components/justep/scrollView/scrollView,$model/UI2/system/components/justep/input/input,$model/UI2/system/components/justep/list/list,$model/UI2/system/components/justep/panel/child,$model/UI2/system/components/justep/labelEdit/labelEdit,$model/UI2/system/components/justep/panel/panel,$model/UI2/system/components/justep/contents/content,$model/UI2/system/components/justep/row/row,$model/UI2/system/components/justep/output/output,$model/UI2/system/components/justep/titleBar/titleBar,$model/UI2/system/components/justep/contents/contents,$model/UI2/system/components/justep/data/data,$model/UI2/system/components/justep/window/window,$model/UI2/system/components/justep/data/baasData,$model/UI2/system/components/bootstrap/panel/panel,$model/UI2/system/components/justep/button/buttonGroup,">
  <style>.takeout.cYnQN73 .x-col.cYnQN73{padding: 0px} .takeout.cYnQN73 .takeout-list-row.cYnQN73{border-bottom: 1px solid rgb(229, 229, 229)} .takeout.cYnQN73 .x-titlebar.cYnQN73{background-color: rgb(53, 179, 228)} .list-group-item.cYnQN73{padding: 0px}</style>  
  <div component="$model/UI2/system/components/justep/model/model" xid="model" style="display:none" data-bind="component:{name:'$model/UI2/system/components/justep/model/model'}" data-events="onLoad:modelLoad" __cid="cYnQN73" class="cYnQN73"></div>  
  <div component="$model/UI2/system/components/justep/panel/panel" class="x-panel x-card x-full p80a1587a0ebd4d8f9620dcbd3695b858-iosstatusbar cYnQN73" xid="panel1" data-bind="component:{name:'$model/UI2/system/components/justep/panel/panel'}" __cid="cYnQN73"> 
    <div class="x-panel-top cYnQN73" xid="top1" component="$model/UI2/system/components/justep/panel/child" data-bind="component:{name:'$model/UI2/system/components/justep/panel/child'}" __cid="cYnQN73">
      <div component="$model/UI2/system/components/justep/titleBar/titleBar" class="x-titlebar cYnQN73" xid="titleBar1" data-bind="component:{name:'$model/UI2/system/components/justep/titleBar/titleBar'}" data-config="{&#34;title&#34;:&#34;外卖&#34;}" __cid="cYnQN73"> 
        <div class="x-titlebar-left cYnQN73" xid="left1" __cid="cYnQN73"></div>  
        <div class="x-titlebar-title cYnQN73" xid="title1" __cid="cYnQN73">外卖</div>  
        <div class="x-titlebar-right  cYnQN73" xid="right1" __cid="cYnQN73">
          <div class="empty cYnQN73" __cid="cYnQN73"></div>
        </div>
      </div>
    </div>  
    <div class="x-panel-content cYnQN73" xid="content1" component="$model/UI2/system/components/justep/panel/child" data-bind="component:{name:'$model/UI2/system/components/justep/panel/child'}" __cid="cYnQN73">
      <div component="$model/UI2/system/components/justep/contents/contents" class="x-contents x-full cYnQN73" xid="contents1" data-bind="component:{name:'$model/UI2/system/components/justep/contents/contents'}" data-config="{&#34;active&#34;:0}" __cid="cYnQN73"> 
        <div class="x-contents-content  x-scroll-view active cYnQN73" xid="foodContent" component="$model/UI2/system/components/justep/contents/content" data-bind="component:{name:'$model/UI2/system/components/justep/contents/content'}" __cid="cYnQN73">
          <div class="x-scroll cYnQN73" component="$model/UI2/system/components/justep/scrollView/scrollView" xid="scrollView1" data-bind="component:{name:'$model/UI2/system/components/justep/scrollView/scrollView'}" __cid="cYnQN73"> 
            <div class="x-content-center x-pull-down container cYnQN73" xid="div1" __cid="cYnQN73"> 
              <i class="x-pull-down-img glyphicon x-icon-pull-down cYnQN73" xid="i5" __cid="cYnQN73"></i>  
              <span class="x-pull-down-label cYnQN73" xid="span5" __cid="cYnQN73">下拉刷新...</span>
            </div>  
            <div class="x-scroll-content cYnQN73" xid="div2" __cid="cYnQN73">
              <div component="$model/UI2/system/components/justep/list/list" class="x-list x-cards cYnQN73" xid="list2" data-bind="component:{name:'$model/UI2/system/components/justep/list/list'}" data-config="{&#34;data&#34;:&#34;foodData&#34;}" __cid="cYnQN73"> 
                <ul class="x-list-template x-min-height list-group hide cYnQN73" xid="listTemplateUl2" componentname="$UI/system/components/justep/list/list#listTemplateUl" id="undefined_listTemplateUl2" __cid="cYnQN73" data-bind="foreach:{data:$model.foreach_list2($element),afterRender:$model.foreach_afterRender_list2.bind($model,$element)}"> 
                  <li xid="li2" class="x-min-height list-group-item cYnQN73" componentname="li(html)" id="undefined_li2" __cid="cYnQN73">
                    <div class="media-list cYnQN73" xid="media2" __cid="cYnQN73"> 
                      <div class="media-left cYnQN73" xid="mediaLeft2" __cid="cYnQN73"> 
                        <a href="#" xid="a2" __cid="cYnQN73" class="cYnQN73"> 
                          <img class="media-object cYnQN73" src="" alt="" xid="image2" style="width:120px;height:110px;" __cid="cYnQN73" data-bind="attr:{src:&#34;./img/&#34; + val(&#34;fImage&#34;)}">
                        </a> 
                      </div>  
                      <div class="media-body cYnQN73" xid="mediaBody2" __cid="cYnQN73"> 
                        <a component="$model/UI2/system/components/justep/button/button" class="btn btn-link pull-right cYnQN73" xid="buyFoodBtn" data-bind="component:{name:'$model/UI2/system/components/justep/button/button'}" data-events="onClick:buyFoodBtnClick" data-config="{&#34;label&#34;:&#34;来一份&#34;}" __cid="cYnQN73"> 
                          <i xid="i6" __cid="cYnQN73" class="cYnQN73"></i>  
                          <span xid="span7" __cid="cYnQN73" class="cYnQN73">来一份</span>
                        </a>
                        <div component="$model/UI2/system/components/justep/output/output" class="x-output list-group-item-heading cYnQN73" xid="output1" data-bind="component:{ref:ref(&#34;fName&#34;),name:'$model/UI2/system/components/justep/output/output'}" __cid="cYnQN73"></div>  
                        <div component="$model/UI2/system/components/justep/output/output" class="x-output cYnQN73" xid="output2" data-bind="component:{ref:ref(&#34;fDescription&#34;),name:'$model/UI2/system/components/justep/output/output'}" __cid="cYnQN73"></div>  
                        <div component="$model/UI2/system/components/justep/output/output" class="x-output list-group-item-heading cYnQN73" xid="output3" data-bind="component:{name:'$model/UI2/system/components/justep/output/output'},text:&#34;¥ &#34;+val(&#34;fPrice&#34;)+&#34;  元&#34;" __cid="cYnQN73"></div> 
                      </div> 
                    </div>
                  </li>
                </ul> 
              </div>
            </div>  
            <div class="x-content-center x-pull-up cYnQN73" xid="div3" __cid="cYnQN73"> 
              <span class="x-pull-up-label cYnQN73" xid="span6" __cid="cYnQN73">加载更多...</span>
            </div> 
          </div>
        </div>  
        <div class="x-contents-content cYnQN73" xid="cartContent" component="$model/UI2/system/components/justep/contents/content" data-bind="component:{name:'$model/UI2/system/components/justep/contents/content'}" data-events="onActive:cartContentActive" __cid="cYnQN73">
          <div class="panel panel-default x-card cYnQN73" component="$model/UI2/system/components/bootstrap/panel/panel" xid="panel3" data-bind="component:{name:'$model/UI2/system/components/bootstrap/panel/panel'}" __cid="cYnQN73"> 
            <div class="panel-heading cYnQN73" xid="heading2" __cid="cYnQN73"> 
              <h4 class="panel-title cYnQN73" xid="h44" __cid="cYnQN73">我的购物车</h4>
            </div>  
            <div class="panel-body cYnQN73" xid="body2" __cid="cYnQN73">
              <label xid="label1" style="color:#D0D0D0;" __cid="cYnQN73" class="cYnQN73" data-bind="visible:$model.cartData.getCount() == 0">空</label>
              <div component="$model/UI2/system/components/justep/list/list" class="x-list x-cards cYnQN73" xid="list3" data-bind="component:{name:'$model/UI2/system/components/justep/list/list'}" data-config="{&#34;data&#34;:&#34;cartData&#34;}" __cid="cYnQN73"> 
                <ul class="x-list-template x-min-height list-group hide cYnQN73" xid="listTemplateUl3" componentname="$UI/system/components/justep/list/list#listTemplateUl" id="undefined_listTemplateUl3" __cid="cYnQN73" data-bind="foreach:{data:$model.foreach_list3($element),afterRender:$model.foreach_afterRender_list3.bind($model,$element)}"> 
                  <li xid="li3" class="x-min-height list-group-item cYnQN73" componentname="li(html)" id="undefined_li3" __cid="cYnQN73">
                    <div component="$model/UI2/system/components/justep/row/row" class="x-row cYnQN73" xid="row1" data-bind="component:{name:'$model/UI2/system/components/justep/row/row'}" __cid="cYnQN73"> 
                      <div class="x-col x-col-bottom cYnQN73" xid="col1" __cid="cYnQN73">
                        <div component="$model/UI2/system/components/justep/output/output" class="x-output cYnQN73" xid="output7" data-bind="component:{ref:ref(&#34;fName&#34;),name:'$model/UI2/system/components/justep/output/output'}" __cid="cYnQN73"></div>
                      </div>  
                      <div class="x-col x-col-fixed x-col-bottom cYnQN73" xid="col2" style="width:60px;" __cid="cYnQN73">
                        <div component="$model/UI2/system/components/justep/output/output" class="x-output cYnQN73" xid="output6" style="text-align:right;" data-bind="component:{name:'$model/UI2/system/components/justep/output/output'},text:&#34;¥  &#34; +  val(&#34;fPrice&#34;) + &#34;    &#34;" __cid="cYnQN73"></div>
                      </div>  
                      <div class="x-col x-col-fixed x-col-bottom cYnQN73" xid="col3" style="width:auto;" __cid="cYnQN73">
                        <a component="$model/UI2/system/components/justep/button/button" class="btn btn-default btn-xs btn-only-icon cYnQN73" xid="subCartCountBtn" data-bind="component:{name:'$model/UI2/system/components/justep/button/button'}" data-events="onClick:subCartCountBtnClick" data-config="{&#34;icon&#34;:&#34;icon-android-remove&#34;,&#34;label&#34;:&#34;button&#34;}" __cid="cYnQN73"> 
                          <i xid="i8" class="icon-android-remove cYnQN73" __cid="cYnQN73"></i>  
                          <span xid="span9" __cid="cYnQN73" class="cYnQN73"></span>
                        </a>
                      </div>  
                      <div class="x-col x-col-fixed x-col-bottom cYnQN73" xid="col4" style="width:30px;" __cid="cYnQN73">
                        <div component="$model/UI2/system/components/justep/output/output" class="x-output cYnQN73" xid="output5" style="text-align:center;" data-bind="component:{ref:ref(&#34;fCount&#34;),name:'$model/UI2/system/components/justep/output/output'}" __cid="cYnQN73"></div>
                      </div>  
                      <div class="x-col x-col-fixed x-col-bottom cYnQN73" xid="col5" style="width:auto;" __cid="cYnQN73">
                        <a component="$model/UI2/system/components/justep/button/button" class="btn btn-default btn-xs btn-only-icon cYnQN73" xid="addCartCountBtn" data-bind="component:{name:'$model/UI2/system/components/justep/button/button'}" data-events="onClick:addCartCountBtnClick" data-config="{&#34;icon&#34;:&#34;icon-android-add&#34;,&#34;label&#34;:&#34;button&#34;}" __cid="cYnQN73"> 
                          <i xid="i7" class="icon-android-add cYnQN73" __cid="cYnQN73"></i>  
                          <span xid="span8" __cid="cYnQN73" class="cYnQN73"></span>
                        </a>
                      </div>
                    </div> 
                  </li>
                </ul> 
              </div>
            </div>  
            <div class="panel-footer cYnQN73" xid="footer2" __cid="cYnQN73">
              <div component="$model/UI2/system/components/justep/output/output" class="x-output cYnQN73" xid="output4" style="text-align:right;font-weight:bold;" data-bind="component:{name:'$model/UI2/system/components/justep/output/output'},text:&#34;合计：  &#34; +  $model.cartData.sum(&#34;calcMoney&#34;) + &#34;  元&#34;" __cid="cYnQN73"></div>
            </div>
          </div>  
          <div class="panel panel-default x-card cYnQN73" component="$model/UI2/system/components/bootstrap/panel/panel" xid="panel4" data-bind="component:{name:'$model/UI2/system/components/bootstrap/panel/panel'}" __cid="cYnQN73"> 
            <div class="panel-heading cYnQN73" xid="heading3" __cid="cYnQN73"> 
              <h4 class="panel-title cYnQN73" xid="h42" __cid="cYnQN73">我的收货地址</h4>
            </div>  
            <div class="panel-body cYnQN73" xid="body3" __cid="cYnQN73"> 
              <div component="$model/UI2/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30 cYnQN73" xid="labelEdit4" data-bind="component:{name:'$model/UI2/system/components/justep/labelEdit/labelEdit'}" __cid="cYnQN73"> 
                <label class="x-label cYnQN73" xid="label5" __cid="cYnQN73" data-bind="text:$model.userData.label(&#34;fName&#34;)"></label>  
                <input component="$model/UI2/system/components/justep/input/input" class="form-control x-edit cYnQN73" xid="input7" data-bind="component:{ref:$model.userData.ref(&#34;fName&#34;),name:'$model/UI2/system/components/justep/input/input'}" __cid="cYnQN73">
              </div>  
              <div component="$model/UI2/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30 cYnQN73" xid="labelEdit6" data-bind="component:{name:'$model/UI2/system/components/justep/labelEdit/labelEdit'}" __cid="cYnQN73"> 
                <label class="x-label cYnQN73" xid="label6" __cid="cYnQN73" data-bind="text:$model.userData.label(&#34;fAddress&#34;)"></label>  
                <input component="$model/UI2/system/components/justep/input/input" class="form-control x-edit cYnQN73" xid="input6" data-bind="component:{ref:$model.userData.ref(&#34;fAddress&#34;),name:'$model/UI2/system/components/justep/input/input'}" __cid="cYnQN73">
              </div>  
              <div component="$model/UI2/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30 cYnQN73" xid="labelEdit5" data-bind="component:{name:'$model/UI2/system/components/justep/labelEdit/labelEdit'}" __cid="cYnQN73"> 
                <label class="x-label cYnQN73" xid="label7" __cid="cYnQN73" data-bind="text:$model.userData.label(&#34;fPhoneNumber&#34;)"></label>  
                <input component="$model/UI2/system/components/justep/input/input" class="form-control x-edit cYnQN73" xid="input5" data-bind="component:{ref:$model.userData.ref(&#34;fPhoneNumber&#34;),name:'$model/UI2/system/components/justep/input/input'}" __cid="cYnQN73">
              </div> 
            </div>  
            <div class="panel-footer cYnQN73" xid="footer3" style="text-align:right;" __cid="cYnQN73"> 
              <a component="$model/UI2/system/components/justep/button/button" class="btn x-yellow cYnQN73" xid="createOrderBtn" data-bind="component:{name:'$model/UI2/system/components/justep/button/button'}" data-events="onClick:createOrderBtnClick" data-config="{&#34;label&#34;:&#34;下单&#34;}" __cid="cYnQN73"> 
                <i xid="i10" __cid="cYnQN73" class="cYnQN73"></i>  
                <span xid="span11" __cid="cYnQN73" class="cYnQN73">下单</span>
              </a> 
            </div> 
          </div>
        </div>  
        <div class="x-contents-content  x-scroll-view cYnQN73" xid="orderContent" component="$model/UI2/system/components/justep/contents/content" data-bind="component:{name:'$model/UI2/system/components/justep/contents/content'}" data-events="onActive:orderContentActive" __cid="cYnQN73">
          <div class="x-scroll cYnQN73" component="$model/UI2/system/components/justep/scrollView/scrollView" xid="scrollView2" data-bind="component:{name:'$model/UI2/system/components/justep/scrollView/scrollView'}" __cid="cYnQN73"> 
            <div class="x-content-center x-pull-down container cYnQN73" xid="div4" __cid="cYnQN73"> 
              <i class="x-pull-down-img glyphicon x-icon-pull-down cYnQN73" xid="i11" __cid="cYnQN73"></i>  
              <span class="x-pull-down-label cYnQN73" xid="span12" __cid="cYnQN73">下拉刷新...</span>
            </div>  
            <div class="x-scroll-content cYnQN73" xid="div5" __cid="cYnQN73">
              <div component="$model/UI2/system/components/justep/list/list" class="x-list x-cards cYnQN73" xid="orderList" style="margin: 5px;" data-bind="component:{name:'$model/UI2/system/components/justep/list/list'}" data-config="{&#34;autoLoad&#34;:false,&#34;data&#34;:&#34;orderData&#34;}" __cid="cYnQN73"> 
                <ul class="x-list-template x-min-height list-group hide cYnQN73" xid="listTemplateUl1" componentname="$UI/system/components/justep/list/list#listTemplateUl" id="undefined_listTemplateUl1" __cid="cYnQN73" data-bind="foreach:{data:$model.foreach_orderList($element),afterRender:$model.foreach_afterRender_orderList.bind($model,$element)}"> 
                  <li xid="li1" class="x-min-height list-group-item cYnQN73" componentname="li(html)" id="undefined_li1" style="padding:5px 10px 5px 10px;" __cid="cYnQN73"> 
                    <div component="$model/UI2/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30 cYnQN73" xid="labelEdit7" data-bind="component:{name:'$model/UI2/system/components/justep/labelEdit/labelEdit'}" __cid="cYnQN73"> 
                      <label class="x-label cYnQN73" xid="label8" __cid="cYnQN73" data-bind="text:label(&#34;fCreateTime&#34;)"></label>  
                      <div component="$model/UI2/system/components/justep/output/output" class="x-output x-edit cYnQN73" xid="output8" data-bind="component:{ref:ref(&#34;fCreateTime&#34;),name:'$model/UI2/system/components/justep/output/output'}" __cid="cYnQN73"></div>
                    </div>  
                    <div component="$model/UI2/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30 cYnQN73" xid="labelEdit8" data-bind="component:{name:'$model/UI2/system/components/justep/labelEdit/labelEdit'}" __cid="cYnQN73"> 
                      <label class="x-label cYnQN73" xid="label9" __cid="cYnQN73" data-bind="text:label(&#34;fContent&#34;)"></label>  
                      <div component="$model/UI2/system/components/justep/output/output" class="x-output x-edit cYnQN73" xid="output9" data-bind="component:{ref:ref(&#34;fContent&#34;),name:'$model/UI2/system/components/justep/output/output'}" __cid="cYnQN73"></div>
                    </div>  
                    <div component="$model/UI2/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30 cYnQN73" xid="labelEdit9" data-bind="component:{name:'$model/UI2/system/components/justep/labelEdit/labelEdit'}" __cid="cYnQN73"> 
                      <label class="x-label cYnQN73" xid="label10" __cid="cYnQN73" data-bind="text:label(&#34;fAddress&#34;)"></label>  
                      <div component="$model/UI2/system/components/justep/output/output" class="x-output x-edit cYnQN73" xid="output10" data-bind="component:{ref:ref(&#34;fAddress&#34;),name:'$model/UI2/system/components/justep/output/output'}" __cid="cYnQN73"></div>
                    </div>
                    <div component="$model/UI2/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30 cYnQN73" xid="labelEdit10" data-bind="component:{name:'$model/UI2/system/components/justep/labelEdit/labelEdit'}" __cid="cYnQN73"> 
                      <label class="x-label cYnQN73" xid="label11" __cid="cYnQN73" data-bind="text:label(&#34;fSum&#34;)"></label>  
                      <div component="$model/UI2/system/components/justep/output/output" class="x-output x-edit cYnQN73" xid="output11" data-bind="component:{ref:ref(&#34;fSum&#34;),name:'$model/UI2/system/components/justep/output/output'}" __cid="cYnQN73"></div>
                    </div>
                  </li>
                </ul> 
              </div>
            </div>  
            <div class="x-content-center x-pull-up cYnQN73" xid="div6" __cid="cYnQN73"> 
              <span class="x-pull-up-label cYnQN73" xid="span13" __cid="cYnQN73">加载更多...</span>
            </div> 
          </div>
        </div>  
        <div class="x-contents-content cYnQN73" xid="ownContent" component="$model/UI2/system/components/justep/contents/content" data-bind="component:{name:'$model/UI2/system/components/justep/contents/content'}" data-events="onActive:ownContentActive" __cid="cYnQN73">
          <div class="panel panel-default x-card cYnQN73" component="$model/UI2/system/components/bootstrap/panel/panel" xid="panel2" data-bind="component:{name:'$model/UI2/system/components/bootstrap/panel/panel'}" __cid="cYnQN73"> 
            <div class="panel-heading cYnQN73" xid="heading1" __cid="cYnQN73"> 
              <h4 class="panel-title cYnQN73" xid="h41" __cid="cYnQN73">我的收货地址</h4>
            </div>  
            <div class="panel-body cYnQN73" xid="body1" __cid="cYnQN73"> 
              <div component="$model/UI2/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30 cYnQN73" xid="labelEdit1" data-bind="component:{name:'$model/UI2/system/components/justep/labelEdit/labelEdit'}" __cid="cYnQN73"> 
                <label class="x-label cYnQN73" xid="label2" __cid="cYnQN73" data-bind="text:$model.userData.label(&#34;fName&#34;)"></label>  
                <input component="$model/UI2/system/components/justep/input/input" class="form-control x-edit cYnQN73" xid="input1" data-bind="component:{ref:$model.userData.ref(&#34;fName&#34;),name:'$model/UI2/system/components/justep/input/input'}" __cid="cYnQN73">
              </div>  
              <div component="$model/UI2/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30 cYnQN73" xid="labelEdit2" data-bind="component:{name:'$model/UI2/system/components/justep/labelEdit/labelEdit'}" __cid="cYnQN73"> 
                <label class="x-label cYnQN73" xid="label3" __cid="cYnQN73" data-bind="text:$model.userData.label(&#34;fAddress&#34;)"></label>  
                <input component="$model/UI2/system/components/justep/input/input" class="form-control x-edit cYnQN73" xid="input2" data-bind="component:{ref:$model.userData.ref(&#34;fAddress&#34;),name:'$model/UI2/system/components/justep/input/input'}" __cid="cYnQN73">
              </div>  
              <div component="$model/UI2/system/components/justep/labelEdit/labelEdit" class="x-label-edit x-label30 cYnQN73" xid="labelEdit3" data-bind="component:{name:'$model/UI2/system/components/justep/labelEdit/labelEdit'}" __cid="cYnQN73"> 
                <label class="x-label cYnQN73" xid="label4" __cid="cYnQN73" data-bind="text:$model.userData.label(&#34;fPhoneNumber&#34;)"></label>  
                <input component="$model/UI2/system/components/justep/input/input" class="form-control x-edit cYnQN73" xid="input3" data-bind="component:{ref:$model.userData.ref(&#34;fPhoneNumber&#34;),name:'$model/UI2/system/components/justep/input/input'}" __cid="cYnQN73">
              </div>
            </div>  
            <div class="panel-footer cYnQN73" xid="footer1" style="text-align:right;" __cid="cYnQN73">
              <a component="$model/UI2/system/components/justep/button/button" class="btn btn-default cYnQN73" xid="saveUserBtn" data-bind="component:{name:'$model/UI2/system/components/justep/button/button'}" data-events="onClick:saveUserBtnClick" data-config="{&#34;label&#34;:&#34;保存&#34;}" __cid="cYnQN73"> 
                <i xid="i9" __cid="cYnQN73" class="cYnQN73"></i>  
                <span xid="span10" __cid="cYnQN73" class="cYnQN73">保存</span>
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>  
    <div class="x-panel-bottom cYnQN73" xid="bottom1" component="$model/UI2/system/components/justep/panel/child" data-bind="component:{name:'$model/UI2/system/components/justep/panel/child'}" __cid="cYnQN73">
      <div component="$model/UI2/system/components/justep/button/buttonGroup" class="btn-group x-card btn-group-justified cYnQN73" xid="buttonGroup1" data-bind="component:{name:'$model/UI2/system/components/justep/button/buttonGroup'}" data-config="{&#34;selected&#34;:&#34;foodBtn&#34;,&#34;tabbed&#34;:true}" __cid="cYnQN73">
        <a component="$model/UI2/system/components/justep/button/button" class="btn btn-default btn-icon-top cYnQN73" xid="foodBtn" data-bind="component:{name:'$model/UI2/system/components/justep/button/button'}" data-config="{&#34;icon&#34;:&#34;icon-beer&#34;,&#34;label&#34;:&#34;菜单&#34;,&#34;target&#34;:&#34;foodContent&#34;}" __cid="cYnQN73"> 
          <i xid="i1" class="icon-beer cYnQN73" __cid="cYnQN73"></i>  
          <span xid="span1" __cid="cYnQN73" class="cYnQN73">菜单</span>
        </a>  
        <a component="$model/UI2/system/components/justep/button/button" class="btn btn-default btn-icon-top cYnQN73" xid="cartBtn" data-bind="component:{name:'$model/UI2/system/components/justep/button/button'}" data-config="{&#34;icon&#34;:&#34;icon-ios7-cart&#34;,&#34;label&#34;:&#34;购物车&#34;,&#34;target&#34;:&#34;cartContent&#34;}" __cid="cYnQN73"> 
          <i xid="i2" class="icon-ios7-cart cYnQN73" __cid="cYnQN73"></i>  
          <span xid="span2" __cid="cYnQN73" class="cYnQN73" data-bind="text:$model.cartData.sum('fCount') &gt; 0  ? '购物车(' + $model.cartData.sum('fCount') + ')' : '购物车'">购物车</span>
        </a>  
        <a component="$model/UI2/system/components/justep/button/button" class="btn btn-default btn-icon-top cYnQN73" xid="orderBtn" data-bind="component:{name:'$model/UI2/system/components/justep/button/button'}" data-config="{&#34;icon&#34;:&#34;icon-document-text&#34;,&#34;label&#34;:&#34;订单&#34;,&#34;target&#34;:&#34;orderContent&#34;}" __cid="cYnQN73"> 
          <i xid="i3" class="icon-document-text cYnQN73" __cid="cYnQN73"></i>  
          <span xid="span3" __cid="cYnQN73" class="cYnQN73">订单</span>
        </a>  
        <a component="$model/UI2/system/components/justep/button/button" class="btn btn-default btn-icon-top cYnQN73" xid="ownBtn" data-bind="component:{name:'$model/UI2/system/components/justep/button/button'}" data-config="{&#34;icon&#34;:&#34;icon-android-contact&#34;,&#34;label&#34;:&#34;我的&#34;,&#34;target&#34;:&#34;ownContent&#34;}" __cid="cYnQN73"> 
          <i xid="i4" class="icon-android-contact cYnQN73" __cid="cYnQN73"></i>  
          <span xid="span4" __cid="cYnQN73" class="cYnQN73">我的</span>
        </a>
      </div>
    </div>
    <style __cid="cYnQN73" class="cYnQN73">.x-panel.p80a1587a0ebd4d8f9620dcbd3695b858-iosstatusbar >.x-panel-top {height: 48px;}.x-panel.p80a1587a0ebd4d8f9620dcbd3695b858-iosstatusbar >.x-panel-content { top: 48px;bottom: nullpx;}.x-panel.p80a1587a0ebd4d8f9620dcbd3695b858-iosstatusbar >.x-panel-bottom {height: nullpx;}.iosstatusbar .x-panel.p80a1587a0ebd4d8f9620dcbd3695b858-iosstatusbar >.x-panel-top,.iosstatusbar .x-panel .x-panel-content .x-has-iosstatusbar.x-panel.p80a1587a0ebd4d8f9620dcbd3695b858-iosstatusbar >.x-panel-top {height: 68px;}.iosstatusbar .x-panel.p80a1587a0ebd4d8f9620dcbd3695b858-iosstatusbar >.x-panel-content,.iosstatusbar .x-panel .x-panel-content .x-has-iosstatusbar.x-panel.p80a1587a0ebd4d8f9620dcbd3695b858-iosstatusbar >.x-panel-content { top: 68px;}.iosstatusbar .x-panel .x-panel-content .x-panel.p80a1587a0ebd4d8f9620dcbd3695b858-iosstatusbar >.x-panel-top {height: 48px;}.iosstatusbar .x-panel .x-panel-content .x-panel.p80a1587a0ebd4d8f9620dcbd3695b858-iosstatusbar >.x-panel-content {top: 48px;}</style>
  </div>
</div></div>
        
        <div id="downloadGCF" style="display:none;padding:50px;">
        	<span>您使用的浏览器需要下载插件才能使用, </span>
        	<a id="downloadGCFLink" href="#">下载地址</a>
        	<p>(安装后请重新打开浏览器)</p>
        </div>
    	<script>
    	
    	            //判断浏览器, 判断GCF
    	 			var browser = {
    			        isIe: function () {
    			            return navigator.appVersion.indexOf("MSIE") != -1;
    			        },
    			        navigator: navigator.appVersion,
    			        getVersion: function() {
    			            var version = 999; // we assume a sane browser
    			            if (navigator.appVersion.indexOf("MSIE") != -1)
    			                // bah, IE again, lets downgrade version number
    			                version = parseFloat(navigator.appVersion.split("MSIE")[1]);
    			            return version;
    			        }
    			    };
    				function isGCFInstalled(){
    			      try{
    			        var i = new ActiveXObject('ChromeTab.ChromeFrame');
    			        if (i) {
    			          return true;
    			        }
    			      }catch(e){}
    			      return false;
    				}
    	            //判断浏览器, 判断GCF
    	            var __continueRun = true;
    				if (browser.isIe() && (browser.getVersion() < 10) && !isGCFInstalled()) {
    					document.getElementById("applicationHost").style.display = 'none';
    					document.getElementById("downloadGCF").style.display = 'block';
    					var downloadLink = "/" + location.pathname.match(/[^\/]+/)[0] + "/v8.msi";
    					document.getElementById("downloadGCFLink").href = downloadLink; 
    					__continueRun = false;
    	            }
		 	
    	</script>
        
        <script id="_requireJS" src="../system/lib/require/require.2.1.10.js"> </script>
        <script src="../system/core.min.js"></script><script src="../system/common.min.js"></script><script src="../system/components/comp.min.js"></script><script src="../system/components/comp2.min.js"></script><script id="_mainScript">
        
			if (__continueRun) {
                window.__justep.cssReady = function(fn){
                	var promises = [];
                	for (var p in window.__justep.__ResourceEngine.__loadingCss){
                		if(window.__justep.__ResourceEngine.__loadingCss.hasOwnProperty(p))
                			promises.push(window.__justep.__ResourceEngine.__loadingCss[p].promise());
                	}
                	$.when.apply($, promises).done(fn);
                };
                
            	window.__justep.__ResourceEngine = {
            		readyRegExp : navigator.platform === 'PLAYSTATION 3' ? /^complete$/ : /^(complete|loaded)$/,
            		url: window.location.href,	
            		/*contextPath: 不包括语言 */
            		contextPath: "",
            		serverPath: "",
            		__loadedJS: [],
            		__loadingCss: {},
            		onLoadCss: function(url, node){
            			if (!this.__loadingCss[url]){
            				this.__loadingCss[url] = $.Deferred();	
                			if (node.attachEvent &&
                                    !(node.attachEvent.toString && node.attachEvent.toString().indexOf('[native code') < 0) &&
                                    !(typeof opera !== 'undefined' && opera.toString() === '[object Opera]')) {
                                node.attachEvent('onreadystatechange', this.onLinkLoad.bind(this));
                            } else {
                                node.addEventListener('load', this.onLinkLoad.bind(this), false);
                                node.addEventListener('error', this.onLinkError.bind(this), false);
                            }
            			}
            		},
            		
            		onLinkLoad: function(evt){
            	        var target = (evt.currentTarget || evt.srcElement);
            	        if (evt.type === 'load' ||
                                (this.readyRegExp.test(target.readyState))) {
            	        	var url = target.getAttribute("href");
            	        	if (url && window.__justep.__ResourceEngine.__loadingCss[url]){
            	        		window.__justep.__ResourceEngine.__loadingCss[url].resolve(url);
            	        	}
                        }
            		},
            		
            		onLinkError: function(evt){
            	        var target = (evt.currentTarget || evt.srcElement);
        	        	var url = target.getAttribute("href");
        	        	if (url && window.__justep.__ResourceEngine.__loadingCss[url]){
        	        		window.__justep.__ResourceEngine.__loadingCss[url].resolve(url);
        	        	}
            		},
            		
            		initContextPath: function(){
            			var baseURL = document.getElementById("_requireJS").src;
            			var before = location.protocol + "//" + location.host;
            			var after = "/system/lib/require/require.2.1.10.js";
            			var i = baseURL.indexOf(after);
            			if (i !== -1){
    	        			var middle = baseURL.substring(before.length, i);
    						var items = middle.split("/");
    						
    						
    						if ((items[items.length-1].indexOf("v_") === 0) 
    								&& (items[items.length-1].indexOf("l_") !== -1)
    								&& (items[items.length-1].indexOf("s_") !== -1)
    								&& (items[items.length-1].indexOf("d_") !== -1)
    								|| (items[items.length-1]=="v_")){
    							items.splice(items.length-1, 1);
    						}
    						
    						
    						if (items.length !== 1){
    							window.__justep.__ResourceEngine.contextPath = items.join("/");
    						}else{
    							window.__justep.__ResourceEngine.contextPath = before;
    						}
    						var index = window.__justep.__ResourceEngine.contextPath.lastIndexOf("/");
    						if (index != -1){
    							window.__justep.__ResourceEngine.serverPath = window.__justep.__ResourceEngine.contextPath.substr(0, index);
    						}else{
    							window.__justep.__ResourceEngine.serverPath = window.__justep.__ResourceEngine.contextPath;
    						}
            			}else{
            				throw new Error(baseURL + " hasn't  " + after);
            			}
            		},
            	
            		loadJs: function(urls){
            			if (urls && urls.length>0){
            				var loadeds = this._getResources("script", "src").concat(this.__loadedJS);
    	       				for (var i=0; i<urls.length; i++){
    	       					var url = window.__justep.__ResourceEngine.contextPath + urls[i];
    	        				if(!this._isLoaded(url, loadeds)){
    	        					this.__loadedJS[this.__loadedJS.length] = url;
    	        					/*
    	        					var script = document.createElement("script");
    	        					script.src = url;
    	        					document.head.appendChild(script);
    	        					*/
    	        					//$("head").append("<script  src='" + url + "'/>");
    	        					$.ajax({
    	        						url: url,
    	        						dataType: "script",
    	        						cache: true,
    	        						async: false,
    	        						success: function(){}
    	        						});
    	        				} 
    	       				}
            			}
            		},
            		
            		loadCss: function(styles){
           				var loadeds = this._getResources("link", "href");
            			if (styles && styles.length>0){
            				for (var i=0; i<styles.length; i++){
    	       					var url = window.__justep.__ResourceEngine.contextPath + styles[i].url
    	        				if(!this._isLoaded(url, loadeds)){
    	        					var include = styles[i].include || "";
    	        					var link = $("<link type='text/css' rel='stylesheet' href='" + url + "' include='" + include + "'/>");
    	        					this.onLoadCss(url, link[0]);
    	        					$("head").append(link);
    	        				} 
            				}
            			}
            			
            		},
            		
            		
            		_isLoaded: function(url, loadeds){
            			if (url){
            				var newUrl = "";
            				var items = url.split("/");
            				var isVls = false;
            				for (var i=0; i<items.length; i++){
            					if (isVls){
                					newUrl += "/" + items[i];
            					}else{
                					if (items[i] && (items[i].indexOf("v_")===0)
            								&& (items[i].indexOf("l_")!==-1)
            								&& (items[i].indexOf("s_")!==-1)
            								&& (items[i].indexOf("d_")!==-1)
            								|| (items[i]=="v_")){
                						isVls = true;
                					}
            					}
            				}
            				if (!newUrl)
            					newUrl = url;
            				
            				for (var i=0; i<loadeds.length; i++){
    							if (loadeds[i] && (loadeds[i].indexOf(newUrl)!==-1)){
    								return true;
    							}
    						}
            			}
    					return false;
            		},
            		
            		_getResources: function(tag, attr){
    					var result = [];
    					var scripts = $(tag);
    					for (var i=0; i<scripts.length; i++){
    						var v = scripts[i][attr];
    						if (v){
    							result[result.length] = v;
    						}
    					}
    					return result;
            		}
            	};
            	
            	window.__justep.__ResourceEngine.initContextPath();
    			requirejs.config({
    				baseUrl: window.__justep.__ResourceEngine.contextPath + '/waimai',
    			    paths: {
    			    	'$model/UI2': window.__justep.__ResourceEngine.contextPath + '',
    			    	'$model': window.__justep.__ResourceEngine.serverPath,
    			        'text': window.__justep.__ResourceEngine.contextPath + '/system/lib/require/text.2.0.10',
    			        'bind': window.__justep.__ResourceEngine.contextPath + '/system/lib/bind/bind',
    			        'jquery': window.__justep.__ResourceEngine.contextPath + '/system/lib/jquery/jquery-1.11.1.min'
    			    },
    			    map: {
    				        '*': {
    				            res: '$model/UI2/system/lib/require/res',
    				            cordova: '$model/UI2/system/lib/require/cordova',
    				            w: '$model/UI2/system/lib/require/w',
    				            css: '$model/UI2/system/lib/require/css'
    				        }
    				},
    				waitSeconds: 300
    			});
    			
    			requirejs(['require', 'jquery', '$model/UI2/system/lib/base/composition', '$model/UI2/system/lib/base/url', '$model/UI2/system/lib/route/hashbangParser', '$model/UI2/system/components/justep/versionChecker/versionChecker', '$model/UI2/system/components/justep/loadingBar/loadingBar', '$model/UI2/system/lib/jquery/domEvent',  '$model/UI2/system/lib/cordova/cordova'],  function (require, $, composition, URL, HashbangParser,versionChecker) { 
    				document.addEventListener('deviceready', function() {
    	                if (navigator && navigator.splashscreen && navigator.splashscreen.hide) {
    	                	/*延迟隐藏，视觉效果更理想*/
    	                	setTimeout(function() {navigator.splashscreen.hide();}, 800);
    	                }
						setTimeout(function(){
							versionChecker.check();			
						},1000);
    	            }, false);
    				var context = {};
    				context.model = '$model/UI2/waimai/index.w' + (document.location.search || "");
    				context.view = $('#applicationHost').children()[0];
    				var element = document.getElementById('applicationHost');

					    				
    				
    				var ownerid = new URL(window.__justep.__ResourceEngine.url).getParam("$ownerid");
    				var pwindow = opener;
    				if (!pwindow && window.parent && window.parent.window){
    					pwindow = window.parent.window;
    				}
    				if(ownerid && pwindow 
    						&& pwindow.__justep && pwindow.__justep.windowOpeners
    						&& pwindow.__justep.windowOpeners[ownerid]
    						&& $.isFunction(pwindow.__justep.windowOpeners[ownerid].sendToWindow)){
    					window.__justep.setParams = function(params){
    						/* 给windowOpener提供再次传参数的接口  */
    						params = params || {};
    						composition.setParams(document.getElementById('applicationHost'), params);
    					};
    					var winOpener = pwindow.__justep.windowOpeners[ownerid];
    					$(window).unload(function(event){
    						if(winOpener && winOpener.dispatchCloseEvent) winOpener.dispatchCloseEvent();
    					});
    					var params = winOpener.sendToWindow();
						context.owner = winOpener;
						context.params = params || {};
	        			composition.compose(element, context);
    				}else{
        				var params =  {};
    					var state = new HashbangParser(window.location.hash).parse().__state;
    					if (state){
    						params = state.get("");
    						try{
    							params = JSON.parse(params);
    							if (params.hasOwnProperty("__singleValue__")){
    								params = params.__singleValue__;
    							}
    						}catch(e1){}
    					}
    					context.noUpdateState = true;
        				context.params = params;
        				composition.compose(element, context);
    				}
    			});    
            }
		 	
        </script>
    </body>
</html>