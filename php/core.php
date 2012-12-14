<?php

require_once('config.php');
require_once(www_root . 'www.php');

try
{
    $www = www::create('ru', 'us');

    try
    {
        if($xhtml = $www->request_document($_SERVER['REQUEST_URI']))
        {
            echo $xhtml->render();
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

 # profiler::render();

?>