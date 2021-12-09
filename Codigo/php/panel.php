<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="../styles/estilos.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Noto+Serif:400,700,700i|Open+Sans:400,700&display=swap" rel="stylesheet"> 
  
    <title>Panel de Usuarios</title>
</head>
    <body>
        <header>
        <nav class="nav-main1">
        <div align="right"><img src="../img/logo/logo.png"></div>
            <a href="../php/index.php">Inicio</a>
            </nav>   
              <ul class="nav justify-content-end"></ul>
        </header>  
        <div class="contenedor">
        <table border="1" class="table table-dark">
            <tr>
                <th>idUsuario</th>
                <th>Usuario</th>
                <th>Password</th>
                <th>Nombre</th>
                <th>Apellido1</th>
                <th>Apellido2</th>
                <th>Telefono</th>
                <th>Email</th>
                <th>CP</th>
                <th>Provincia</th>
                <th>ComunidadAutonoma</th>
                <th>Rol</th>
                <button type ="submit"><a href="../insertarusuario.html?idUsuario=<?php echo $fila['idUsuario']; ?>" value="insertar" name="insertar">Insertar Usuario</button>
            </tr>


            <?php
                //Cargamos los archivos que vamos a usar
                require "BD/conectorBD.php";
                require "BD/DAOUsuarios.php";

                //Nos conectamos a la base de datos y mostramos en este caso los usuarios

                $conexion = conectar(false);
                $consulta = mostrarUsuario($conexion);

                     while($fila=mysqli_fetch_assoc($consulta)){
                        echo 'ccccc';
                ?>

                <tr>
                <td><?php echo $fila['idUsuario'];  ?></td>
                <td><?php echo $fila['Usuario'];  ?></td>
                <td><button ><a href="modificarusuario.php?idUsuario= <?php echo $fila['idUsuario'];?>" value="modificar" name="modificar">Modificar</button></td>
                <td><button ><a href="eliminarUsuario.php?idUsuario= <?php echo $fila['idUsuario'];?>" value="eliminar" name="eliminar">Eliminar</button></td>
                    
                </tr>                
                        <?php  
                                }
                        ?>
            <hr>aaaaaaaaaaaaaaaaaa</hr>
        </table>
        </div>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
            <script src="http://1000hz.github.io/bootstrap-validator/dist/validator.min.js"></script>
    </body>
</html>
