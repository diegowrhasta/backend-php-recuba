<?php
include 'conexion.php';
$consulta = "select * from pedido_dia where fechatrab='".$_GET['fechatrab']."'";
$resultado = mysqli_query($conexion,$consulta);
if(!$resultado){
    die("Error en la consulta");
}
while($row = mysqli_fetch_assoc($resultado)){
    $output[] = $row;
}
try {
    print(json_encode($output));
    mysqli_free_result($resultado);
    mysqli_close($conexion);
} catch (\Throwable $th) {
    print('falseGetPedido');
    mysqli_free_result($resultado);
mysqli_close($conexion);
}
?>