<?php
include("../db/modelo.php");
#Funcion recursiva para convertir valores especiales en cualquiera de las variables
function filtro(&$valor) {
	$valor = htmlspecialchars($valor, ENT_QUOTES, 'UTF-8');
}

if(isset($_POST["accion"])){
	$query = '';
	$stmt = '';
	$array = '';

	array_walk_recursive($_POST, "filtro");

	#Pais#
	if($_POST["accion"] == "pais_add"){
		$stmt = $mysqli->prepare("INSERT INTO pais(pais) VALUES(?)"); 
		$stmt->bind_param("s", $_POST["nombre"]);		
	}
	elseif($_POST["accion"] == "pais_edit"){
		$stmt = $mysqli->prepare("UPDATE pais SET pais = ? WHERE id_pais = ?"); 
		$stmt->bind_param("si", $_POST["nombre"],$_POST["id"]);		
	}
	elseif($_POST["accion"] == "pais_delete"){
		$stmt = $mysqli->prepare("DELETE FROM pais WHERE id_pais = ?"); 	
	}
	
	#Si se encuentra mas de un elemento
	if(isset($_POST["id"]) && is_array($_POST["id"])){
		for($i = 0; $i < count($_POST["id"]); $i++){			
			$stmt->bind_param("i", $_POST["id"][$i]);
			if($i < count($_POST["id"])-1){
				$stmt->execute();
			}
		}	
	}

	if($stmt->execute()){
		$array = array("accion"=>1);
	}
	else{
		$array = array("accion"=>0);
	}
	echo json_encode($array);
	$stmt->close();
}

?>