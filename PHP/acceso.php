<?php

// compruebo que botonAcceso tiene elementos 
if(isset($_POST["botonAcceso"])){

// compruebo que no van los campos vacios, aunque desde mi punto de vista aquí es donde se debe comprobar con la bbdd
	if($_POST["nombre"] ==""){
		echo "Por favor introduzca nombre correcto";
		}else if ($_POST["contrasenia"] ==""){
		echo "Por favor introduzca e.mail";
	}else {

		// cargo los valores en variables, 
		// y también cargo e.mail donde quiero enviarlo en otra variable. 
		$nombre= $_POST["nombre"];
		$pass = $_POST["contrasenia"];
		$miEmail = "angelma83@gmail.com";
		$asunto = "E.amil de confirmación";
	
	// Accedo a las cabeceras
	// uso el .= para concatenarlo. 
		$cabecera= "Mensaje enviado por: $nombre\n\r";
		$cabecera .= "X-Mailer: PHP/" . phpversion() . " \r\n"; 
        $cabecera .= 'MIME-Version: 1.0' . "\n"; 
        $cabecera .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n"; //

			// el mail que me mando a mi mismo con 
			if(mail($miEmail, $asunto, $cabecera)){
				echo "El e.mail se ha mandado correctamente";
				// reseteo los valores para que no puedan mezclarse con el acceo de otra persona. 
				$_POST["nombre"]="";
				$_POST["contrasenia"]="";

			}else{
				echo "No se ha mandar el e.mail";
			}


			}
	}else{
		echo "Por favor introduzca datos";
}
?>