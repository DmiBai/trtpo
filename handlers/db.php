<?
global $db;

// Подключаемся к базе MySQL и выбираем базу 
$db = new mysqli('localhost', 'root', '', 'test_base');
if ($db->connect_errno) db_error();

function db_query($sql, $pairs = array()) {
	global $db;
	
	if (!empty($pairs)) {
		foreach ($pairs as $key => $value) {
			if (is_numeric($value)) {
				$sql = str_replace($key, $value, $sql);
			} else {
				$sql = str_replace($key, "'" . $db->real_escape_string($value) . "'", $sql);
			}
		}
	}
	
	if (!$result = $db->query($sql)) 
		db_error();

	return $result;
}

function db_error() {
	global $db;	
	
    echo "<pre>
		Извините, возникла проблема с подключение м к бд на сайте!\n";
    echo "Ошибка: Не удалсь создать соединение с базой MySQL и вот почему: \n";
    echo "Номер_ошибки: " . $db->connect_errno . "\n";
    echo "Ошибка: " . $db->connect_error . "\n</pre>";
    
    exit;		
}