
<?php
 // 1- connect to db
 include 'conexion.php';
$consulta = "select * from empresa_usuario where nit= '".$_GET['nit']."'";  // $usename=$_GET['username'];
$result=  mysqli_query($conexion, $consulta);
if(! $result){ 
    die("Error al consultar el servidor");
}
else{
    $new_array = array();
while($row=  mysqli_fetch_array($result,MYSQLI_ASSOC)){
 $new_array[]=$row;  //$row['id']
}
if($new_array){
    print(json_encode($new_array));
}
else{ 
    print("[{'msg':'Datos Incorrectos'}]");
}
}
 //get data from database
//$output=array();
// 4 clear
mysqli_free_result($result);
//5- close connection
mysqli_close($conexion);
?>