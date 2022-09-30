package iTonomise.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import iTonomise.dao.*;
import iTonomise.modelo.*;


@WebServlet("/controller")
public class Controller extends HttpServlet{
	
	private static final long serialVersionUID = 1L;
	
	public Controller() {
		super();
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		
		request.setCharacterEncoding("UTF-8");
		String action = request.getParameter("action");

		if (action == null)
			action = "index";
		
		try {
			if (action.equals("index")) {
				index(request, response);
			} else if (action.equals("login")) { 
				login(request, response);
			} else if (action.equals("sobreN")) { 
				sobreN(request, response);
			} else if (action.equals("pagCadAuto")) { 
				pagCadAuto(request, response);
			} else if (action.equals("pagCadComum")) { 
				pagCadComum(request, response);
			} else if (action.equals("pagCadCont")) { 
				pagCadCont(request, response);
			} else if (action.equals("guiaAuto")) { 
				guiaAuto(request, response);
			} else if (action.equals("guiaComum")) { 
				guiaComum(request, response);
			} else if (action.equals("cadastrarAutonomo")) { 
				cadastrarAutonomo(request, response);
			} else if (action.equals("cadastrarComum")) { 
				cadastrarComum(request, response);
			} else if (action.equals("cadastrarContrato")) { 
				cadastrarContrato(request, response);
			} else if (action.equals("confirmarLogin")) { 
				confirmarLogin(request, response);
			} else if (action.equals("home")) { 
				home(request, response);
			} else if (action.equals("verContratos")) { 
				verContratos(request, response);
			} else if (action.equals("verAutonomos")) { 
				verAutonomos(request, response);
			}
			//else {				
				//RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/front/vendedor/erroVendedor.jsp"); 
				//rd.forward(request, response);
			//}
			
		} catch (ServletException | IOException | DAOException e) {
			e.printStackTrace();
		}		
	} 
	
	//Index
	private void index(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/front/main/index.jsp");
		rd.forward(request, response);
	}
	
	//Sobre Nós
	private void sobreN(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/front/main/sobreNos.jsp");
		rd.forward(request, response);
	}
	
	//Login
	private void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		String usuario = (String) session.getAttribute("usuario");
		if(usuario == null) {
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/front/main/login.jsp");
			rd.forward(request, response);
		}
		else {
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/front/main/home/homepage.jsp");
			rd.forward(request, response);
		}
	}
	
	//Logout
	private void logout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		session.invalidate();
		index(request,response);
	}
	
	//Pagina Cadastro Autonomo
	private void pagCadAuto(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/front/autonomo/cadastroAutonomo.jsp");
		rd.forward(request, response);
	}
		
	//Pagina Cadastro Comum
	private void pagCadComum(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/front/comum/cadastroComum.jsp");
		rd.forward(request, response);
	}	
	
	//Pagina Cadastro Contrato
	private void pagCadCont(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/front/contrato/cadastroContrato.jsp");
		rd.forward(request, response);
	}
	
	//Pagina Guia do Autonomo
	private void guiaAuto(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/front/autonomo/guiaAutonomo.jsp");
		rd.forward(request, response);
	}
	
	//Pagina Guia do Comum
	private void guiaComum(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/front/comum/guiaComum.jsp");
		rd.forward(request, response);
	}
	
	//Cadastrar autonomo
	private void cadastrarAutonomo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, DAOException {
		
		String nome = request.getParameter("nome");
		String sobrenome = request.getParameter("sobrenome");
		String cpf = request.getParameter("cpf");
		String tel = request.getParameter("tel");
		String user = request.getParameter("user");
		String senha = request.getParameter("senha");
		String email = request.getParameter("email");
		String desc = request.getParameter("desc");
		String tags = request.getParameter("tags");
		String endereco = request.getParameter("endereco");
		int aval = 0;
		int idAutonomo = 0;
		
		Autonomo novoAutonomo = new Autonomo(nome, sobrenome, cpf, tel, user, senha, email, desc, tags, endereco, aval, idAutonomo);
		
		DAOAutonomo dao = new DAOAutonomoImpl();
		dao.cadastrar(novoAutonomo);
		request.setAttribute("autonomo", novoAutonomo);

		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/front/main/index.jsp");
		rd.forward(request, response);
	}
	
	//Cadastrar comum
	private void cadastrarComum(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, DAOException {		
		
		String nome = request.getParameter("nome");
		String sobrenome = request.getParameter("sobrenome");
		String cpf = request.getParameter("cpf");
		String tel = request.getParameter("tel");
		String user = request.getParameter("user");
		String senha = request.getParameter("senha");
		String email = request.getParameter("email");
		String endereco = request.getParameter("endereco");
		int idUsuario = 0;
		
		Usuario novoUsuario = new Usuario(nome, sobrenome, cpf, tel, user, senha, email, endereco, idUsuario);
		
		DAOUsuario dao = new DAOUsuarioImpl();
		dao.cadastrar(novoUsuario);
		request.setAttribute("autonomo", novoUsuario);

		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/front/main/index.jsp");
		rd.forward(request, response);
	}
	
	//Cadastrar contrato
	private void cadastrarContrato(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, DAOException {		
		
		String titulo = request.getParameter("titulo");
		String valor = request.getParameter("valor");
		String descricao = request.getParameter("descricao");
		String status = null;
		int idCont = 0;	
		String idAutonomo = null;	
		String idUsuario = null;	
		
		HttpSession session = request.getSession(true);	
		if(session.getAttribute("usuario").equals("comum")) {
			idUsuario = String.valueOf(session.getAttribute("id"));	
		} else{
			idAutonomo = String.valueOf(session.getAttribute("id"));
		}
		
		Contrato novoContrato = new Contrato(titulo, valor, descricao, status, idCont, idAutonomo, idUsuario);
		
		DAOContrato dao = new DAOContratoImpl();
		dao.cadastrar(novoContrato);
		request.setAttribute("autonomo", novoContrato);

		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/front/main/home/homepage.jsp");
		rd.forward(request, response);
	}
	
	//Confirmar login
	private void confirmarLogin(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, DAOException{
		HttpSession session = request.getSession(true);	
		if(request.getParameter("souAut") == null){
			DAOUsuario dao = new DAOUsuarioImpl();
			List<Usuario> usuarios = dao.todosUsuarios();
			//HttpSession session = request.getSession(true);			
			for(int i = 0; i < usuarios.size(); i++)
			{
				if((usuarios.get(i).getSenha()).equals(request.getParameter("senha")) && (usuarios.get(i).getUser()).equals(request.getParameter("usuario"))) {
					session.setAttribute("usuario", "comum");	
					session.setAttribute("id", usuarios.get(i).getIdUsuario());
					home(request,response);
				}
			}			
			String msgErro = "Senha e/ou usuario incorretos!";
			session.setAttribute("msgErro", msgErro);
			((HttpServletResponse) response).sendRedirect("controller?action=login");
			
		} else if(request.getParameter("souAut").equals("on")) {	
			DAOAutonomo dao = new DAOAutonomoImpl();
			List<Autonomo> autonomos = dao.todosAutonomos();
			//HttpSession session = request.getSession(true);			
			for(int i = 0; i < autonomos.size(); i++)
			{
				if((autonomos.get(i).getSenha()).equals(request.getParameter("senha")) && (autonomos.get(i).getUser()).equals(request.getParameter("usuario"))) {
					session.setAttribute("usuario", "autonomo");	
					session.setAttribute("id", autonomos.get(i).getIdAutonomo());
					home(request,response);
				}
			}			
			String msgErro = "Senha e/ou usuario incorretos!";
			session.setAttribute("msgErro", msgErro);
			((HttpServletResponse) response).sendRedirect("controller?action=login");
			
		} 		
	}
	
	//Home page
	private void home(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/front/main/home/homepage.jsp");
		rd.forward(request, response);
	}
	
	
	private void verContratos(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, DAOException{
		
		DAOContrato dao = new DAOContratoImpl();
		List<Contrato> contratos = dao.todosContratos();

		request.setAttribute("contratos", contratos);
		
		DAOAutonomo dao2 = new DAOAutonomoImpl();
		List<Autonomo> autonomos = dao2.todosAutonomos();

		request.setAttribute("autonomos", autonomos);
		
		DAOUsuario dao3 = new DAOUsuarioImpl();
		List<Usuario> usuarios = dao3.todosUsuarios();

		request.setAttribute("usuarios", usuarios);

		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/front/contrato/verContratos.jsp");

		rd.forward(request, response);
	}
	
	private void verAutonomos(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, DAOException{
		
		DAOAutonomo dao = new DAOAutonomoImpl();
		List<Autonomo> autonomos = dao.todosAutonomos();

		request.setAttribute("autonomos", autonomos);

		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/front/autonomo/verAutonomos.jsp");

		rd.forward(request, response);
	}	
	
}
