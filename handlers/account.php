<?php

$_POST = json_decode(file_get_contents('php://input'), true);

if(isset($_POST['user'])){
    try {
        $db = new PDO('mysql:host=localhost;dbname=schedule', 'root', 'root');
    } catch (PDOException $e) {
        print "Error!: " . $e->getMessage() . "<br/>";
        die();
    }

    $query = $db->prepare("SELECT cities.city AS where_from, C.city AS where_to, orders.time, orders.date
    FROM orders
    INNER JOIN routes
    ON routes.id = orders.route_id 
    
    INNER JOIN cities
    ON routes.where_from = cities.id
    
    INNER JOIN cities AS C
    ON routes.where_to = C.id
    
    WHERE orders.user =  (
        SELECT users.id FROM users WHERE users.phone = :phone
    )
");
    $query->execute(['phone' => $_POST['user']]);

    $res = $query->fetchAll(PDO::FETCH_NUM);
    echo json_encode($res);
}
