package controlador.database;

import controlador.modelos.DirectorController;

public class GeneralController  {

	private ConexionDB conexionDB;
	private DirectorController directorController;

	public GeneralController(String sDatabase) {

		this.conexionDB = new ConexionDB(sDatabase);
		this.directorController = new DirectorController();

	}

	
	public ConexionDB getConexionDB() {
		return this.conexionDB;
	}

	
	
	public DirectorController getDirectorController() {
		return this.directorController;
	}

}
