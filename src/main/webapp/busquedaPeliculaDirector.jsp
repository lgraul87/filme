<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
	background-color: #DFCFF5;
}

h1 {
	text-align: center;
}
</style>
</head>
<body style="background-color: #D0F2E0;">
	<h1>PELICULAS DIRECTOR</h1>
	<br>

	<form action="ServletController?eleccion=buscaDirector" method="post">
		<table border="1" style="margin: 0 auto;">
			<tr>
				<th>Buscar director</th>

				<th>Campo</th>
			</tr>

			<tr>

				<td><label for="nombre">Buscar por nombre:</label></td>

				<td><input type="text" id="nombre" name="nombre"
					placeholder="Nombre:"
					title="Introduzca aqui el nombre del director si quiere encontrar las coincidencias respecto a los nombres de los empleados"></input>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>