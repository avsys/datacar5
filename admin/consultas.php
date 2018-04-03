<?php
include("../db/modelo.php");

if(isset($_GET["consulta"])){
   $consulta = htmlspecialchars($_GET["consulta"], ENT_QUOTES, 'UTF-8', false);
   $rows = array();
   $query = '';
   #Iconos#
   $i_editar = '<i class="fa fa-pencil" id="e-"></i>';
   $i_pos = -6;
   #---Geografia---	

   if($consulta == 'pais'){
	   $query = 'SELECT * FROM pais';
	   if(isset($_GET["id"])){
		   $query.=" WHERE id_pais = ?";
	   }
   }	
	
   $stmt = $mysqli->prepare($query);
   if(isset($_GET["id"])){
	$id = intval(htmlspecialchars($_GET["id"], ENT_QUOTES, 'UTF-8', false));
	$stmt->bind_param("i", $id);
   }
   $stmt->execute();
   $res = $stmt->get_result();
	
   if($consulta == 'pais'){
	   if($res->num_rows > 0){
		while ($obj = $res->fetch_object()) {
			$rows[] = array('id'=> $obj->id_pais, 'pais'=> $obj->pais,'acciones'=>substr_replace($i_editar,$obj->id_pais,$i_pos,0));
		}		   
	   }
	   else{
		   $rows =  array('id'=> '', 'pais'=> '', 'acciones'=> '');
	   }
   }
	echo json_encode($rows);
	$stmt->close();
}

?>