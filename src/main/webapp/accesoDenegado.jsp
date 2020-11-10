<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ACCESO DENEGADO</title>
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
	<form action="ServletController" method="post">
		<table>
			<tbody>


				<tr>
					<td>Volver</td>
					<td><button type="submit" name="opcion" value="login"
							title="Pulse 'Volver' para volver al formulario anterior">Volver</button></td>

				</tr>

			</tbody>
		</table>
	</form>

</body>
</html>