<?php
include 'conexion.php';
$consulta = "select * from pedido";
$resultado = mysqli_query($conexion,$consulta);
if(!$resultado){
    die("Error en la consulta");
}
while($row = mysqli_fetch_assoc($resultado)){
    $output[] = $row;
}
print(json_encode($output));
mysqli_free_result($resultado);
mysqli_close($conexion);
?>