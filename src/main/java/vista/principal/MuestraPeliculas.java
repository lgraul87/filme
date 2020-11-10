package vista.principal;

import controlador.database.GeneralController;

public class MuestraPeliculas {

	public static GeneralController controlGeneral = new GeneralController("cine");

	public static void main(String[] args) {

		System.out.println("Conectando driver");
	}

}
