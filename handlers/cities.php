<?php
require_once 'db_conn_parameters.php';

$_POST = json_decode(file_get_contents('php://input'), true);

if (isset($_POST['cities'])) {
    $db = new PDO($dsn, $user, $password);

    $query = $db->prepare("SELECT city FROM cities");

    $query->execute();

    $res = ($query->fetchAll(PDO::FETCH_NUM));

    echo json_encode($res);
}