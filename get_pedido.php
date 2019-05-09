<?php
include 'conexion.php';
$consulta = "select * from pedido where fecha_rec='".$_GET['fecha_rec']."'";
$resultado = mysqli_query($conexion,$consulta);
if(!$resultado){
    die("Error en la consulta");
}
while($row = mysqli_fetch_assoc($resultado)){
    $output[] = $row;
}
if(isset($output)){
    print(json_encode($output));
    mysqli_free_result($resultado);
    mysqli_close($conexion);
}
else {
    print(json_encode('falseGetPedido'));
    mysqli_free_result($resultado);
    mysqli_close($conexion);
}
?>