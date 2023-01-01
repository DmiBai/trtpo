<?php

$db = new PDO('mysql:host=localhost;dbname=schedule', 'root', 'root');

$_POST = json_decode(file_get_contents('php://input'), true);

if(isset($_POST['from'])){

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
