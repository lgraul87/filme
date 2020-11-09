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
	background-color: #DFCFF5;
}

h1 {
	text-align: center;
}
</style>
</head>
<body style="background-color: #D0F2E0;">

	<form action="ServletController" method="post">
		<table>
			<tr>
				<th>DESCRIPCION</th>
				<th>BOTON</th>


			</tr>
			<tr>
				<td>INFO</td>
				<td><a href="info.jsp"> <input type="button" value="ir"></a></td>

			</tr>
			<tr>
				<td>CONSULTAR DIRECTORES</td>
				<td><input type="submit" name="opcion"
					value="consultarDirectorPelicula"></td>

			</tr>
		</table>
	</form>
</body>
</html>