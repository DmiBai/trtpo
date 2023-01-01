<?php

$db = new PDO('mysql:host=localhost;dbname=schedule', 'root', 'root');

$_POST = json_decode(file_get_contents('php://input'), true);

if(isset($_POST['from']) && isset($_POST['to']) && isset($_POST['date'])){

    $query = $db->prepare("
    SELECT calendar.". $_POST['date'] ."
    FROM calendar
    WHERE calendar.`route-id` = (
        SELECT routes.id 
        FROM routes
        WHERE routes.where_from = (
            SELECT cities.id FROM cities WHERE cities.city = :where_from
        ) 
        AND
        routes.where_to = (
            SELECT cities.id FROM cities WHERE cities.city = :where_to
        )
    )");

    $query->execute(['where_from' => $_POST['from'], 'where_to' => $_POST['to']]);

    $res = ($query->fetchAll(PDO::FETCH_NUM));
    echo json_encode($res);
}
