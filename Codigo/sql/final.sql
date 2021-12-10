-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: final
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `noticias`
--

DROP TABLE IF EXISTS `noticias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `noticias` (
  `idNoticias` int NOT NULL AUTO_INCREMENT,
  `Plataforma` int NOT NULL,
  `Imagen` varchar(2050) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Descripcion` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Titulo` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `NombreP` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`idNoticias`),
  UNIQUE KEY `idNoticias_UNIQUE` (`idNoticias`),
  KEY `Plataforma_idx` (`Plataforma`),
  CONSTRAINT `idNoticias` FOREIGN KEY (`Plataforma`) REFERENCES `plataforma` (`idPlataforma`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `noticias`
--

LOCK TABLES `noticias` WRITE;
/*!40000 ALTER TABLE `noticias` DISABLE KEYS */;
INSERT INTO `noticias` VALUES (1,10,'../img/lolnoticia.jfif','Es uno de los videojuegos más influyentes e importantes de la historia, pero que consiguiera ese título hace ya unos años no significa que esté de capa caída. Ni mucho menos: League of Legends es un fenómeno muy en forma, y el resto de juegos (y no solo juegos) pertenecientes a su universo funcionan a buen ritmo también. Y si, por alguna razón, esperábamos noticias diferentes al respecto, Riot Games ha dejado claro que las cosas siguen yendo bien. En PCGamer han preguntado acerca de los títulos en concreto que forman este número, y parece abarcar los jugadores de League of Legends, League of Legends: Wild Rift, Teamfight Tactics y Battle of Golden Spatula (en China), por lo que no se está contando, por ejemplo, Valorant.','Los juegos de League of Legends suman 180 millones de jugadores activos, más que los que tiene Steam.','PC'),(2,10,'../img/diover.jfif','La crisis institucional de Activision Blizzard ha supuesto un terremoto en la industria tanto dentro como fuera de la compañía. Una parte de la plantilla se ha visto afectada directa e indirectamente por los casos de acoso y las denuncias, y piezas clave en el desarrollo de proyectos como Diablo IV se han visto fuera de la compañía y sustituidos ponuevos creativos.','Diablo 4 y Overwatch 2 se harán esperar: Blizzard anuncia su retraso tras los cambios de personal.','PC'),(3,10,'../img/mh.jpeg','Capcom sigue copando la actualidad del videojuego gracias a sus últimos números, pues han superado las expectativas de todo el mundo gracias a los éxitos de Monster Hunter y Resident Evil. Ya que, con un Resident Evil 7 que no deja de acumular beneficios y un Monster Hunter: World que ya lidera la lista de la compañía, Capcom ha demostrado que todavía no ha tocado techo.','Resident Evil 7 y Monster Hunter: World siguen destacando como los juegos más exitosos de Capcom.','PC'),(4,5,'../img/eldenring.jpg','Han tardado en dar novedades pero ¡vaya novedades! El equipo japonés de FromSoftware ha presentado un extenso vídeo gameplay de Elden Ring que nos ha permitido ver en acción su esperadísimo RPG de mundo abierto, además de confirmar que habrá una edición especial para coleccionistas (que se filtró minutos antes) con una figura y hasta una réplica del casco de Malenia, uno de los personajes principales de la aventura.Este largo gameplay ha arrancado con el combate contra un dragón, aunque aquí la novedad radica en el hecho de que nuestro protagonista va en una montura, que es una de las nuevas características que introduce Elden Ring con respecto a otros juegos de la saga Souls. Durante el gameplay se han mostrado otros detalles interesantes de este nuevo universo de fantasía, con un gran y bello mapa ilustrado que nos va a permitir explorar con mayor comodidad el vasto y peligroso mundo abierto del que hace gala el juego de FromSoftware. Durante nuestro viaje por este nuevo mundo podemos convocar a otros jugadores para disfrutar de una renovada experiencia multijugador, haciendo frente no solo a los jefes finales sino también a los propios peligros de este universo de fantasía. Con la ayuda de las monturas podremos recorrer largas distancias en menor tiempo y, en la línea del fantástico Sekiro, la verticalidad de los escenarios nos permitirá usar el sigilo y los ataques furtivos para destrozar a los rivales antes de que se den cuenta. Por supuesto, siendo un juego de FromSoftware, además de ese gran mundo abierto también encontraremos mazmorras, cuevas y castillos con un diseño más cercano a lo que estamos acostumbrados en la saga. Durante este gameplay hemos visto algunos de estos lugares sombríos, aunque el gran protagonismo se lo ha llevado el mundo abierto y sus hermosas panorámicas. No podían faltar también los imponentes jefes finales, con un par de duelos que nos han dejado con algunas escenas bastante emocionantes, y un duelo final que promete ser un auténtico desafío. Tal y como se había filtrado, Elden Ring contará con una edición especial para coleccionistas que incluye una figura de Malenia de 23cm además de otros extras como un libro de arte de 40 páginas o la banda sonora en formato digital según podemos ver en su web oficial. Sin embargo, los fans de FromSoftware tendrán a su alcance otra opción superior, que es la edición Premium, con estos mismos contenidos y una réplica del casco de Malenia a tamaño real. El precio de la edición Premium (con casco) es de 259,99 euros, mientras que la coleccionista costará 189,99 euros. Ambas ediciones incluirán también otros extras como tres tarjetas exclusivas con imágenes de las Tierras Intermedias, un parche de tela o un póster del juego. Este aluvión de novedades llega apenas unos días antes de que arranque la fase de pruebas beta cerrada de Elden Ring para poner a prueba sus servidores.','El gameplay de Elden Ring tiene todo lo que necesitas saber del juego: acción, mundo abierto y dragones.','PlayStation5'),(5,5,'../img/spiderman.jpg','Pocas pegas se le pueden poner a Marvel\'s Spider-Man. Como juego de superhéroes, es uno de los mejores de los últimos años, y su producción fue tan eficaz que ya hemos podido disfrutar de un spin-off de Miles Morales (que estrenó PlayStation 5) e incluso se ha confirmado el anuncio de la secuela, que se aleja en el calendario hacia 2023. El ritmo al que Insomniac Games va sacando nuevos juegos resulta envidiable para buena parte de la industria. Multitud de estudios sufren el denominado \'crunch\' en sus desarrollos, etapas en las que sus empleados trabajan más de la cuenta para llegar a la fecha de lanzamiento con un mejor resultado final. Es algo totalmente reprochable y que se ha denunciado en más de una ocasión, por lo que el director ejecutivo de Insomniac ha tratado el tema. En una conferencia celebrada la semana pasada y recogida por GamesIndustry, Ted Price ha asegurado que lograr un buen \"equilibrio entre excelencia y bienestar\" es el objetivo crucial para lograr grandes resultados sin afectar a la salud mental de los trabajadores. Un buen ejemplo lo ha dado con el caso de Spider-Man, sobre el que ha asegurado que se cambió la batalla final para evitar el crunch, que en un principio estaba diseñada para ser más espectacular, recorriendo toda la ciudad. \"Originalmente, íbamos a hacer una batalla final que nos llevaría por toda la ciudad de Nueva York\", comenta. \"La tentación estaba ahí y simplemente podíamos agachar la cabeza y seguir adelante. Pero el equipo dio un paso atrás y pensó en lo que realmente era importante para los jugadores, y eso era la relación entre los personajes\", comenta sobre el enfrentamiento, del que no vamos a dar más detalles ni nombres por si no habéis jugado al título. \"Esta permisibilidad para ser creativos dentro de las restricciones tiene que salir de los líderes, de quienes encabezan el proyecto\", continúa. \"Es increíble verlo cuando funciona, pero requiere una repetición constante porque creo que utilizamos los viejos hábitos por defecto\", sentencia. Actuar así parece que le ha dado resultados a Insomniac, con un título que se ha coronado como uno de los más exitosos de PlayStation. En 3DJuegos pudimos valorarlo en su momento, y Álvaro Castellano lo definió como sobresaliente, un acierto en muchos sentidos.','Marvel\'s Spider-Man podría haber sido diferente: Insomniac cambió el final para evitar el crunch.','Playstation5'),(6,14,'../img/fh.jpg','Forza Horizon 5, el esperadísimo y ambicioso título de conducción de Playground Games, estará disponible para los usuarios de consolas Xbox y ordenadores a partir del 9 de noviembre tras una fuerte campaña de promoción durante estos últimos meses. El videojuego está completamente terminado y, como viene siendo habitual, el usuario de YouTube ElAnalistaDeBits ha realizado una nueva comparativa entre las versiones de Xbox One S, Xbox One X, Xbox Series S, Xbox Series X y PC para que los jugadores puedan escoger la versión que más se adapte a sus necesidades. A grandes rasgos, el estudio ha conseguido un gran trabajo de optimización en todas las plataformas. Antes de pasar a destacar las fortalezas y diferencias entre versiones, cabe destacar que Forza Horizon 5 funciona en Xbox One a 1080p y 30 fps, Xbox One X a 2160p y 30 fps, Xbox Series S 1440p a 30 fps y 1080p a 60 fps y finalmente en Xbox Series X se ejecuta a 2160p a 30 fps y 2160p a 60 fps dependiendo del modo; en PC el juego se ha probado con las opciones gráficas al máximo y haciendo uso de una tarjeta gráfica RTX 3080. En Xbox Series X/S, el modo rendimiento disminuye la calidad de las sombras, reflejos, oclusión ambiental, texturizado y volumen de vegetación en pro de una tasa de fotogramas más estables y fluida. Como cabría esperar, Xbox Series S tiene diferencias de texturizado con respecto a las versiones mayores, aunque en esta versión es menos habitual ver parallax occlusion mapping o terrenos deformables. Las versiones de anterior generación de Xbox One y Xbox One X usan reflejos de una calidad similar a los de Series S en modo rendimiento; curiosamente, One X no tiene modo rendimiento a 60 fps a diferencia de anteriores entregas, aunque el usuario destaca que el rendimiento es estable e impecable en todas las versiones. La versión de One X tiene una cantidad de vegetación similar a la de Series X/S en modo rendimiento, mientras que como cabría esperar la versión de One es la que más recortes ha sufrido en este sentido, además de que tiene menor cantidad de NPC y peor distancia de dibujado si la comparamos con las demás versiones. Por otro lado, Series X en modo calidad muestra un apartado técnico equivalente al de las configuraciones altas en PC. Algo que no nos extraña es que los tiempos de carga son hasta cuatro veces más rápidos en Xbox Series X/S; las versiones de One y One X tienen algunas pantallas de carga adicionales. Finalmente, es importante recalcar que el modo ray tracing para reflejos está únicamente disponible en el modo Forzavista usando el modo calidad en Xbox Series X/S o la versión de PC. De todos modos, ElAnalistaDeBits considera que su uso es anecdótico y que no sustituye a los reflejos SSR.','Comparan Forza Horizon 5 en sus versiones para Xbox One S/X, Xbox Series S/X y PC.','Xbox'),(7,10,'../img/bt.jpg','Hemos entrado en el mes de noviembre, y con él llegan las nuevas entregas de los principales shooters bélicos de la industria. Uno de ellos es Battlefield 2042, al que apenas le quedan un par de semanas para su lanzamiento, aunque podremos acceder con antelación con su versión de prueba anticipada. Y parece que hay ganas del nuevo título de DICE, vistos los datos ofrecidos por Electronic Arts y recogidos por Stephen Totilo, de Axios. La beta de Battlefield 2042 ha reunido a 7,7 millones de jugadores, sumando los usuarios de PC, PlayStation y Xbox. Números llamativos si tenemos en cuenta que su funcionamiento no fue el más sólido, con errores visuales y presencia de hackers. Las cifras son muy convincentes si tenemos en cuenta los pocos días que estuvo disponible la beta, que contó con un acceso anticipado para miembros de EA Play y luego se publicó de forma abierta para todo el público. Eso sí, algunas entregas anteriores como Battlefield 1 reunieron a más usuarios, un total de 13,2 millones. Se como sea, es un buen augurio para Battlefield 2042, que llega a PC, PS4, PS5, Xbox One y Xbox Series X|S el próximo 19 de noviembre. Desde DICE han prometido haber tomado nota de las críticas, e intentarán que el juego esté pulido y cuente con las mejoras esperadas tanto en la anterior generación como en la actual.','Hay ganas de Battlefield 2042: la beta reunió a 7,7 millones de jugadores entre PC, PlayStation y Xbox.','PC'),(8,14,'../img/xboxall.jpg','Xbox All Access ya tiene fecha en la que estará disponible en España, y será dentro de una semana. ¿Buscáis pagar poco a poco una Xbox Series X|S? Pues entonces esto os interesa. Hace poco más de un año se presentó y anunció Xbox All Access, un programa que llegó junto a Xbox One en Estados unidos para financiar una consola junto con dos años de Xbox Game Pass Ultimate. Tras todo este tiempo de incertidumbre, ya que primero se implantó en algunos países y se iban a ir incluyendo muchos otros a lo largo del tiempo, este noviembre aterrizará en España. Gracias a la promoción ya activa en tiendas GAME, pero con lanzamiento pendiente para el 10 de noviembre de 2021; aunque ya podemos ver toda la promoción. Con Xbox All Access podréis conseguir una Xbox Series X (o Series S, el servicio es para ambas) y dos años de Xbox Game Pass Ultimate. Gracias a ello, podréis jugar en consolas, PC, móviles y tablets sin coste adicional, disfrutar del modo multijugador y además contar con una suscripción a EA Play. Además, los juegos de Xbox Studios estarán disponibles el mismo día de su lanzamiento, como será el caso de Forza Horizon 5 en apenas unos días y Halo Infinite en diciembre. La decisión en cuanto a la consola, la decisión final será vuestra. Si os decantáis por Xbox Series X, en GAME se puede fraccionar a un pago de 32,99€ al mes, pagando en total 791,76€ en 24 meses. Por ende, y aunque aún no esté habilitado, el servicio también afecta a Xbox Series S. En su caso, el pago se podrá fraccionar a 22,99€ al mes, con un total de 551,76€. No obstante, el último ejemplo aún se tiene que confirmar, puesto que el precio estaba en dólares y tan sólo se tiene constancia de Xbox All Access en España con Series X.','Xbox All Access llega a España, financia tu Xbox Series X|S junto a 24 meses de Game Pass.','Xbox'),(9,14,'../img/seriex.jpg','Alrededor de una año ha pasado desde que Xbox Series X y su hermana menor, Xbox Series S salieron al mercado, a un tormentoso mercado caracterizado por el desabastecimiento de chips y pocas unidades de fabricación debido a la pandemia que ha vivido el mundo. No obstante, parece que se acercan buenas noticias para los jugadores que aún no tienen su consola, ya que uno de los analistas a escuchado que el stock de Xbox Series X mejorará a tiempo para estas navidades. Tal como detalla el director de GamesIndustry Christopher Dring, se han escuchado desde muy buenas fuentes que el stock de la preciada consola de Microsoft aumentará justo para fin de año, una época crucial para el mercado de las consolas. Cabe destacar que, en todo este tiempo, la falta de stock se ha hecho presente la mayor parte, quedando un buen número de jugadores aún ocupando un lugar en una larga fila de espera.','El stock de Xbox Series X mejorará a tiempo para estas navidades.','Xbox'),(10,7,'../img/nin.jpg','Nintendo publica su nuevo informe financiero y refleja unas ventas de más de 3,83 millones de consolas durante el segundo trimestre del ejercicio fiscal 2021. Nintendo Switch ha superado los 92,87 millones de unidades vendidas en todo el mundo. Nintendo Co., Ltd. ha revelado durante la presentación de resultados financieros correspondientes al segundo trimestre del presente ejercicio fiscal (Q2/FY2021), que finaliza el 30 de septiembre de 2021, unas cifras que mantienen la proyección estimada por la compañía a comienzos de curso y que sitúan a la plataforma de los Joy-Con a menos de 10 millones de superar a Wii (101,63 millones de unidades). El informe, que todavía no computa el rendimiento inicial del nuevo modelo de la familia, Nintendo Switch OLED, evidencia unas ventas por encima de los 3,83 millones de consolas en el periodo comprendido entre el 1 de julio y el 30 de septiembre. El pasado año 2020 se distribuyeron 6,85 millones de unidades de la familia híbrida durante este periodo, aún impulsada por el momentum de Animal Crossing: New Horizons. Con estos datos, Nintendo Switch suma ya 8,28 millones de unidades vendidas en el presente ejercicio fiscal (4,45 + 3,83 de los dos trimestres) y se mantiene en la estela de lo previsto por el grupo liderado por Shuntaru Furukawa para este curso; aunque reduce su previsión de distribución de 25,5 millones a 24 millones. Nikkei ya señalaba a comienzos de la semana una corrección del 20% como consecuencia de la crisis de semiconductores. En caso de cumplirse el nuevo pronóstico, la consola superará los 110 millones de unidades vendidas al término del próximo mes de marzo de 2022 y habrá dejado atrás el récord de Wii. La firma japonesa ha declarado ante sus accionistas una caída del 18,9% en ingresos respecto al inusual año previo, marcado por unos ingresos digitales disparados como consecuencia de la pandemia. Los beneficios operativos también caen, en concreto en un 14,1%. Nintendo cierra así este primer semestre con unos ingresos por valor de 4.718 millones de euros; los beneficios, por su parte, se quedan en unos 2.858 millones de euros en positivo. ','Nintendo Switch se acerca a Wii: alcanza 92,87 millones de consolas vendidas.','Nintendo'),(17,10,'../img/seriex.jpg','asasasqwscswev3ervr3v','wqeqwfvwcq','PC'),(18,10,'../img/seriex.jpg','aaaaa','eeeeeeee','PC'),(19,10,'../img/','DFSDFSDFSDFSDFSDFSFD','aaaaaaaaa','PC');
/*!40000 ALTER TABLE `noticias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plataforma`
--

DROP TABLE IF EXISTS `plataforma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plataforma` (
  `idPlataforma` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) NOT NULL,
  `Imagen` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idPlataforma`),
  UNIQUE KEY `Nombre_UNIQUE` (`Nombre`),
  UNIQUE KEY `idPlataforma_UNIQUE` (`idPlataforma`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plataforma`
--

LOCK TABLES `plataforma` WRITE;
/*!40000 ALTER TABLE `plataforma` DISABLE KEYS */;
INSERT INTO `plataforma` VALUES (5,'Playstation','../img/play.png'),(7,'Nintendo ','../img/nintendo.jfif'),(10,'PC','../img/pc.jpg'),(14,'Xbox ','../img/xbox.jpg');
/*!40000 ALTER TABLE `plataforma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `idUsuario` int NOT NULL AUTO_INCREMENT,
  `Usuario` varchar(20) NOT NULL COMMENT 'El usuario debe ser único en la Base de Datos. Además debe tener una longitud mínima de 6 caracteres.',
  `Password` varchar(45) NOT NULL COMMENT 'La contraseña no puede ser nula.\nTiene que tener una longitud mínima de 8 caracteres, contener números y algún carácter especial de la siguiente lista (!,@,#,$,%,&,?,¿,*,€)',
  `Nombre` varchar(45) NOT NULL,
  `Apellido1` varchar(45) NOT NULL,
  `Apellido2` varchar(45) NOT NULL,
  `Telefono` varchar(10) NOT NULL COMMENT 'Se comprobará que solo puedan ser teléfonos nacionales',
  `Email` varchar(45) NOT NULL COMMENT 'Se comprobará que es un email válido',
  `CP` varchar(5) NOT NULL,
  `Provincia` varchar(45) NOT NULL COMMENT 'Se comprobará que la provincia introducida concuerda con el CP introducido',
  `ComunidadAutonoma` varchar(45) NOT NULL COMMENT 'Se comprobará que la provincia seleccionada pertenece a la comunidad autónoma correspondiente',
  `Direccion` varchar(45) NOT NULL,
  `Rol` varchar(45) NOT NULL,
  PRIMARY KEY (`idUsuario`),
  UNIQUE KEY `idUsuario_UNIQUE` (`idUsuario`),
  UNIQUE KEY `Usuario_UNIQUE` (`Usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (12,'ainhoa2','putino123456','ainhoa','asas','zapata','589667851','ainhoaperez3011@gmail.com','52006','Melilla','Melilla','','admin'),(48,'enrique','asa','asa','asa','asa','630225468','ainhoaperez@gmail.com','52006','Melilla','Melilla','','usuario'),(49,'javier','quique','javier','carmona','ruiz','666999777','alumno@gmail.com','52003','Melilla','Melilla','','usuario'),(50,'ainhoa','ainhoa','ainhoaper','perez','zapata','693000478','ainhoaperez@live.com','52660','Melilla','Melilla','','admin'),(51,'yolanda23','quique','yolanda','perez','perez','697555410','alumno@gmail.com','52009','Madrid','Madrid','','admin'),(52,'Antonio123','quique','Antonio','perez','ruiz','987562145','alumno@gmail.com','52660','Barcelona','Barcelona','','usuario'),(53,'qqq','que','queque','asfewv','rebrberb','630776293','ainhoqui0617@gmail.com','52006','Provincia','Melilla','','usuario'),(54,'','','','33','','','','','','','','usuario');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-08 22:57:31
