<?php
require_once "config.php"; 


$mysqli = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME); 

if ($mysqli->connect_errno) {
	// de todas formas, es imprimir información relacionada con errores de MySQL -- se podría registrar
	echo "Error: Fallo al conectarse a MySQL debido a: \n";
	echo "Errno: " . $mysqli->connect_errno . "\n";
	echo "Error: " . $mysqli->connect_error . "\n";

	// Podría ser conveniente mostrar algo interesante, aunque nosotros simplemente saldremos
	exit;
}
mysqli_set_charset($mysqli, "utf8");


 
?>