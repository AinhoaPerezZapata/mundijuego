<?php 

//Cargamos los archivos que vamos a usar
require 'BD/conectorBD.php';
require 'BD/DAOUsuarios.php';

//Usamos las variables que vamos a coger
$Usuario = $_POST['usuario'];
$Password = $_POST['password'];
$Email = $_POST['email'];
$DNi = $_POST['dni'];
$Nombre = $_POST['nombre'];
$Apellido1 = $_POST['apellido1'];
$Apellido2 = $_POST['apellido2'];
$ComunidadAutonoma = $_POST['comunidadautonoma'];
$Telefono = $_POST['telefono'];
$CP = $_POST['codigopostal'];
$Provincia = $_POST['provincia'];

//Nos conectamos a la base de datos y a la consulta
$conexion = conectar(false);
$consulta = insertarUsuarios($conexion,$usuario,$password,$email,$DNi,$Apellido1,$Apellido2,$ComunidadAutonoma,$Nombre,$Telefono,$CP,$Provincia);


//Recorremos la consulta
if($consulta){


   header('Location: ../login.html');

    } else {
    
    header('Location: ../ingresar_usuario.html');

 }

 ?>
