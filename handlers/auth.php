<?php
require_once 'db_conn_parameters.php';

if (isset($_POST['phone']) && isset($_POST['password'])) {
    $db = new PDO($dsn, $user, $password);

    $query = $db->prepare('SELECT password FROM users WHERE phone=:phone');
    $query->execute(['phone' => $_POST['phone']]);
    $res = $query->fetchAll();

//    echo json_encode($res);
    if ($res[0]['password'] === $_POST['password']) {
        echo 'success';
    } else {
        echo 'fail';
    }

}
