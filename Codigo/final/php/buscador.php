<?php
if (empty($_POST['submit'])) {
    $busquedaArticulo = $_POST['Buscar'];


        $sql = "SELECT * FROM Proyectos WHERE idProyecto >0 AND TituloProyecto  LIKE '%$busquedaArticulo%'" ;

        $result = $conexion->query($sql);
        while ($row = $result->fetch_assoc()) {
         ?>
            <div class="ajusteTexto">
                <div class="TituloDeContenidos">
                    <td><?php echo "Título de proyecto: " ?></td>
                    <td><?php echo $row['TituloProyecto'] ?></td>
                    <br>
                    <td><?php echo "Modelo Utilizado: " ?></td>
                    <td><?php echo $row['ModeloArduino'] ?></td>
                    <br>
                    <td><?php echo "Nivel de dificultad: " ?></td>
<?php
        $nivelDeConocimientoBasico=0;
        $nivelDeConocimientoMedio=5;
                if($row['nivelConocimiento']==$nivelDeConocimientoBasico){
                    echo  "Básico";
                }elseif($row['nivelConocimiento']==$nivelDeConocimientoMedio){
                    echo "Medio";
                }else{
                    echo "Avanzado";
                }

?>
                </div>
            </div>
    <div class="fila">
        <div class="columna">
        <a class="CatalogoEfecto" href="../Proyectos/proyectos.php?id=<?php echo $row['idProyecto']?>"> <img  title="Haga clic en la imagen para acceder a este contenido" class="Catalogo" src="<?php echo $row['ImagenProyecto']; ?>"></a>   
        </div>

        <div class="columna">
            <img  class="Catalogo" src="<?php echo $row['ProyectoMini1']; ?>">
        </div>
        <div class="columna">
            <img  class="Catalogo" src="<?php echo $row['ProyectoMini2']; ?>">
        </div>
        </div>
    </div>
    <br>
    <div class="
    
    <?php

    if(!$_SESSION['name']){
        
        echo "interiorcontenedorDescripcionIncompleta";

        }else{

        echo "interiorcontenedorDescripcionCompactaUserLogueado";

        }
    ?>">
        <tr><td><?php echo $row['DescripcionProyecto'] ?></td></tr>
    </div>      
<?php 
    }    
}
?>