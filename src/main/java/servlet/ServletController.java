package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.Pelicula;
import modelo.Usuario;
import vista.principal.MuestraPeliculas;
// import vista.principal.PeliculaView;

/**
 * Servlet implementation class ServletController
 */
public class ServletController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ServletController() {
		super();
		//
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("Conexion");

		String sOpcion = request.getParameter("opcion");

		switch (sOpcion) {
		case "consultarDirectorPelicula":

			request.setAttribute("ir", "formularioNombreDirector.jsp");
			break;

		case "buscaPeliculas":

			String sNombreDirector = request.getParameter("nombre");

			Pelicula oPelicula = new Pelicula(sNombreDirector);

			List<Pelicula> lLista = null;

			lLista = MuestraPeliculas.controlGeneral.getPeliculaController().devuelveListaPeliculas(oPelicula);
			if (lLista.size() > 0) {
				System.out.println("bien");
				request.setAttribute("lista", lLista);
				request.setAttribute("ir", "peliculas.jsp");
			} else {
				System.out.println("mal");
				String sCausa = "No existe ese director";
				request.setAttribute("causa", sCausa);
				request.setAttribute("ir", "error.jsp");

			}

			break;

		case "otraConsulta":
			request.setAttribute("ir", "formularioNombreDirector.jsp");
			break;

		case "historialDirectores":

			List<Pelicula> lHistorial = MuestraPeliculas.controlGeneral.getPeliculaController().devuelveHistorial();

			request.setAttribute("historial", lHistorial);
			request.setAttribute("ir", "historial.jsp");

			break;

		case "inicio":

			request.setAttribute("ir", "index.jsp");
			break;

		case "login":
			request.setAttribute("ir", "login.jsp");

			break;
		case "cuenta":

			String sNick = request.getParameter("nick");
			String sPassword = request.getParameter("password");

			Usuario oUsuario = new Usuario(sNick, sPassword);

			Usuario oUsuarioEncontrado = MuestraPeliculas.controlGeneral.getUsuarioController().login(oUsuario);

			if (oUsuarioEncontrado != null) {

				String sNickLogin = oUsuarioEncontrado.getsNick();
				request.setAttribute("nick", sNickLogin);
				request.setAttribute("ir", "acceso.jsp");

			} else {

				String sCausa = "Usuario no registrado";
				request.setAttribute("causa", sCausa);
				request.setAttribute("ir", "accesoDenegado.jsp");

			}
			break;

		case "mantenimiento":

			request.setAttribute("ir", "mantenimiento.jsp");
			break;

		// NO ME DA TIEMPO

		/*
		 * case "aniadirPelicula":
		 * 
		 * Pelicula oPeliculaNueva = null; oPeliculaNueva =
		 * PeliculaView.aniadirPelicula();
		 * 
		 * MuestraPeliculas.controlGeneral.getPeliculaController().add(oPeliculaNueva);
		 * 
		 * break;
		 */
		}

		RequestDispatcher requestDispatcher = request.getRequestDispatcher("ServletDireccionador");
		requestDispatcher.forward(request, response);
	}

}
