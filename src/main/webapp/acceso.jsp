<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ACCESO OK</title>
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

h2 {
	text-align: center;
}
</style>
</head>
<body style="background-color: #D0F2E0;">
	<br>
	<br>
	<h1 style="color: green;">ACCESO SATISFACTORIO: ${nick}</h1>
	<br>
	<br>

	<form action="ServletController" method="post">
		<table>
			<tbody>


				<tr>
					<td>Volver</td>
					<td><button type="submit" name="opcion" value="login"
							title="Pulse 'Volver' para volver atras">Volver</button></td>

				</tr>
				<tr>
					<td>Mantenimiento de peliculas</td>
					<td><button type="submit" name="opcion" value="mantenimiento">Mantenimiento</button></td>

				</tr>
			</tbody>
		</table>
	</form>

</body>
</html>