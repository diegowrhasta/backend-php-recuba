<?php
    include 'conexion.php'; //Inclusión de la clase de conexión de la BD
    //Instanciación de todos los datos que se recibirán por medio de un POST desde la app
        $consulta="insert into empresa_usuario(nit,nombre,salt,hash,dir,correo,telefono,rubro) values(
        '" .$_GET['nit']. "',
        '" .$_GET['nombre']. "',
        '" .$_GET['salt']. "',
        '" .$_GET['hash']. "',
        '" .$_GET['dir']. "',
        '" .$_GET['correo']. "',
        '" .$_GET['telefono']. "',
        '" .$_GET['rubro']. "'
    )";
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