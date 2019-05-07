<?php
    include 'conexion.php'; //Inclusión de la clase de conexión de la BD
    //Instanciación de todos los datos que se recibirán por medio de un POST desde la app
        $consulta="insert into pedido_dia(pedido_dia_id,fechatrab,fecha_hora_ped) values(
        '" .$_GET['pedido_dia_id']. "',
        '" .$_GET['fechatrab']. "',
        '" .$_GET['fecha_hora_ped']. "'
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