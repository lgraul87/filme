package controlador.modelos;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import controlador.database.ConexionDB;
import modelo.Usuario;

public class UsuarioController {

	public Usuario login(Usuario oUsuario) {

		Usuario oUsuarioEncontrado = null;

		String sNick = oUsuario.getsNick();
		String sPassword = oUsuario.getsPassword();

		String sQuery = "SELECT * FROM USUARIO WHERE NICK = '" + sNick + "' AND PASSWORD = '" + sPassword + "';";

		try {
			Statement statement = ConexionDB.getConnection().createStatement();

			ResultSet resultSet = statement.executeQuery(sQuery);

			while (resultSet.next()) {

				String sNickBD = resultSet.getString("nick");
				String sPasswordBD = resultSet.getNString("password");

				oUsuarioEncontrado = new Usuario(sNickBD, sPasswordBD);

			}
			statement.close();
			resultSet.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return oUsuarioEncontrado;
	}

}
