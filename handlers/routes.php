<?php
require_once 'db_conn_parameters.php';

$_POST = json_decode(file_get_contents('php://input'), true);

if(isset($_POST['from'])){
    $db = new PDO($dsn, $user, $password);

    $query = $db->prepare("
        SELECT cities.city
        FROM routes
        INNER JOIN cities
        ON routes.where_to = cities.id
        WHERE routes.where_from = (
            SELECT cities.id
            FROM cities
            WHERE cities.city = :where_from
        )");

    $query->execute(['where_from' => $_POST['from']]);

    $res = ($query->fetchAll(PDO::FETCH_NUM));
    echo json_encode($res);
}
