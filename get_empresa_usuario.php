<?php
include 'conexion.php';
$consulta = "select * from empresa_usuario where nit='".$_GET['nit']."'";
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
        print('falseGetEmpresaUsuario');
        mysqli_free_result($resultado);
        mysqli_close($conexion);
    }
} catch (\Throwable $th) {
    
}
?>