<?php

require_once(www_root . 'post.php');

function action($www)
{
    $www->query_document('message:create', array
    (
        'author'  => post::text('author'),
        'message' => post::textarea('message'),
        'ip'      => $www->variable('user:ip')
    ));

    header('Location: /');
}

?>