<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Historial directores consultados</title>
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
	<h1>Historial de directores consultados</h1>

	<table>
		<tbody>
			<tr>
				<th>DIRECTOR</th>
				<th>FECHA</th>

			</tr>

			<c:forEach var="pelicula" items="${historial}">
				<tr>
					<td><c:out value="${pelicula.getsDirector()}" /></td>
					<td><c:out value="${pelicula.getdFecha()}" /></td>

				</tr>
			</c:forEach>
		</tbody>
	</table>
	<form action="ServletController" method="post">

		<table>
			<tbody>


				<tr>
					<td>Volver al formulario inicial y realizar nuevas consultas</td>
					<td><button type="submit" name="opcion" value="otraConsulta"
							title="Pulse 'Ir a consultas' para volver al formulario inicial de consultas">Ir
							a consultas</button></td>

				</tr>
				<tr>
					<td>Inicio</td>
					<td><button type="submit" name="opcion" value="inicio"
							title="Pulse Inicio para volver a la bandeja principal">Inicio</button></td>

				</tr>
			</tbody>
		</table>
	</form>

</body>
</html>