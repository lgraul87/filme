<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color: #D0F2E0;">

	<form action="ServletController" method="post">

		<table>
			<tbody>


				<tr>
					<td>Aniadir Pelicula</td>
					<td><button type="submit" name="opcion" value="aniadirPelicula"
							title="Pulse 'Aniadir Pelicula' para aniadir una pelicula">Aniadir
							Pelicula a consultas</button></td>

				</tr>
				<tr>
					<td>Borrar Pelicula</td>
					<td><button type="submit" name="opcion" value="borrarPelicula"
							title="Pulse 'Borrar Pelicula' para borrar una pelicula">Borrar
							Pelicula</button></td>

				</tr>
				<tr>
					<td>Editar Pelicula</td>
					<td><button type="submit" name="opcion" value="editarPelicula"
							title="Pulse 'Editar Pelicula' para editar una pelicula">Editar
							Pelicula</button></td>

				</tr>
				<tr>
					<td>Aniadir Usuario</td>
					<td><button type="submit" name="opcion" value="aniadirUsuario"
							title="Pulse 'Aniadir Usuario' para aniadir un usuario">Aniadir
							usuario</button></td>

				</tr>
				<tr>
					<td>Borrar Usuario</td>
					<td><button type="submit" name="opcion" value="borrarUsuario"
							title="Pulse 'Aniadir Usuario' para aniadir un usuario">Borrar
							usuario</button></td>

				</tr>
				<tr>
					<td>Editar Usuario</td>
					<td><button type="submit" name="opcion" value="editarUsuario"
							title="Pulse 'Aniadir Usuario' para aniadir un usuario">Editar
							usuario</button></td>

				</tr>
				<tr>
					<td>Ir a Bandeja de entrada</td>
					<td><button type="submit" name="opcion" value="inicio"
							title="Pulse 'Ir a Bandeja de entrada' para ir a la bandeja de entrada">Ir
							a Bandeja de entrada</button></td>

				</tr>
			</tbody>
		</table>
	</form>
</body>
</html>