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
			} else if (action.equals("logout")) { 
				logout(request, response);
			} else if (action.equals("sobreN")) { 
				sobreN(request, response);
			} else if (action.equals("pagCadAuto")) { 
				pagCadAuto(request, response);
			} else if (action.equals("pagCadComum")) { 
				pagCadComum(request, response);
			} else if (action.equals("pagCadCont")) { 
				pagCadCont(request, response);
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
			} else if (action.equals("detalhesAutonomo")) { 
				detalhesAutonomo(request, response);
			} else if (action.equals("detalhesUsuario")) { 
				detalhesUsuario(request, response);
			} else if (action.equals("detalhesContrato")) { 
				detalhesContrato(request, response);
			} else if (action.equals("perfil")) { 
				perfil(request, response);
			} else if (action.equals("meuPerfilAut")) { 
				meuPerfilAut(request, response);
			} else if (action.equals("meuPerfilCom")) { 
				meuPerfilCom(request, response);
			} else if (action.equals("pagAlterarPerfilAut")) { 
				pagAlterarPerfilAut(request, response);
			} else if (action.equals("alterarPerfilAut")) { 
				alterarPerfilAut(request, response);
			} else if (action.equals("pagAlterarPerfilCom")) { 
				pagAlterarPerfilCom(request, response);
			} else if (action.equals("alterarPerfilCom")) { 
				alterarPerfilCom(request, response);
			} else if (action.equals("meusContratos")) { 
				meusContratos(request, response);
			} else if (action.equals("aceitarContrato")) { 
				aceitarContrato(request, response);
			} else if (action.equals("pagAtualizarContrato")) { 
				pagAtualizarContrato(request, response);
			} else if (action.equals("atualizarContrato")) { 
				atualizarContrato(request, response);
			} else if (action.equals("atualizarPorCategoria")) { 
				atualizarPorCategoria(request, response);
			} else if (action.equals("proporContrato")) { 
				proporContrato(request, response);
			} else if (action.equals("finalizarContrato")) { 
				finalizarContrato(request, response);
			} else if (action.equals("avaliar")) { 
				avaliar(request, response);
			} else {				
				RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/front/main/erro.jsp"); 
				rd.forward(request, response);
			}
			
		} catch (ServletException | IOException | DAOException e) {
			e.printStackTrace();
		}		
	} 
	
	//Index
	private void index(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession(true);	
		session.setAttribute("msgConfirm", "");
		session.setAttribute("msgErroCad", "");
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
		session = request.getSession(true);
		String msgConfirm = "Você foi deslogado!";
		session.setAttribute("msgConfirm", msgConfirm);
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/front/main/index.jsp");
		rd.forward(request, response);
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
	
	//Cadastrar autonomo
	private void cadastrarAutonomo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, DAOException {
		
		HttpSession session = request.getSession(true);	
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
		double aval = 0;
		int idAutonomo = 0;
		
		DAOAutonomo dao = new DAOAutonomoImpl();
		DAOUsuario dao2 = new DAOUsuarioImpl();
		Autonomo autonomoUser = dao.buscarAutonomoPUser(request.getParameter("user"));
		String emailAutonomo = dao.buscarEmailAutonomo(request.getParameter("email"));
		String emailUser = dao2.buscarEmailUsuario(request.getParameter("email"));
		
		if(autonomoUser != null ) {
			String msgErroCad = "Não foi possivel concluir o cadastro, usuário já cadastrado!";
			session.setAttribute("msgErroCad", msgErroCad);

			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/front/autonomo/cadastroAutonomo.jsp");
			rd.forward(request, response);
			return;
		}
		if(emailUser != null && emailAutonomo != null) {
			String msgErroCad = "Não foi possivel concluir o cadastro, e-mail já cadastrado!";
			session.setAttribute("msgErroCad", msgErroCad);

			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/front/autonomo/cadastroAutonomo.jsp");
			rd.forward(request, response);
			return;
		}
		
		Autonomo novoAutonomo = new Autonomo(nome, sobrenome, cpf, tel, user, senha, email, desc, tags, endereco, aval, idAutonomo);
		
		dao.cadastrar(novoAutonomo);
		request.setAttribute("autonomo", novoAutonomo);
		
		String msgConfirm = "Usuario cadastrado com sucesso!";
		session.setAttribute("msgConfirm", msgConfirm);

		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/front/main/index.jsp");
		rd.forward(request, response);
	}
	
	//Cadastrar comum
	private void cadastrarComum(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, DAOException {	
		
		HttpSession session = request.getSession(true);	
		String nome = request.getParameter("nome");
		String sobrenome = request.getParameter("sobrenome");
		String cpf = request.getParameter("cpf");
		String tel = request.getParameter("tel");
		String user = request.getParameter("user");
		String senha = request.getParameter("senha");
		String email = request.getParameter("email");
		String endereco = request.getParameter("endereco");
		int idUsuario = 0;
		
		DAOUsuario dao = new DAOUsuarioImpl();
		DAOAutonomo dao2 = new DAOAutonomoImpl();
		Usuario usuarioUser = dao.buscarUsuarioPUser(request.getParameter("user"));
		String emailAutonomo = dao2.buscarEmailAutonomo(request.getParameter("email"));
		String emailUser = dao.buscarEmailUsuario(request.getParameter("email"));
		
		if(usuarioUser != null) {
			String msgErroCad = "Não foi possivel concluir o cadastro, usuário já cadastrado!";
			session.setAttribute("msgErroCad", msgErroCad);

			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/front/comum/cadastroComum.jsp");
			rd.forward(request, response);
			return;
		}		
		if(emailUser != null && emailAutonomo != null) {
			String msgErroCad = "Não foi possivel concluir o cadastro, e-mail já cadastrado!";
			session.setAttribute("msgErroCad", msgErroCad);

			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/front/comum/cadastroComum.jsp");
			rd.forward(request, response);
			return;
		}		
		
		Usuario novoUsuario = new Usuario(nome, sobrenome, cpf, tel, user, senha, email, endereco, idUsuario);		
		
		dao.cadastrar(novoUsuario);
		request.setAttribute("comum", novoUsuario);
		
		String msgConfirm = "Usuario cadastrado com sucesso!";
		session.setAttribute("msgConfirm", msgConfirm);

		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/front/main/index.jsp");
		rd.forward(request, response);
	}
	
	//Cadastrar contrato
	private void cadastrarContrato(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, DAOException {		
		
		String titulo = request.getParameter("titulo");
		String valor = request.getParameter("valor");
		String descricao = request.getParameter("descricao");
		String dataInicio = request.getParameter("dataInicio");
		String duracaoT = request.getParameter("duracaoT");
		String duracaoN = request.getParameter("duracaoN");
		String localizacao = request.getParameter("localizacao");
		String status = null;
		int idCont = 0;	
		String idAutonomo = null;
		String idUsuario = null;
		String finalAut = null;
		String finalUser = null;
		String tipoCriador = request.getParameter("tipoCriador");
		String foiAvaliado = "0";
		
		if(dataInicio == null) {			
			dataInicio = "Indefinido";
		}
		if(valor == null) {			
			valor = "Indefinido";
		}
		if(duracaoN == null) {
			duracaoT = null;
			duracaoN = "Indefinido";
		}
		
		HttpSession session = request.getSession(true);	
		if(session.getAttribute("usuario").equals("comum")) {
			idUsuario = String.valueOf(session.getAttribute("id"));	
			idAutonomo = request.getParameter("idAutonomo");
			if(idAutonomo != null)
				status = "1";
		} else{
			idAutonomo = String.valueOf(session.getAttribute("id"));
		}
		
		if (tipoCriador == null) {
			tipoCriador = String.valueOf(session.getAttribute("usuario"));
		}
		
		Contrato novoContrato = new Contrato(titulo, valor, descricao, dataInicio, duracaoT, duracaoN, localizacao, status, idCont, idAutonomo, idUsuario, tipoCriador, finalAut, finalUser, foiAvaliado);
		
		DAOContrato dao = new DAOContratoImpl();
		dao.cadastrar(novoContrato);
		request.setAttribute("contrato", novoContrato);
		
		String msgContrato = "Contrato cadastrado com sucesso!";
		session.setAttribute("msgContrato", msgContrato);

		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/front/main/home/homepage.jsp");
		rd.forward(request, response);
	}
	
	//Confirmar login
	private void confirmarLogin(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, DAOException{
		HttpSession session = request.getSession(true);	
		DAOUsuario daoU = new DAOUsuarioImpl();
		List<Usuario> usuarios = daoU.todosUsuarios();
		DAOAutonomo daoA = new DAOAutonomoImpl();
		List<Autonomo> autonomos = daoA.todosAutonomos();	
		for(int i = 0; i < autonomos.size(); i++)
		{
			if((autonomos.get(i).getSenha()).equals(request.getParameter("senha")) && (autonomos.get(i).getEmail()).equals(request.getParameter("email"))) {
				session.setAttribute("usuario", "autonomo");	
				session.setAttribute("id", autonomos.get(i).getIdAutonomo());
				home(request,response);
			}
		}
		for(int i = 0; i < usuarios.size(); i++)
		{
			if((usuarios.get(i).getSenha()).equals(request.getParameter("senha")) && (usuarios.get(i).getEmail()).equals(request.getParameter("email"))) {
				session.setAttribute("usuario", "comum");	
				session.setAttribute("id", usuarios.get(i).getIdUsuario());
				home(request,response);
			}
		}
		String msgErro = "Senha e/ou usuario incorretos!";
		session.setAttribute("msgErro", msgErro);
		((HttpServletResponse) response).sendRedirect("controller?action=login");
		 		
	}
	
	//Home page
	private void home(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession(true);	
		session.setAttribute("msgContrato", "");
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/front/main/home/homepage.jsp");
		rd.forward(request, response);
	}
	
	//Ver contratos
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
	
	//Ver autonomos
	private void verAutonomos(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, DAOException{
		
		DAOAutonomo dao = new DAOAutonomoImpl();
		List<Autonomo> autonomos = dao.todosAutonomos();

		request.setAttribute("autonomos", autonomos);

		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/front/autonomo/verAutonomos.jsp");

		rd.forward(request, response);
	}	
	
	//Detalhes Autonomo
	private void detalhesAutonomo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, DAOException {
		
		DAOAutonomo dao = new DAOAutonomoImpl();
		Autonomo autonomo = dao.buscarAutonomo(Integer.valueOf(request.getParameter("idAutonomo")));

		request.setAttribute("autonomo", autonomo);
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/front/autonomo/detalhesAutonomo.jsp");
		rd.forward(request, response);
	}
	
	//Detalhes Usuario
	private void detalhesUsuario(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, DAOException {
		
		DAOUsuario dao = new DAOUsuarioImpl();
		Usuario usuario = dao.buscarUsuario(Integer.valueOf(request.getParameter("idUsuario")));

		request.setAttribute("comum",usuario);
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/front/comum/detalhesComum.jsp");
		rd.forward(request, response);
	}
	
	//Detalhes contrato
	private void detalhesContrato(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, DAOException {
		
		DAOContrato dao = new DAOContratoImpl();
		Contrato contrato = dao.buscarContrato(Integer.valueOf(request.getParameter("idContrato")));

		request.setAttribute("contrato", contrato);
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/front/contrato/detalhesContrato.jsp");
		rd.forward(request, response);
	}
	
	//Checar perfil
	private void perfil(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, DAOException {
		
		HttpSession session = request.getSession(true);
        String usuario = (String) session.getAttribute("usuario");
        
        if(usuario.equals("comum")) {
        	meuPerfilCom(request,response);
        } else if(usuario.equals("autonomo")) {
        	meuPerfilAut(request,response);
        } else {
        	String msgContrato = "Erro ao acessar seu perfil";
    		session.setAttribute("msgContrato", msgContrato);
        	RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/front/main/home/homepage.jsp");
    		rd.forward(request, response);
        }
 
	}
	
	//Meu perfil Autonomo
	private void meuPerfilAut(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, DAOException {
		
		HttpSession session = request.getSession(true);
        int id = (int) session.getAttribute("id");
		
		DAOAutonomo dao = new DAOAutonomoImpl();
		Autonomo autonomo = dao.buscarAutonomo(id);

		request.setAttribute("autonomo", autonomo);
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/front/autonomo/meuPerfilAut.jsp");
		rd.forward(request, response);
	}
	
	//Meu perfil Comum
	private void meuPerfilCom(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, DAOException {
		
		HttpSession session = request.getSession(true);
        int id = (int) session.getAttribute("id");
		
		DAOUsuario dao = new DAOUsuarioImpl();
		Usuario usuario = dao.buscarUsuario(id);

		request.setAttribute("comum", usuario);
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/front/comum/meuPerfilCom.jsp");
		rd.forward(request, response);
	}

	//Pagina alterar perfil autonomo
	private void pagAlterarPerfilAut(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, DAOException {
		
		HttpSession session = request.getSession(true);
        int id = (int) session.getAttribute("id");
		
		DAOAutonomo dao = new DAOAutonomoImpl();
		Autonomo autonomo = dao.buscarAutonomo(id);

		request.setAttribute("autonomo", autonomo);
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/front/autonomo/alterarPerfilAut.jsp");
		rd.forward(request, response);
	}
	
	//Alterar autonomo
	private void alterarPerfilAut(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, DAOException {
			
		HttpSession session = request.getSession(true);	
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
		double aval = 0;
		if(request.getParameter("aval") != null)
			aval = Double.valueOf(request.getParameter("aval"));
		int idAutonomo = (int) session.getAttribute("id");
			
		Autonomo atualizarAutonomo = new Autonomo(nome, sobrenome, cpf, tel, user, senha, email, desc, tags, endereco, aval, idAutonomo);
			
		DAOAutonomo dao = new DAOAutonomoImpl();
		dao.atualizar(atualizarAutonomo);
		request.setAttribute("autonomo", atualizarAutonomo);

		perfil(request, response);
	}	
	
	//Pagina alterar perfil comum
	private void pagAlterarPerfilCom(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, DAOException {
		
		HttpSession session = request.getSession(true);
        int id = (int) session.getAttribute("id");
		
		DAOUsuario dao = new DAOUsuarioImpl();
		Usuario usuario = dao.buscarUsuario(id);

		request.setAttribute("comum", usuario);
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/front/comum/alterarPerfilCom.jsp");
		rd.forward(request, response);
	}
	
	//Alterar comum
	private void alterarPerfilCom(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, DAOException {
			
		HttpSession session = request.getSession(true);	
		String nome = request.getParameter("nome");
		String sobrenome = request.getParameter("sobrenome");
		String cpf = request.getParameter("cpf");
		String tel = request.getParameter("tel");
		String user = request.getParameter("user");
		String senha = request.getParameter("senha");
		String email = request.getParameter("email");
		String endereco = request.getParameter("endereco");
		int idUsuario = (int) session.getAttribute("id");
		
		Usuario novoUsuario = new Usuario(nome, sobrenome, cpf, tel, user, senha, email, endereco, idUsuario);
		
		DAOUsuario dao = new DAOUsuarioImpl();
		dao.atualizar(novoUsuario);
		request.setAttribute("comum", novoUsuario);

		perfil(request, response);
	}	
	
	//Meus Contratos
	private void meusContratos(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, DAOException {
	        
	    DAOContrato dao = new DAOContratoImpl();
	    List<Contrato> contratos = dao.todosContratos();

		request.setAttribute("contratos", contratos);
			
		DAOAutonomo dao2 = new DAOAutonomoImpl();
		List<Autonomo> autonomos = dao2.todosAutonomos();

		request.setAttribute("autonomos", autonomos);
			
		DAOUsuario dao3 = new DAOUsuarioImpl();
		List<Usuario> usuarios = dao3.todosUsuarios();

		request.setAttribute("usuarios", usuarios);
		
		DAOAvaliacao dao4 = new DAOAvaliacaoImpl();
		List<Avaliacao> avaliacoes = dao4.todasAvaliacoes();

		request.setAttribute("avaliacoes", avaliacoes);
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/front/contrato/meusContratos.jsp");
		rd.forward(request, response);
	}
	
	//Aceitar Contrato
	private void aceitarContrato(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, DAOException {
			
		HttpSession session = request.getSession(true);	
		int id = (int) session.getAttribute("id");
		String titulo = request.getParameter("titulo");
		String valor = request.getParameter("valor");
		String descricao = request.getParameter("descricao");
		String dataInicio = request.getParameter("dataInicio");
		String duracaoT = request.getParameter("duracaoT");
		String duracaoN = request.getParameter("duracaoN");
		String localizacao = request.getParameter("localizacao");
		String status = "0";
		int idContrato = Integer.valueOf(request.getParameter("idContrato"));
		String idAutonomo = request.getParameter("idAutonomo");	
		String idUsuario = request.getParameter("idUsuario");
		String tipoCriador = request.getParameter("tipoCriador");
		String finalAut = request.getParameter("finalAut");
		String finalUser = request.getParameter("finalUser");
		String foiAvaliado = "0";
		
		if(idAutonomo == null) {
			idAutonomo = String.valueOf(id);
		}
		if(idUsuario == null) {
			idUsuario = String.valueOf(id);
		}
		
		Contrato novoContrato = new Contrato(titulo, valor, descricao, dataInicio, duracaoT, duracaoN, localizacao, status, idContrato, idAutonomo, idUsuario, tipoCriador, finalAut, finalUser, foiAvaliado);
		
		DAOContrato dao = new DAOContratoImpl();
		dao.atualizar(novoContrato);
		
		meusContratos(request, response);
	}
	
	//Pagina Atualizar Contrato
		private void pagAtualizarContrato(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException, DAOException {
						
			DAOContrato dao = new DAOContratoImpl();
			Contrato contrato = dao.buscarContrato(Integer.valueOf(request.getParameter("idContrato")));

			request.setAttribute("contrato", contrato);
			
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/front/contrato/alterarContrato.jsp");
			rd.forward(request, response);
		}
	
	//Atualizar Contrato
		private void atualizarContrato(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException, DAOException {
				
			HttpSession session = request.getSession(true);	
			String titulo = request.getParameter("titulo");
			String valor = request.getParameter("valor");
			String descricao = request.getParameter("descricao");
			String dataInicio = request.getParameter("dataInicio");
			String duracaoT = request.getParameter("duracaoT");
			String duracaoN = request.getParameter("duracaoN");
			String localizacao = request.getParameter("localizacao");
			String status = null;
			String idAutonomo = null;
			String idUsuario = null;
			String finalAut = request.getParameter("finalAut");
			String finalUser = request.getParameter("finalUser");
			String tipoCriador = request.getParameter("tipoCriador");
			int idContrato = Integer.valueOf(request.getParameter("idContrato"));
			String foiAvaliado = "0";
			
			if(dataInicio == null) {			
				dataInicio = "Indefinido";
			}
			if(valor == null) {			
				valor = "Indefinido";
			}
			if(duracaoN == null) {
				duracaoT = null;
				duracaoN = "Indefinido";
			}
			
			if(session.getAttribute("usuario").equals("comum")) {
				idUsuario = String.valueOf(session.getAttribute("id"));	
			} else{
				idAutonomo = String.valueOf(session.getAttribute("id"));
			}
			
			Contrato novoContrato = new Contrato(titulo, valor, descricao, dataInicio, duracaoT, duracaoN, localizacao, status, idContrato, idAutonomo, idUsuario, tipoCriador, finalAut, finalUser, foiAvaliado);
			
			DAOContrato dao = new DAOContratoImpl();
			dao.atualizar(novoContrato);
			
			meusContratos(request, response);
		}
		
		//Atualiar por categoria
		private void atualizarPorCategoria(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException, DAOException {
			
			String categoria = request.getParameter("filtro");
			
			if (categoria.equals("none")){
				categoria = null;
			}

			request.setAttribute("categoria", categoria);
			
			verAutonomos(request,response);
		}
		
		//Propor Contrato
		private void proporContrato(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException, DAOException {			
			
			HttpSession session = request.getSession(true);		
			if(session.getAttribute("usuario").equals("autonomo")) {
				String msgContrato = "Não é possível propor um contrato para um autonomo, pois você também é um autonomo.";
				session.setAttribute("msgContrato", msgContrato);

				RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/front/main/home/homepage.jsp");
				rd.forward(request, response);
			}
			
			int idAutonomo = Integer.valueOf(request.getParameter("idAutonomo"));
			
			request.setAttribute("idAutonomoPropor", idAutonomo);
			
			pagCadCont(request,response);
			

		}
		
		// Finalizar Contrato
		private void finalizarContrato(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException, DAOException {

			HttpSession session = request.getSession(true);
			String titulo = request.getParameter("titulo");
			String valor = request.getParameter("valor");
			String descricao = request.getParameter("descricao");
			String dataInicio = request.getParameter("dataInicio");
			String duracaoT = request.getParameter("duracaoT");
			String duracaoN = request.getParameter("duracaoN");
			String localizacao = request.getParameter("localizacao");
			String status = request.getParameter("status");;
			String idAutonomo = request.getParameter("idAutonomo");
			String idUsuario = request.getParameter("idUsuario");
			String finalAut = request.getParameter("finalAut");
			String finalUser = request.getParameter("finalUser");
			String tipoCriador = request.getParameter("tipoCriador");
			int idContrato = Integer.valueOf(request.getParameter("idContrato"));
			String foiAvaliado = "0";
			
			if(dataInicio == null) {			
				dataInicio = "Indefinido";
			}
			if(valor == null) {			
				valor = "Indefinido";
			}
			if(duracaoN == null) {
				duracaoT = null;
				duracaoN = "Indefinido";
			}
			
			if(session.getAttribute("usuario").equals("comum")){
				finalUser = "1";
								
			} else if(session.getAttribute("usuario").equals("autonomo")){
				finalAut = "1";
	
			} else {
				RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/front/main/erro.jsp"); 
				rd.forward(request, response);
				return;
			}
			Contrato novoContrato = new Contrato(titulo, valor, descricao, dataInicio, duracaoT, duracaoN, localizacao, status, idContrato, idAutonomo, idUsuario, tipoCriador, finalAut, finalUser, foiAvaliado);
			DAOContrato dao = new DAOContratoImpl();
			dao.atualizar(novoContrato);				
			meusContratos(request, response);
		}
		
		// Avaliar
		private void avaliar(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException, DAOException {

			HttpSession session = request.getSession(true);
			int idAvaliacao = 0;
			int idAutonomo = Integer.valueOf(request.getParameter("idAutonomo"));
			int idUsuario = (int) session.getAttribute("id");
			int idContrato = Integer.valueOf(request.getParameter("idContrato"));
			String valor = request.getParameter("valor");
			
			Avaliacao novaAvaliacao = new Avaliacao(idAvaliacao, idAutonomo, idUsuario, idContrato, valor);
			
			DAOAvaliacao dao = new DAOAvaliacaoImpl();
			dao.cadastrar(novaAvaliacao);
			
			DAOContrato dao2 = new DAOContratoImpl();
		    List<Contrato> contratos = dao2.todosContratos();
			request.setAttribute("contratos", contratos);
				
			DAOAutonomo dao3 = new DAOAutonomoImpl();
			List<Autonomo> autonomos = dao3.todosAutonomos();
			request.setAttribute("autonomos", autonomos);
				
			DAOUsuario dao4 = new DAOUsuarioImpl();
			List<Usuario> usuarios = dao4.todosUsuarios();
			request.setAttribute("usuarios", usuarios);
			
			double media = dao.mediaAutonomo(idAutonomo);
			media = (double) (Math.round(media*10.0)/10.0);
			
			dao3.atualizarMedia(media, idAutonomo);
			dao2.atualizarAval(idContrato);

			meusContratos(request, response);
		}
}
