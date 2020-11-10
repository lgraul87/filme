<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Pagina principal</title>
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
	<h1>Inicio</h1>
	<h2>Bienvenido a la app *··CINE··*</h2>
	<form action="ServletController" method="post">
		<table>
			<tr>
				<th>DESCRIPCION</th>
				<th>BOTON</th>


			</tr>
			<tr>
				<td>INFO</td>
				<td><a href="info.jsp"> <input type="button" value="ir"
						title="Pulsa para ver la info"></a></td>

			</tr>
			<tr>
				<td>CONSULTAR PELICULAS INTRODUCIENDO DIRECTORES</td>
				<td><button type="submit" name="opcion"
						value="consultarDirectorPelicula"
						title="Pulsa para mostrar peliculas relacionadas con el nombre del director">CONSULTAR</button></td>

			</tr>
			<tr>
				<td>LOGIN</td>
				<td><button type="submit" name="opcion"
						value="login"
						title="Pulsa para entrar a la gestion de la app">LOGIN</button></td>

			</tr>
		</table>
	</form>
</body>
</html>