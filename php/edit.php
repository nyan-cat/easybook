<?php

require_once(www_root . 'post.php');

function action($www)
{
    $www->query_document('message:edit', array
    (
        'message_id' => post::hidden('id'),
        'author'     => post::text('author'),
        'message'    => post::textarea('message')
    ));

    header('Location: /');
}

?>