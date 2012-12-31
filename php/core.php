<?php

require_once('config.php');
require_once(www_root . 'www.php');

try
{
    $www = www::create('en', 'us');

    try
    {
        $xhtml = $www->request($_SERVER['REQUEST_URI'], $response);
        $response->flush();
        if($xhtml)
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