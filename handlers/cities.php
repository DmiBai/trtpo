<?php


$_POST = json_decode(file_get_contents('php://input'), true);

if (isset($_POST['cities'])) {
    $db = new PDO('mysql:host=localhost;dbname=schedule', 'root', 'root');
    $query = $db->prepare("SELECT city FROM cities");

    $query->execute();

    $res = ($query->fetchAll(PDO::FETCH_NUM));

    echo json_encode($res);
}