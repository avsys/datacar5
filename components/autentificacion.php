<?php
include("../db/modelo.php");

$login = $_POST["login"];
$password = $_POST["password"];

$stmt = $mysqli->prepare("SELECT * FROM usuario WHERE login = ? AND status = 1");
 
$stmt->bind_param("s", $login);
 
$stmt->execute();
$resultado = $stmt->get_result();

if($resultado->num_rows === 1)
{
	$datos = $resultado->fetch_assoc();
	$hash = $datos['password'];
	
	if (password_verify($password, $hash)) {		
		//Asignamos a la sesion los datos del usuario
		session_start();
		$_SESSION['usuario'] = $datos;
		$stmt = $mysqli->prepare("UPDATE usuario SET activo = 1 WHERE id_usuario = ?");
		$stmt->bind_param("i", $datos["id_usuario"]);
		$stmt->execute();
		echo json_encode(array('error' => false));
	} 
	else {
		echo json_encode(array('error' => true));
	}
}
else
{
	echo json_encode(array('error' => true));
}

$stmt->close();
?>
