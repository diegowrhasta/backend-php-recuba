<?php
    include 'conexion.php'; //Inclusión de la clase de conexión de la BD
    //Instanciación de todos los datos que se recibirán por medio de un POST desde la app
        $consulta="update empr_ped set estado='" .$_GET['estado']. "'";
    $result = mysqli_query($conexion,$consulta);
    if($result){
        $output = 'trueUpdateEmpred';
    }
    else{
        $output = 'falseUpdateEmpred';
    }
    print($output);
    mysqli_close($conexion); //Cierre del canal de conexión a la BDD
?>