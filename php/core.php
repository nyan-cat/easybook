<?php

require_once('config.php');
require_once(www_root . 'www.php');

try
{
    $www = www::create('ru', 'us');

    try
    {
        if($result = $www->request_document($_SERVER['REQUEST_URI']))
        {
            echo $result->render();
        }
    }
    catch(Exception $e)
    {
        echo '<pre>' . $e . '</pre>';
    }
}
catch(Exception $e)
{
    echo '<pre>' . $e . '</pre>';
}

?>