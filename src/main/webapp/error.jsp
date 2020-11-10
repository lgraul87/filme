<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ERROR PAGE</title>
<style type="text/css">
table {
	align-content: center;
	text-align: center;
	margin: 0 auto;
	border: 1px;
	width: 60%;
}

th {
	background-color: black;
	color: white;
}

td {
	text-align: left;
	background-color: #DFCFF5;
	color: black;
}

h1 {
	text-align: center;
}
</style>
</head>
<body style="background-color: #D0F2E0;">
	<br>
	<br>
	<h1>"${causa}"</h1>
	<br>
	<br>
	<h1>REANUDAR FORMULARIO DE CONSULTA</h1>
	<br>

	<form action="ServletController?opcion=buscaPeliculas" method="post">
		<table border="1" style="margin: 0 auto;">
			<tr>
				<th>Buscar director</th>

				<th>Campo</th>
			</tr>

			<tr>

				<td><label for="nombre">Buscar por nombre (Director):</label></td>

				<td><input type="text" name="nombre"
					placeholder="Nombre del director: "
					title="Introduzca aqui el nombre del director si quiere encontrar las coincidencias respecto a los nombres de los actores"></input>
				</td>
			</tr>
			<tr>
				<td>Pulsa "Enviar consulta" para confirmar</td>

				<td><button type="submit" title="Pulsa para confirmar">Enviar
						consulta</button></td>
			</tr>

		</table>
	</form>
	
	<!--  Incluyo esto para mejorar navegacion de la app -->
	<form action="ServletController" method="post">
		<table>
			<tr>
				<td>Pulsa inicio para volver a la bandeja principal</td>
				<td>
					<button type="submit" name="opcion" value="inicio"
						title="Pulsa inicio para volver a la bandeja principal">Inicio</button>
				</td>
			</tr>
		</table>
	</form>

</body>
</html>