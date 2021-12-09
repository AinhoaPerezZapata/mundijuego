<?php
            //INICIA LA SESION Y LUEGO LA DESTRUYE(DESLOGUANDOSE)
                session_start();
                session_destroy();
                header('Location: ../Login.html');
?>
  
