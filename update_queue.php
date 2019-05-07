<?php
    include 'conexion.php'; //Inclusión de la clase de conexión de la BD
    //Instanciación de todos los datos que se recibirán por medio de un POST desde la app
        $consulta="update queues set peso=peso+'" .$_GET['peso']. "' where fecha = '" .$_GET['fecha']. "'";
    $result = mysqli_query($conexion,$consulta);
    if($result){
        $output = 'true';
    }
    else{
        $output = 'false';
    }
    print($output);
    mysqli_close($conexion); //Cierre del canal de conexión a la BDD
?>