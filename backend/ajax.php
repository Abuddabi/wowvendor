<?php

require "db.php";

header('Content-type: application/json');

$_POST += json_decode(file_get_contents('php://input'), true);

if (isset($_POST['result'])) {

	$stmt = $db->prepare(
		"insert into results 
			set 
				rockPosition = :rockPosition,
				duration = :duration,
				jumpPosition = :jumpPosition,
				rockSize = :rockSize,
				result = :result "
	);

	$res = $stmt->execute([
		'rockPosition' => $_POST['rockPosition'],
		'duration' 		 => $_POST['duration'],
		'jumpPosition' => $_POST['jumpPosition'],
		'rockSize' 		 => $_POST['rockSize'],
		'result' 			 => $_POST['result']
	]);

	if ($res) echo json_encode(["status" => "success", "text" => "The results are recorded in the Database"]);
	else echo json_encode(["status" => "error", "errorText" => $stmt->errorInfo()]);

}