<?php

function action($www, $response)
{
    $www->query('message:delete', array
    (
        'message_id' => $www->variable('url:message_id')
    ));

    $response->location('/');
}

?>