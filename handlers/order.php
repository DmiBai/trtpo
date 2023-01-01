<?php

$_POST = json_decode(file_get_contents('php://input'), true);

if (isset($_POST['user']) && isset($_POST['from']) && isset($_POST['to'])
    && isset($_POST['date']) && isset($_POST['time'])) {
    try {
        $db = new PDO('mysql:host=localhost;dbname=schedule', 'root', 'root');
    } catch (PDOException $e) {
        print "Error!: " . $e->getMessage() . "<br/>";
        die();
    }

    $query = $db->prepare("
    INSERT orders(orders.route_id, orders.date ,orders.time, orders.user)
    VALUES (
	(
		SELECT routes.id FROM routes
		WHERE routes.where_from = (
			SELECT cities.id FROM cities WHERE city = :from_where
		)
		AND routes.where_to=(
			SELECT cities.id FROM cities WHERE city = :to_where
		)
	),
	:date ,
	:time ,
	(SELECT users.id FROM users WHERE users.phone = :user)
    )
    ");
    $query->execute(['from_where' => $_POST['from'], 'to_where' => $_POST['to'],
        'date' => $_POST['date'], 'time' => $_POST['time'],  'user' => $_POST['user']]);

    $res = $query->fetchAll();
    echo json_encode($res);
}

