<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
?>
<?php 

//Cargamos los archivos que vamos a usar
require 'BD/conectorBD.php';
require 'BD/DAOUsuarios.php';

//Usamos las variables que vamos a coger
$Usuario = $_POST['usuario'];
$Nombre = $_POST['nombre'];
$Password = $_POST['contrasena'];
$Apellido1 = $_POST['apellidos'];
$Apellido2 = $_POST['apellido2'];
$Email = $_POST['email'];
$DNi = $_POST['dni'];
$Telefono = $_POST['telefono'];
$CP = $_POST['codigopostal'];
$Provincia = $_POST['provincia'];
$ComunidadAutonoma = $_POST['comunidadautonoma'];
$Direccion = $_POST['direccion'];
$FechaNacimiento = $_POST['fechanacimiento'];
echo $Usuario;
echo '<br>';
echo $Nombre;
echo '<br>';
echo $Password;
echo '<br>';
echo $Apellido1;
echo '<br>';
echo $Apellido2;
echo '<br>';
echo $Email;
echo '<br>';
echo $DNi;
echo '<br>';
echo $Telefono;
echo '<br>';
echo $CP;
echo '<br>';
echo $Provincia;
echo '<br>';
echo $ComunidadAutonoma;
echo '<br>';
echo $Direccion;
echo '<br>';
echo $FechaNacimiento;
echo '<br>';
die;
//Nos conectamos a la base de datos y a la consulta
$conexion = conectar(false);
$consulta = insertarUsuarios($conexion,$Usuario,$Password,$Email,$DNi,$Apellido1,$Apellido2,$ComunidadAutonoma,$Nombre,$Telefono,$CP, $Direccion, $Provincia, $FechaNacimiento);

//Recorremos la consulta
if($consulta){


   header('Location: ../login.html');

    } else {
    echo('no funciona');
    //header('Location: ../ingresar_usuario.html');

 }

 ?>
