package modelo;

import java.util.Date;

public class Pelicula implements ILimitDB {

	private String sDirector;
	private String sTitulo;
	private Date dFecha;

	public Pelicula(String sDirector, String sTitulo, Date dFecha) {

		setsDirector(sDirector);
		setsTitulo(sTitulo);
		setdFecha(dFecha);
	}

	public Pelicula(String sDirector) {
		setsDirector(sDirector);
	}

	public String getsDirector() {
		return this.sDirector;
	}

	public void setsDirector(String sDirector) {

		if (sDirector != null && sDirector.length() > MIN_STRING_BD && sDirector.length() <= MAX_STRING_BD) {
			this.sDirector = sDirector;

		}
	}

	public String getsTitulo() {
		return this.sTitulo;
	}

	public void setsTitulo(String sTitulo) {

		if (sTitulo != null && sTitulo.length() > MIN_STRING_BD && sTitulo.length() <= MAX_STRING_BD) {
			this.sTitulo = sTitulo;
		}
	}

	public Date getdFecha() {
		return this.dFecha;
	}

	public void setdFecha(Date dFecha) {
		if (dFecha != null) {
			this.dFecha = dFecha;

		}
	}
}
