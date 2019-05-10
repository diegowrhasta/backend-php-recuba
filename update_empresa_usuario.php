<?php
    include 'conexion.php'; //Inclusión de la clase de conexión de la BD
    //Instanciación de todos los datos que se recibirán por medio de un POST desde la app
        $consulta="update empresa_usuario set nombre = '" .$_GET['nombre']. "', 
        salt = '" .$_GET['salt']. "', hash = '" .$_GET['hash']. "',
        dir = '" .$_GET['dir']. "', correo = '" .$_GET['correo']. "', 
        telefono = '" .$_GET['telefono']. "', rubro = '" .$_GET['rubro']."' 
        where nit = '" .$_GET['nit']. "'";
    $result = mysqli_query($conexion,$consulta);
    if($result){
        $output = 'UpdateEmpresaTrue';
    }
    else{
        $output = 'UpdateEmpresaFalse';
    }
    print($output);
    mysqli_close($conexion); //Cierre del canal de conexión a la BDD
?>