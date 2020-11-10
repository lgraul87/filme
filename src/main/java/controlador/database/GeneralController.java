package controlador.database;

import controlador.modelos.PeliculaController;
import controlador.modelos.UsuarioController;

public class GeneralController {

	private ConexionDB conexionDB;
	private PeliculaController peliculaController;
	private UsuarioController usuarioController;

	public GeneralController(String sDatabase) {

		this.conexionDB = new ConexionDB(sDatabase);
		this.peliculaController = new PeliculaController();
		this.usuarioController = new UsuarioController();
	}

	public ConexionDB getConexionDB() {
		return this.conexionDB;
	}

	public PeliculaController getPeliculaController() {
		return this.peliculaController;
	}

	public UsuarioController getUsuarioController() {
		return this.usuarioController;
	}

}
