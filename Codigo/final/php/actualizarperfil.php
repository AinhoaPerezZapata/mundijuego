<?php
//Cargamos los archivos que vamos a usar

require 'BD/DAOUsuarios.php';
require 'BD/conectorBD.php';
//Nos conectamos a la base de datos

$conexion = conectar(false);
        
//Usamos las variables que vamos a coger

$usuario= $_POST['Usuario'];
$password = $_POST['Password'];
$nombre = $_POST['Nombre'];
$Apellido1 = $_POST['Apellido1'];
$Apellido2 = $_POST['Apellido2'];
$Telefono = $_POST['Telefono'];
$email = $_POST['Email'];
$CP = $_POST['CP'];
$Provincia = $_POST['Provincia'];
$ComunidadAutonoma = $_POST['ComunidadAutonoma'];
$idUsuario = $_POST['idUsuario'];
//Nos conectamos a la consulta con la variable y los datos que necesitamos

$consulta = modificarPerfil($conexion, $usuario, $password, $nombre, $Apellido1, $Apellido2, $Telefono, $email, $CP, $Provincia, $ComunidadAutonoma,  $idUsuario);      
if($consulta){
        $consulta2=consultaUsuarios($conexion, $usuario);
        $usuario=mysqli_fetch_assoc($consulta2);
        crearSesion($usuario);
    header('Location: perfil.php');
 
     } else {
     
     header('Location: modificarPerfil.php');
 
  }
?>
