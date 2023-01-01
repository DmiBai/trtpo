<?php
//формируем заголовки документа - указываем, что кодировка UTF8
header('Content-Type: text/html; charset=UTF-8');
if (empty($_POST['commmand'])) exit;

//require_once dirname(__FILE__) . '/db.php';

$data = array();

//switch ($_POST['commmand']) {
//case 'load-brunch':
//	$pid = empty($_POST['parentID'])? 0 : $_POST['parentID'];
//	$res = db_query("SELECT * FROM tree WHERE pID = :pid", array(':pid' => $pid));
//
//	if ($res->num_rows)
//		while ($r = $res->fetch_object())
//			$data[] = $r;
//
//	break;
//case 'load-object':
//	$id = empty($_POST['objectID'])? 0 : $_POST['objectID'];
//	$res = db_query("SELECT * FROM items WHERE IDobj = :id", array(':id' => $id));
//
//	if ($res->num_rows)
//		$data = $res->fetch_object();
//
//}

