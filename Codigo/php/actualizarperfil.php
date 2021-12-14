<?php
//Cargamos los archivos que vamos a usar

require 'BD/DAOUsuarios.php';
require 'BD/conectorBD.php';
//Nos conectamos a la base de datos

$conexion = conectar(false);
        
//Usamos las variables que vamos a coger

$usuario= $_POST['usuario'];
$password = $_POST['password'];
$nombre = $_POST['nombre'];
$Apellido1 = $_POST['apellido1'];
$Apellido2 = $_POST['apellido2'];
$Telefono = $_POST['telefono'];
$email = $_POST['email'];
$CodigoPostal = $_POST['codigopostal'];
$Provincia = $_POST['provincia'];
$ComunidadAutonoma = $_POST['comunidadautonoma'];
$FechaNacimiento = $_POST['fechanacimiento'];
$Direccion = $_POST['direccion'];
$Dni = $_POST['dni'];
$idUsuario = $_POST['idUsuario'];
echo($usuario);
echo("<br>");
echo($password);
echo("<br>");
echo($nombre);
echo("<br>");
echo($Apellido1);
echo("<br>");
echo($Apellido2);
echo("<br>");
echo($Telefono);
echo("<br>");
echo($email);
echo("<br>");
echo($CodigoPostal);
echo("<br>");
echo($Provincia);
echo("<br>");
echo($ComunidadAutonoma);
echo("<br>");
echo($FechaNacimiento);
echo("<br>");
echo($Direccion);
echo("<br>");
echo($Dni);
echo("<br>");
echo($idUsuario);
echo("<br>");
//Nos conectamos a la consulta con la variable y los datos que necesitamos

$consulta = modificarPerfil($conexion, $usuario, $password, $nombre, $Apellido1, $Apellido2, $Telefono, $email, $CodigoPostal, $Provincia, $ComunidadAutonoma, $FechaNacimiento, $Direccion, $Dni, $idUsuario);      
if($consulta){
        $consulta2=consultaUsuarios($conexion, $usuario);
        $usuario=mysqli_fetch_assoc($consulta2);
        crearSesion($usuario);
    header('Location: perfil.php');
 
     } else {
     
     header('Location: modificarPerfil.php');
 
  }
?>
