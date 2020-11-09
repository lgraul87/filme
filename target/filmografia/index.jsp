<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Pagina principal</title>
</head>
<body>

	<form action="ServletController" method="post">
		<table>
			<tr>
				<th>DESCRIPCION</th>
				<th>BOTON</th>


			</tr>
			<tr>
				<td>INFO</td>
				<td><a href="info.jsp"> <input type="button"></a></td>

			</tr>
			<tr>
				<td>CONSULTAR DIRECTORES</td>
				<td><input type="button" name="opcion" value="consultarDirectorPelicula"></td>

			</tr>
		</table>
	</form>
</body>
</html>