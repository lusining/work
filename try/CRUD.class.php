<?php

namespace com\justep\baas\action;

class CRUD
{   
    private static $QUERY_MASTER_VAR_NAME = "_sys_master_value_";
    public static $QUERY_TREE_PARENT_VAR_NAME = "_sys_tree_parent_value_";
    
    public static function sqlQuery($paramsObject, $context)
    {
        self::query($paramsObject, $context);
    }
    
    public static function query($paramsObject, $context)
    {        
        //var_dump($paramsObject);
        $db = $paramsObject["db"];
        $tableName = $paramsObject["tableName"];
        $columns = isset($paramsObject["columns"]) ? $paramsObject["columns"] : ''; // 列定义
		$limit = isset($paramsObject["limit"]) ? $paramsObject["limit"] : ''; // 分页查询的行数
		$offset = isset($paramsObject["offset"]) ? $paramsObject["offset"] : ''; // 分页查询的行偏移
        
        $orderBy = null;
        if (isset($paramsObject["orderBy"]))
        {
            $orderBy = $paramsObject["orderBy"];
        }
        
        $condition = null;
        if (isset($paramsObject["condition"]))
        {
            $condition = $paramsObject["condition"];
        }
        
        $filter = null;
        if (isset($paramsObject["filter"]))
        {
            $filter = $paramsObject["filter"];
        }
        
        $variables = self::GetVariables($paramsObject);
		//var_dump($variables);
        
        $filters = array();
        if (!empty($condition))
        {
            array_push($filters, $condition);
        }
        
        if (!empty($filter))
        {
            array_push($filters, $filter);
        }
        
        // 处理主从
        if (isset($paramsObject["master"]))
        {
            $master = $paramsObject["master"];
            if (isset($master["field"]))
            {
                array_push($filters, $master["field"]." = :".self::$QUERY_MASTER_VAR_NAME);
                $variables[QUERY_MASTER_VAR_NAME] = $master["value"];
            }
        }
        
        // 树形数据
        //bool isTree = false;
        $treeDelayLoad = true;
        if (isset($paramsObject["tree"]))
        {
            //isTree = true;
            $treeOption = $paramsObject["tree"];
            $treeDelayLoad = $treeOption["isDelayLoad"];
            $parentField = $treeOption["parentField"];
            $idField = $treeOption["idField"];
            if ($treeDelayLoad)
            {
                //分级加载增加根据父的过滤条件
                $rootFilter = $treeOption["rootFilter"];
                $parentValue = $treeOption["parentValue"];
                if (null != $parentValue)
                {
                    array_push($filters, parentField." = :".self::$QUERY_TREE_PARENT_VAR_NAME);
                    $variables[QUERY_TREE_PARENT_VAR_NAME] = $parentValue;
                }
                else {
                    if (null == rootFilter) filters.Add(parentField + " is null");//默认根条件就是 parent is null
                    else filters.Add(rootFilter);
                }
            }
        }
        
        $pdo = $context->Connection($db);        
        
        if ($pdo == null)
        {
            die('Database connection is invalid.');
        }
        //var_dump($variables);
		$table = \baas\data\Util::queryData ( $pdo, $tableName, $columns, $filters, $orderBy, $variables, $offset, $limit );
        
        //echo 'line 25';
        //echo 'tablename:'.$tableName;
        //var_dump($table);
        
		$json = \baas\data\Transform::tableToJson( $table );
        
        $jsonHtml = json_encode ( $json );
        //echo $jsonHtml;
        //echo $jsonHtml;
        echo(urldecode($jsonHtml));
    }
    
    public static function save($jObject, $context)
    {      
        //var_dump($jObject);
        $pdo = $context->Connection($jObject["db"]);               
        
        
        //$tableName = $jObject["tableName"];
        $tables = $jObject["tables"]; // 订单数据的JSON格式
        $permissions = $jObject["permissions"];		
        
        foreach($tables as $jsonTable)
        {
            // JSON转换Table
            $table = \baas\data\Transform::jsonToTable($jsonTable);
            //var_dump($table);
            $tableName = $table->getTableName();

            
            // 开启事务
            $pdo->beginTransaction ();
            try {
                // 保存Table
                \baas\data\Util::saveData ( $pdo, $table, $tableName );
                // 提交事务
                $pdo->commit ();
            } catch ( PDOException $e ) {
                // 如果发生异常，首先回滚事务，然后把异常继续抛出
                $pdo->rollback ();
                throw $e;
            }            
        }
    }
    
    private static function GetVariables($paramsObject)
    {
        $variableFlag = "var-";

        if (isset($paramsObject["variables"]))
        {
            $variables = $paramsObject["variables"];
        }
        else
        {
            $variables = array();
        }
        
        foreach ($paramsObject as $key => $value)
        {
            //echo $key."index:".(strpos($key, "table") === 0)."<br/>";
            if (strpos($key, $variableFlag) === 0)
            {
                $varName = substr($key, strlen($variableFlag));
                if (!isset($variables[$varName]))
                {
                    $variables[$varName] = $value;
                }
            }
        }
        //var_dump($variables);

        return $variables;
    }
}

?>