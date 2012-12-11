<?php

function action($www)
{
    $www->query_document('message:delete', array
    (
        'message_id' => $www->variable('url:message_id')
    ));

    header('Location: /');
}

?>