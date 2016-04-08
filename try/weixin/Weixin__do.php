
	
<?php
// namespace weixin;	

require_once(APP_ROOT.'/Service.php');
require_once(APP_ROOT.'/WxMpJsApi.php');
require_once(APP_ROOT.'/WxPayNotify.php');
require_once(APP_ROOT.'/UserInfo.php');

	
class Weixin__do {
    public static $ActionUtil;

    private static $DbConfigBytes = array(123,34,97,99,99,111,117,110,116,34,58,34,106,97,118,97,58,99,111,109,112,47,101,110,118,47,97,99,99,111,117,110,116,34,44,34,116,97,107,101,111,117,116,34,58,34,106,97,118,97,58,99,111,109,112,47,101,110,118,47,116,97,107,101,111,117,116,34,44,34,116,97,111,98,97,111,34,58,34,106,97,118,97,58,99,111,109,112,47,101,110,118,47,116,97,111,98,97,111,34,125);
    
    private static function InitActionParams($privateParams, $publicParams, &$params)
    {
        $privateArray = $privateParams;
        foreach($privateArray as $k=>$v)
        {
            if (!array_key_exists($k, $params))
            {
                $params[$k] = $v;
            }
        }
        
        $publicArray = $publicParams;
        foreach($publicArray as $k=>$v)
        {
            if (!array_key_exists($k, $params))
            {
                $params[$k] = $v;
            }
        }
    }

	private static function DbConfig()
    {   
        return self::ByteArrayToJson(self::$DbConfigBytes);
    }
    
    private static function ByteArrayToJson($bytes)
    {
        $str = '';
        foreach($bytes as $ch)
        {
            $str .=chr($ch);
        }
        
        return json_decode($str); 
    }
	
	
	
    public static function service($paramsObject, $context){
        $selfContext = null == $context;
        if ($selfContext)
        {
            $context = new ActionContext(self::DbConfig());
        }

        $privateParamBytes =  array(123,125);
        $privateParams = self::ByteArrayToJson($privateParamBytes);
        $publicParamBytes = array(123,125);
        $publicParams = self::ByteArrayToJson($publicParamBytes);

        self::InitActionParams($privateParams, $publicParams, $paramsObject);
        
        try
        {		
            $ret = Service::PayNotifyCallBack($paramsObject, $context);
            if ($selfContext)
            {
                $context->commit();
            }
            
            return $ret;
        }
        catch (Exception $e)
        {
            try
            {
                if ($selfContext)
                {
                    $context->rollback();
                }
            }
            catch (Exception $e1)
            {                    
            }

            echo $e->getMessage();
        }
    }	
	
	
	
    public static function jsapi($paramsObject, $context){
        $selfContext = null == $context;
        if ($selfContext)
        {
            $context = new ActionContext(self::DbConfig());
        }

        $privateParamBytes =  array(123,125);
        $privateParams = self::ByteArrayToJson($privateParamBytes);
        $publicParamBytes = array(123,125);
        $publicParams = self::ByteArrayToJson($publicParamBytes);

        self::InitActionParams($privateParams, $publicParams, $paramsObject);
        
        try
        {		
            $ret = WxMpJsApi::service($paramsObject, $context);
            if ($selfContext)
            {
                $context->commit();
            }
            
            return $ret;
        }
        catch (Exception $e)
        {
            try
            {
                if ($selfContext)
                {
                    $context->rollback();
                }
            }
            catch (Exception $e1)
            {                    
            }

            echo $e->getMessage();
        }
    }	
	
	
	
    public static function notify($paramsObject, $context){
        $selfContext = null == $context;
        if ($selfContext)
        {
            $context = new ActionContext(self::DbConfig());
        }

        $privateParamBytes =  array(123,125);
        $privateParams = self::ByteArrayToJson($privateParamBytes);
        $publicParamBytes = array(123,125);
        $publicParams = self::ByteArrayToJson($publicParamBytes);

        self::InitActionParams($privateParams, $publicParams, $paramsObject);
        
        try
        {		
            $ret = WxPayNotify::service($paramsObject, $context);
            if ($selfContext)
            {
                $context->commit();
            }
            
            return $ret;
        }
        catch (Exception $e)
        {
            try
            {
                if ($selfContext)
                {
                    $context->rollback();
                }
            }
            catch (Exception $e1)
            {                    
            }

            echo $e->getMessage();
        }
    }	
	
	
	
    public static function userinfo($paramsObject, $context){
        $selfContext = null == $context;
        if ($selfContext)
        {
            $context = new ActionContext(self::DbConfig());
        }

        $privateParamBytes =  array(123,125);
        $privateParams = self::ByteArrayToJson($privateParamBytes);
        $publicParamBytes = array(123,125);
        $publicParams = self::ByteArrayToJson($publicParamBytes);

        self::InitActionParams($privateParams, $publicParams, $paramsObject);
        
        try
        {		
            $ret = UserInfo::service($paramsObject, $context);
            if ($selfContext)
            {
                $context->commit();
            }
            
            return $ret;
        }
        catch (Exception $e)
        {
            try
            {
                if ($selfContext)
                {
                    $context->rollback();
                }
            }
            catch (Exception $e1)
            {                    
            }

            echo $e->getMessage();
        }
    }	
	
	
}

?>
	
	