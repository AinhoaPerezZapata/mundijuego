<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
?>
<?php
//Cargamos los archivos que vamos a usar
require "BD/DAOUsuarios.php";
require "BD/conectorBD.php";
//Nos conectamos a la base de datos
$conexion = conectar(false);
//Obtenemos el apartado que queremos utilizar.
$idUsuario = $_GET['idUsuario'];

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modificar Perfil</title>
    <link rel="stylesheet" type="text/css" href="../styles/estilos.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Noto+Serif:400,700,700i|Open+Sans:400,700&display=swap" rel="stylesheet"> 

</head>
    <body>
       <nav class="nav-main1">
        <div align="right"><img src="../img/logo/logo.png"></div>
        <a href="../php/index.php">Inicio</a>        </nav> 
            <div class="card" id="cartas" style="width: 18rem;">
            <div class="card-body">
                <form action="actualizarperfil.php" method="POST" enctype="multipart/form-data">
                    <label>Usuario</label><br>
                    <input type="text" class="" name="usuario"require><br>
                    <label>Password</label><br>
                    <input type="password" class="" name="password"require><br>
                    <label>Nombre</label><br>
                    <input type="text" class="" name="nombre"require><br>
                    <label>Apellido1</label><br>
                    <input type="text" class="" name="apellido1"require><br>
                    <label>Apellido2</label><br>
                    <input type="text" class="" name="apellido2"require><br>
                    <label>Telefono</label><br>
                    <input type="number" class="" name="telefono"require><br>
                    <label>Email</label><br>
                    <input type="email" class="" name="email"require><br>
                    <label>CP</label><br>
                    <input type="number" class="" name="codigopostal"require><br>
                    <label>Provincia</label><br>
                    <input type="text" class="" name="provincia"require><br>
                    <label>ComunidadAutonoma</label><br>
                    <input type="text" class="" name="comunidadautonoma"require><br>
                    <label>Direccion</label><br>
                    <input type="text" class="" name="direccion"require><br>
                    <label>Dni</label><br>
                    <input type="text" class="" name="dni"require><br>
                    <label>FechaNacimiento</label><br>
                    <input type="text" class="" name="fechanacimiento"require><br>

                    <input type="submit" value="Modificar">
                    <input type="hidden" name="idUsuario" value="<?php echo $idUsuario?>">
                </form>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
        <script src="http://1000hz.github.io/bootstrap-validator/dist/validator.min.js"></script>
    </body>
</html>
