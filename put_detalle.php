<?php
    include 'conexion.php'; //Inclusión de la clase de conexión de la BD
    //Instanciación de todos los datos que se recibirán por medio de un POST desde la app
        $consulta="insert into detalle(detalle_id,empred_id,item_id,estado,cantidad) values(
        '" .$_GET['detalle_id']. "',
        '" .$_GET['empred_id']. "',
        '" .$_GET['item_id']. "',
        '" .$_GET['estado']. "',
        '" .$_GET['cantidad']. "'
    )";
    $result = mysqli_query($conexion,$consulta);
    if($result){
        $output = 'PutDetalleTrue';
    }
    else{
        $output = 'PutDetalleFalse';
    }
    print($output);
    mysqli_close($conexion); //Cierre del canal de conexión a la BDD
?>