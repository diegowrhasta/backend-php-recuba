<?php
include 'conexion.php';
$consulta = "select * from empr_ped where emp_id='".$_GET['emp_id']."' and estado='ChangeReady'";
$resultado = mysqli_query($conexion,$consulta);
if(!$resultado){
    die("Error en la consulta");
}
while($row = mysqli_fetch_assoc($resultado)){
    $output[] = $row;
}
try {
    if(isset($output)){
        print(json_encode($output));
        mysqli_free_result($resultado);
        mysqli_close($conexion);
    }
    else{
        print('falseGetPedidoDia');
        mysqli_free_result($resultado);
        mysqli_close($conexion);
    }
} catch (\Throwable $th) {
    
}
?>