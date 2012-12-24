<?php

function action($www, $response)
{
    $www->query('message:edit', array
    (
        'message_id' => post::hidden('id'),
        'author'     => post::text('author'),
        'message'    => post::textarea('message')
    ));

    $response->location('/');
}

?>