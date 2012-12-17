<?php

require_once(www_root . 'post.php');

function action($www, $response)
{
    $www->query('message:create', array
    (
        'author'  => post::text('author'),
        'message' => post::textarea('message'),
        'ip'      => $www->variable('user:ip')
    ));

    $response->location('/');
}

?>