
	
<?php
// namespace taobao;	


	
class Operation__do {
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
	
	
	
    public static function queryRootclassdata($paramsObject, $context){
        $selfContext = null == $context;
        if ($selfContext)
        {
            $context = new ActionContext(self::DbConfig());
        }

        $privateParamBytes =  array(123,34,100,98,34,58,34,116,97,111,98,97,111,34,44,34,116,97,98,108,101,78,97,109,101,34,58,34,114,111,111,116,99,108,97,115,115,100,97,116,97,34,125);
        $privateParams = self::ByteArrayToJson($privateParamBytes);
        $publicParamBytes = array(123,125);
        $publicParams = self::ByteArrayToJson($publicParamBytes);

        self::InitActionParams($privateParams, $publicParams, $paramsObject);
        
        try
        {		
            $ret = com\justep\baas\action\CRUD::query($paramsObject, $context);
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
	
	
	
    public static function querySecondclassdata($paramsObject, $context){
        $selfContext = null == $context;
        if ($selfContext)
        {
            $context = new ActionContext(self::DbConfig());
        }

        $privateParamBytes =  array(123,34,100,98,34,58,34,116,97,111,98,97,111,34,44,34,116,97,98,108,101,78,97,109,101,34,58,34,115,101,99,111,110,100,99,108,97,115,115,100,97,116,97,34,125);
        $privateParams = self::ByteArrayToJson($privateParamBytes);
        $publicParamBytes = array(123,125);
        $publicParams = self::ByteArrayToJson($publicParamBytes);

        self::InitActionParams($privateParams, $publicParams, $paramsObject);
        
        try
        {		
            $ret = com\justep\baas\action\CRUD::query($paramsObject, $context);
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
	
	
	
    public static function queryBannersdata($paramsObject, $context){
        $selfContext = null == $context;
        if ($selfContext)
        {
            $context = new ActionContext(self::DbConfig());
        }

        $privateParamBytes =  array(123,34,100,98,34,58,34,116,97,111,98,97,111,34,44,34,116,97,98,108,101,78,97,109,101,34,58,34,98,97,110,110,101,114,115,100,97,116,97,34,125);
        $privateParams = self::ByteArrayToJson($privateParamBytes);
        $publicParamBytes = array(123,125);
        $publicParams = self::ByteArrayToJson($publicParamBytes);

        self::InitActionParams($privateParams, $publicParams, $paramsObject);
        
        try
        {		
            $ret = com\justep\baas\action\CRUD::query($paramsObject, $context);
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
	
	
	
    public static function queryGoodsdata($paramsObject, $context){
        $selfContext = null == $context;
        if ($selfContext)
        {
            $context = new ActionContext(self::DbConfig());
        }

        $privateParamBytes =  array(123,34,100,98,34,58,34,116,97,111,98,97,111,34,44,34,116,97,98,108,101,78,97,109,101,34,58,34,103,111,111,100,115,100,97,116,97,34,125);
        $privateParams = self::ByteArrayToJson($privateParamBytes);
        $publicParamBytes = array(123,125);
        $publicParams = self::ByteArrayToJson($publicParamBytes);

        self::InitActionParams($privateParams, $publicParams, $paramsObject);
        
        try
        {		
            $ret = com\justep\baas\action\CRUD::query($paramsObject, $context);
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
	
	
	
    public static function queryThreeclassdata($paramsObject, $context){
        $selfContext = null == $context;
        if ($selfContext)
        {
            $context = new ActionContext(self::DbConfig());
        }

        $privateParamBytes =  array(123,34,100,98,34,58,34,116,97,111,98,97,111,34,44,34,116,97,98,108,101,78,97,109,101,34,58,34,116,104,114,101,101,99,108,97,115,115,100,97,116,97,34,125);
        $privateParams = self::ByteArrayToJson($privateParamBytes);
        $publicParamBytes = array(123,125);
        $publicParams = self::ByteArrayToJson($publicParamBytes);

        self::InitActionParams($privateParams, $publicParams, $paramsObject);
        
        try
        {		
            $ret = com\justep\baas\action\CRUD::query($paramsObject, $context);
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
	
	
	
    public static function saveThreeclassdata($paramsObject, $context){
        $selfContext = null == $context;
        if ($selfContext)
        {
            $context = new ActionContext(self::DbConfig());
        }

        $privateParamBytes =  array(123,34,100,98,34,58,34,116,97,111,98,97,111,34,44,34,112,101,114,109,105,115,115,105,111,110,115,34,58,123,34,116,104,114,101,101,99,108,97,115,115,100,97,116,97,34,58,34,34,125,125);
        $privateParams = self::ByteArrayToJson($privateParamBytes);
        $publicParamBytes = array(123,125);
        $publicParams = self::ByteArrayToJson($publicParamBytes);

        self::InitActionParams($privateParams, $publicParams, $paramsObject);
        
        try
        {		
            $ret = com\justep\baas\action\CRUD::save($paramsObject, $context);
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
	
	
	
    public static function queryShopdata($paramsObject, $context){
        $selfContext = null == $context;
        if ($selfContext)
        {
            $context = new ActionContext(self::DbConfig());
        }

        $privateParamBytes =  array(123,34,100,98,34,58,34,116,97,111,98,97,111,34,44,34,116,97,98,108,101,78,97,109,101,34,58,34,115,104,111,112,100,97,116,97,34,125);
        $privateParams = self::ByteArrayToJson($privateParamBytes);
        $publicParamBytes = array(123,125);
        $publicParams = self::ByteArrayToJson($publicParamBytes);

        self::InitActionParams($privateParams, $publicParams, $paramsObject);
        
        try
        {		
            $ret = com\justep\baas\action\CRUD::query($paramsObject, $context);
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
	
	
	
    public static function queryGoodimgsdata($paramsObject, $context){
        $selfContext = null == $context;
        if ($selfContext)
        {
            $context = new ActionContext(self::DbConfig());
        }

        $privateParamBytes =  array(123,34,100,98,34,58,34,116,97,111,98,97,111,34,44,34,116,97,98,108,101,78,97,109,101,34,58,34,103,111,111,100,105,109,103,115,100,97,116,97,34,125);
        $privateParams = self::ByteArrayToJson($privateParamBytes);
        $publicParamBytes = array(123,125);
        $publicParams = self::ByteArrayToJson($publicParamBytes);

        self::InitActionParams($privateParams, $publicParams, $paramsObject);
        
        try
        {		
            $ret = com\justep\baas\action\CRUD::query($paramsObject, $context);
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
	
	
	
    public static function queryCommentsdata($paramsObject, $context){
        $selfContext = null == $context;
        if ($selfContext)
        {
            $context = new ActionContext(self::DbConfig());
        }

        $privateParamBytes =  array(123,34,100,98,34,58,34,116,97,111,98,97,111,34,44,34,116,97,98,108,101,78,97,109,101,34,58,34,99,111,109,109,101,110,116,115,100,97,116,97,34,125);
        $privateParams = self::ByteArrayToJson($privateParamBytes);
        $publicParamBytes = array(123,125);
        $publicParams = self::ByteArrayToJson($publicParamBytes);

        self::InitActionParams($privateParams, $publicParams, $paramsObject);
        
        try
        {		
            $ret = com\justep\baas\action\CRUD::query($paramsObject, $context);
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
	
	
	
    public static function queryParameterdata($paramsObject, $context){
        $selfContext = null == $context;
        if ($selfContext)
        {
            $context = new ActionContext(self::DbConfig());
        }

        $privateParamBytes =  array(123,34,100,98,34,58,34,116,97,111,98,97,111,34,44,34,116,97,98,108,101,78,97,109,101,34,58,34,112,97,114,97,109,101,116,101,114,100,97,116,97,34,125);
        $privateParams = self::ByteArrayToJson($privateParamBytes);
        $publicParamBytes = array(123,125);
        $publicParams = self::ByteArrayToJson($publicParamBytes);

        self::InitActionParams($privateParams, $publicParams, $paramsObject);
        
        try
        {		
            $ret = com\justep\baas\action\CRUD::query($paramsObject, $context);
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
	
	
	
    public static function queryCartdata($paramsObject, $context){
        $selfContext = null == $context;
        if ($selfContext)
        {
            $context = new ActionContext(self::DbConfig());
        }

        $privateParamBytes =  array(123,34,100,98,34,58,34,116,97,111,98,97,111,34,44,34,116,97,98,108,101,78,97,109,101,34,58,34,99,97,114,116,100,97,116,97,34,125);
        $privateParams = self::ByteArrayToJson($privateParamBytes);
        $publicParamBytes = array(123,125);
        $publicParams = self::ByteArrayToJson($publicParamBytes);

        self::InitActionParams($privateParams, $publicParams, $paramsObject);
        
        try
        {		
            $ret = com\justep\baas\action\CRUD::query($paramsObject, $context);
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
	
	
	
    public static function saveCartdata($paramsObject, $context){
        $selfContext = null == $context;
        if ($selfContext)
        {
            $context = new ActionContext(self::DbConfig());
        }

        $privateParamBytes =  array(123,34,100,98,34,58,34,116,97,111,98,97,111,34,44,34,112,101,114,109,105,115,115,105,111,110,115,34,58,123,34,99,97,114,116,100,97,116,97,34,58,34,34,125,125);
        $privateParams = self::ByteArrayToJson($privateParamBytes);
        $publicParamBytes = array(123,125);
        $publicParams = self::ByteArrayToJson($publicParamBytes);

        self::InitActionParams($privateParams, $publicParams, $paramsObject);
        
        try
        {		
            $ret = com\justep\baas\action\CRUD::save($paramsObject, $context);
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
	
	
	
    public static function queryColordata($paramsObject, $context){
        $selfContext = null == $context;
        if ($selfContext)
        {
            $context = new ActionContext(self::DbConfig());
        }

        $privateParamBytes =  array(123,34,100,98,34,58,34,116,97,111,98,97,111,34,44,34,116,97,98,108,101,78,97,109,101,34,58,34,99,111,108,111,114,100,97,116,97,34,125);
        $privateParams = self::ByteArrayToJson($privateParamBytes);
        $publicParamBytes = array(123,125);
        $publicParams = self::ByteArrayToJson($publicParamBytes);

        self::InitActionParams($privateParams, $publicParams, $paramsObject);
        
        try
        {		
            $ret = com\justep\baas\action\CRUD::query($paramsObject, $context);
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
	
	
	
    public static function queryCartshopdata($paramsObject, $context){
        $selfContext = null == $context;
        if ($selfContext)
        {
            $context = new ActionContext(self::DbConfig());
        }

        $privateParamBytes =  array(123,34,100,98,34,58,34,116,97,111,98,97,111,34,44,34,116,97,98,108,101,78,97,109,101,34,58,34,99,97,114,116,115,104,111,112,100,97,116,97,34,125);
        $privateParams = self::ByteArrayToJson($privateParamBytes);
        $publicParamBytes = array(123,125);
        $publicParams = self::ByteArrayToJson($publicParamBytes);

        self::InitActionParams($privateParams, $publicParams, $paramsObject);
        
        try
        {		
            $ret = com\justep\baas\action\CRUD::query($paramsObject, $context);
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
	
	
	
    public static function saveCartshopdata($paramsObject, $context){
        $selfContext = null == $context;
        if ($selfContext)
        {
            $context = new ActionContext(self::DbConfig());
        }

        $privateParamBytes =  array(123,34,100,98,34,58,34,116,97,111,98,97,111,34,44,34,112,101,114,109,105,115,115,105,111,110,115,34,58,123,34,99,97,114,116,115,104,111,112,100,97,116,97,34,58,34,34,125,125);
        $privateParams = self::ByteArrayToJson($privateParamBytes);
        $publicParamBytes = array(123,125);
        $publicParams = self::ByteArrayToJson($publicParamBytes);

        self::InitActionParams($privateParams, $publicParams, $paramsObject);
        
        try
        {		
            $ret = com\justep\baas\action\CRUD::save($paramsObject, $context);
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
	
	
	
    public static function querySizedata($paramsObject, $context){
        $selfContext = null == $context;
        if ($selfContext)
        {
            $context = new ActionContext(self::DbConfig());
        }

        $privateParamBytes =  array(123,34,100,98,34,58,34,116,97,111,98,97,111,34,44,34,116,97,98,108,101,78,97,109,101,34,58,34,115,105,122,101,100,97,116,97,34,125);
        $privateParams = self::ByteArrayToJson($privateParamBytes);
        $publicParamBytes = array(123,125);
        $publicParams = self::ByteArrayToJson($publicParamBytes);

        self::InitActionParams($privateParams, $publicParams, $paramsObject);
        
        try
        {		
            $ret = com\justep\baas\action\CRUD::query($paramsObject, $context);
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
	
	
	
    public static function saveSizedata($paramsObject, $context){
        $selfContext = null == $context;
        if ($selfContext)
        {
            $context = new ActionContext(self::DbConfig());
        }

        $privateParamBytes =  array(123,34,100,98,34,58,34,116,97,111,98,97,111,34,44,34,112,101,114,109,105,115,115,105,111,110,115,34,58,123,34,115,105,122,101,100,97,116,97,34,58,34,34,125,125);
        $privateParams = self::ByteArrayToJson($privateParamBytes);
        $publicParamBytes = array(123,125);
        $publicParams = self::ByteArrayToJson($publicParamBytes);

        self::InitActionParams($privateParams, $publicParams, $paramsObject);
        
        try
        {		
            $ret = com\justep\baas\action\CRUD::save($paramsObject, $context);
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
	
	