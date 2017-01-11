<!--
Se realiza la conexion a la bbdd todos los pasos serán guardados en una variable, 

1. Proporcionamos todas las variables y conectamos con el servidor, 
1.1 localhost, user y password.
1.2 utilizamos la sentencia, mysqli_connect(localhost, user,password). 
1.3 Se guarda en variable para utilizarlo en futuro. 

2. Seleccionamos la BBDD con la que queremos conectar,
2.1 Sentencia mysqli_select_db(conexiónPAso1,nombreBBDD).

3. Seleccionamos la tabla que queremos obtener de esa base de datos, 
3.1 SELECT * FROM. Se guarda en variable para acceso/insertar elementos en tabla.  

4. hacemos una solicitud o query a nuestra tabla, 
4.1 mysqli_query(conexionPaso1, tablaSeleccionadaPAso3)

5. obtenemos los valores que nos ha proporcionado el usuario con sentencia, 
5.1 $_POST[nameDeInput]

-->

<?php

$localhost= "localhost";
$user = "root";
$password = "";

// conexion con el servidor
$conexion = mysqli_connect($localhost,$user,$password);

 if(mysqli_connect_errno()){

	echo "No pude realizar la conexión con el servidor";
 	exit();
 }

// conecto con BBDD
mysqli_select_db($conexion, "pruebas") or die("no se pudo conectar con BBDD");

// seleccion la tabla
$accesoTabla = "SELECT * FROM usuarios";

// realizo una consulta o query a la BBDD
//$solicitudBBDD = mysqli_query($conexion,$accesoTabla);

?>