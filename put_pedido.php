<?php
    include 'conexion.php'; //Inclusión de la clase de conexión de la BD
    //Instanciación de todos los datos que se recibirán por medio de un POST desde la app
        $consulta="insert into pedido(id_ped,fecha_rec,cord_x,cord_y) values(
        '" .$_GET['id_ped']. "',
        '" .$_GET['fecha_rec']. "',
        '" .$_GET['cord_x']. "',
        '" .$_GET['cord_y']. "'
    )";
    $result = mysqli_query($conexion,$consulta);
    if($result){
        $output = 'truePut';
    }
    else{
        $output = 'falsePut';
    }
    print($output);
    mysqli_close($conexion); //Cierre del canal de conexión a la BDD
?>