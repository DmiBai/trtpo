<?php

if(isset($_POST['name']) && isset($_POST['phone']) && isset($_POST['password'])){
    try {
        $db = new PDO('mysql:host=localhost;dbname=schedule', 'root', 'root');
    } catch (PDOException $e) {
        print "Error!: " . $e->getMessage() . "<br/>";
        die();
    }

    $query = $db->prepare('SELECT id FROM users WHERE phone=:phone');
    $query->execute(['phone' => $_POST['phone']]);

    $res = $query->fetchAll();
    if(isset($res[0])){
        echo json_encode('error');
        return;
    }

    $query = $db->prepare('INSERT INTO users(NAME, phone, password) VALUES (:name, :phone, :password)');
    $query->execute(['name' => $_POST['name'], 'phone' => $_POST['phone'], 'password' => $_POST['password']]);

    $res = $query->fetchAll();
    echo json_encode($res);
}

