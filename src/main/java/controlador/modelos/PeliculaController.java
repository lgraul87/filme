package controlador.modelos;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import controlador.database.ConexionDB;
import modelo.Pelicula;

public class PeliculaController {

	public List<Pelicula> devuelveListaPeliculas(Pelicula oPelicula) {

		String sNombreDirector = oPelicula.getsDirector();

		String sUpDateHistorial = "INSERT INTO HISTORIAL (director) VALUES ('" + sNombreDirector + "')";

		ConexionDB.executeUpdate(sUpDateHistorial);

		List<Pelicula> lLista = null;

		String sQuery = " SELECT * FROM PELICULA WHERE DIRECTOR = '" + sNombreDirector + "';";

		try {
			lLista = new ArrayList<Pelicula>();
			Statement statement = ConexionDB.getConnection().createStatement();
			ResultSet resultSet = statement.executeQuery(sQuery);
			while (resultSet.next()) {

				String sDirector = resultSet.getString("director");
				String sTitulo = resultSet.getString("titulo");
				Date dFecha = resultSet.getDate("fecha");

				Pelicula oPeliculaEncontrada = new Pelicula(sDirector, sTitulo, dFecha);

				lLista.add(oPeliculaEncontrada);
			}
			statement.close();
			resultSet.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return lLista;
	}

	public List<Pelicula> devuelveHistorial() {

		List<Pelicula> lHistorial = null;
		String sQuery = " SELECT * FROM HISTORIAL ;";

		try {
			lHistorial = new ArrayList<Pelicula>();
			Statement statement = ConexionDB.getConnection().createStatement();
			ResultSet resultSet = statement.executeQuery(sQuery);
			while (resultSet.next()) {

				String sDirector = resultSet.getString("director");
				Date dFecha = resultSet.getDate("fecha");

				Pelicula oPeliculaEncontrada = new Pelicula(sDirector, "DEFAULT", dFecha);

				lHistorial.add(oPeliculaEncontrada);
			}
			statement.close();
			resultSet.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return lHistorial;
	}

}
