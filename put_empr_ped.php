<?php
    include 'conexion.php'; //Inclusión de la clase de conexión de la BD
    //Instanciación de todos los datos que se recibirán por medio de un POST desde la app
        $consulta="insert into empr_ped(empred_id,ped_id,estado,total,emp_id) values(
        '" .$_GET['empred_id']. "',
        '" .$_GET['ped_id']. "',
        '" .$_GET['estado']. "',
        '" .$_GET['total']. "',
        '" .$_GET['emp_id']. "'
    )";
    $result = mysqli_query($conexion,$consulta);
    if($result){
        $output = 'truePutEmprPed';
    }
    else{
        $output = 'falsePutEmprPed';
    }
    print($output);
    mysqli_close($conexion); //Cierre del canal de conexión a la BDD
?>