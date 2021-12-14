<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
require 'BD/conectorBD.php';
require 'BD/DAONoticia.php';
?>

<!doctype html>
<html lang="es">
<?php
if (empty($_POST['submit'])) {
    $busquedaArticulo = $_POST['Buscar'];
    
$conexion = conectar(false);
$consulta = buscador($conexion, $busquedaArticulo);
    
        while ($mostrar=mysqli_fetch_assoc($consulta)){
            
         ?>
    
                    <td><?php echo "Titulo Noticia " ?></td>
                    <td><?php echo $mostrar['Titulo'] ?></td>
                    <br>
                    <td><?php echo "Plataforma: " ?></td>
                    <td><?php echo $mostrar['NombreP'] ?></td>
                    <br>

    <br>
        <tr><td><?php echo $mostrar['Descripcion'] ?></td></tr>
    </div> 
<?php 
    }    
}
?>
</html>
