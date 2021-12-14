
!doctype html>
<html lang="es">
<?php
if (empty($_POST['submit'])) {
    $busquedaArticulo = $_POST['Buscar'];


        $mostrarNoticias = "SELECT * FROM Noticia WHERE idNoticias  AND Titulo  LIKE '%$busquedaArticulo%'" ;

        $result = $conexion->query($mostrarNoticias);
        while ($row = $result->fetch_assoc()) {
            
         ?>
    
                    <td><?php echo "Titulo Noticia " ?></td>
                    <td><?php echo $row['Titulo'] ?></td>
                    <br>
                    <td><?php echo "Plataforma: " ?></td>
                    <td><?php echo $row['NombreP'] ?></td>
                    <br>

    <br>
        <tr><td><?php echo $row['Descripcion'] ?></td></tr>
    </div> 
<?php 
    }    
}
?>
</html>
