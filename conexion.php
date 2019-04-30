<?php //Clase utilizada para establecer una conexión a la BD
$hostname = 'localhost';
$database = 'recuba';
$username = 'root';
$password = '';
$conexion = new mysqli($hostname,$username,$password,$database);
if($conexion->connect_errno){
    die('Lo sentimos no se pudo establecer la conexión con la base de datos'); //Mensaje en caso de error
}
mysqli_set_charset($conexion,"utf-8"); //Código para que los caracteres se procesen en utf-8,
//se vean ñ, acentos, diéresis, etc
?>