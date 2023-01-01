<?php
if (isset($_POST['phone']) && isset($_POST['password'])) {
    try {
        $db = new PDO('mysql:host=localhost;dbname=schedule', 'root', 'root');
    } catch (PDOException $e) {
        print "Error!: " . $e->getMessage() . "<br/>";
        die();
    }

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
