<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PELICULAS</title>

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
	<h1>Tabla peliculas</h1>

	<br>
	<br>

	<table>
		<tbody>
			<tr>
				<th>DIRECTOR</th>
				<th>TITULO</th>
				<th>FECHA</th>

			</tr>

			<c:forEach var="pelicula" items="${lista}">
				<tr>
					<td><c:out value="${pelicula.getsDirector()}" /></td>
					<td><c:out value="${pelicula.getsTitulo()}" /></td>
					<td><c:out value="${pelicula.getdFecha()}" /></td>

				</tr>
			</c:forEach>
		</tbody>
	</table>
	<form action="ServletController" method="post">

		<table>
			<tbody>
				<tr>
					<td>¿Reralizar otra consulta?</td>
					<td><button type="submit" name="opcion" value="otraConsulta"
							title="Pulsa aqui para realizar otra consulta">Si</button></td>

				</tr>
				<tr>
					<td>¿Finalizar consultas?</td>
					<td><button type="submit" name="opcion"
							value="historialDirectores"
							title="Pulsa aqui para finalizar consultas y mostrar el historial de directores consultados">Finalizar</button></td>

				</tr>

			</tbody>
		</table>
	</form>
</body>
</html>