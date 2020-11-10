<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LOGIN</title>
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
	<h1>LOGIN</h1>
	<br>

	<form action="ServletController?opcion=cuenta" method="post">
		<table border="1" style="margin: 0 auto;">
			<tr>
				<th>USUARIO (NICK)</th>

				<th>PASSWORD</th>
			</tr>

			<tr>

				<td><label for="nick">NICK (USUARIO):</label></td>

				<td><input type="text" name="nick"
					placeholder="Nick (Usuario): "
					title="Introduzca aqui el nick de usuario para acceder a la gestion de la app"></input>
				</td>
			</tr>
			<tr>

				<td><label for="password">PASSWORD (USUARIO):</label></td>

				<td><input type="password" name="password"
					placeholder="Nick (Usuario): "
					title="Introduzca aqui el password de usuario para acceder a la gestion de la app"></input>
				</td>
			</tr>
			<tr>
				<td>Pulsa "Enviar" para confirmar</td>

				<td><button type="submit" title="Pulsa para confirmar">Enviar
					</button></td>
			</tr>

		</table>
	</form>
	<!--  Incluyo esto para mejorar navegacion de la app -->
	<form action="ServletController" method="post">
		<table>
			<tr>
				<td>Pulsa volver para volver a la bandeja principal</td>
				<td>
					<button type="submit" name="opcion" value="inicio"
						title="Pulsa volver para volver a la bandeja principal">Volver</button>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>