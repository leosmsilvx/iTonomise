package iTonomise.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import iTonomise.dao.*;
import iTonomise.modelo.*;
import util.UploadFile;


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
			} else if (action.equals("homeMensagem")) { 
				homeMensagem(request, response);
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
			} else if (action.equals("proporContrato")) { 
				proporContrato(request, response);
			} else if (action.equals("finalizarContrato")) { 
				finalizarContrato(request, response);
			} else if (action.equals("avaliar")) { 
				avaliar(request, response);
			} else if (action.equals("removerContrato")) { 
				removerContrato(request, response);
			} else if (action.equals("buscarAutonomoPTag")) { 
				buscarAutonomoPTag(request, response);
			} else if (action.equals("buscarContratoPStatus")) { 
				buscarContratoPStatus(request, response);
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
			throws ServletException, IOException, DAOException {
		
		DAOContrato dao = new DAOContratoImpl();
		HttpSession session = request.getSession(true);
		String usuario = (String) session.getAttribute("usuario");
		int id = (int) session.getAttribute("id");
		String localizacao = dao.pegarLocalizacao(usuario, id);
		session.setAttribute("localizacaoPerfil", localizacao);
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/front/contrato/cadastroContrato.jsp");
		rd.forward(request, response);
	}
	
	//Cadastrar autonomo
	private void cadastrarAutonomo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, DAOException {
		
		HttpSession session = request.getSession(true);	
		UploadFile upload = new UploadFile("arquivo", 1, "jpg, jpeg, png");
		upload.setEncoding("UTF-8");
		
		String nome = upload.getParameter(request,"nome");
		String sobrenome = upload.getParameter(request,"sobrenome");
		String cpf = upload.getParameter(request,"cpf");
		String tel = upload.getParameter(request,"tel");
		String user = upload.getParameter(request,"user");
		String senha = upload.getParameter(request,"senha");
		String email = upload.getParameter(request,"email");
		String desc = upload.getParameter(request,"desc");
		String tags = upload.getParameter(request,"tags");
		String endereco = upload.getParameter(request,"endereco");
		double aval = 0;
		int idAutonomo = 0;	

		String nomeimg = null;
		
		ServletContext application = getServletContext(); 

		if(upload.doUploadParameter(request, application, "nomeImg", user)){
			nomeimg = upload.getNomeArquivo();
		}
		
		
		DAOAutonomo dao = new DAOAutonomoImpl();
		DAOUsuario dao2 = new DAOUsuarioImpl();
		Autonomo autonomoUser = dao.buscarAutonomoPUser(request.getParameter("user"));
		int emailAutonomo = dao.buscarEmailAutonomo(request.getParameter("email"));
		int emailUser = dao2.buscarEmailUsuario(request.getParameter("email"));
		
		if(autonomoUser != null ) {
			String msgErroCad = "Não foi possivel concluir o cadastro, usuário já cadastrado!";
			session.setAttribute("msgErroCad", msgErroCad);

			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/front/autonomo/cadastroAutonomo.jsp");
			rd.forward(request, response);
			return;
		}
		if(emailUser != 0 || emailAutonomo != 0) {
			String msgErroCad = "Não foi possivel concluir o cadastro, e-mail já cadastrado!";
			session.setAttribute("msgErroCad", msgErroCad);

			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/front/autonomo/cadastroAutonomo.jsp");
			rd.forward(request, response);
			return;
		}
		
		if(emailUser == 0 && emailAutonomo == 0 && autonomoUser == null) {
			Autonomo novoAutonomo = new Autonomo(nome, sobrenome, cpf, tel, user, senha, email, desc, tags, endereco, aval, nomeimg, idAutonomo);
			
			dao.cadastrar(novoAutonomo);
			request.setAttribute("autonomo", novoAutonomo);
			
			String msgConfirm = "Usuario cadastrado com sucesso!";
			session.setAttribute("msgConfirm", msgConfirm);
			
			String redirectURL = "controller?action=index";
			response.sendRedirect(redirectURL);
		}		
		
	}
	
	//Cadastrar comum
	private void cadastrarComum(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, DAOException {	
		
		HttpSession session = request.getSession(true);	
		UploadFile upload = new UploadFile("arquivo", 1, "jpg, jpeg, png");
		upload.setEncoding("UTF-8");
		
		String nome = upload.getParameter(request,"nome");
		String sobrenome = upload.getParameter(request,"sobrenome");
		String cpf = upload.getParameter(request,"cpf");
		String tel = upload.getParameter(request,"tel");
		String user = upload.getParameter(request,"user");
		String senha = upload.getParameter(request,"senha");
		String email = upload.getParameter(request,"email");
		String endereco = upload.getParameter(request,"endereco");
		int idUsuario = 0;

		String nomeimg = null;
		
		ServletContext application = getServletContext(); 

		if(upload.doUploadParameter(request, application, "nomeImg", user)){
			nomeimg = upload.getNomeArquivo();
		}
		
		DAOUsuario dao = new DAOUsuarioImpl();
		DAOAutonomo dao2 = new DAOAutonomoImpl();
		Usuario usuarioUser = dao.buscarUsuarioPUser(request.getParameter("user"));
		int emailAutonomo = dao2.buscarEmailAutonomo(request.getParameter("email"));
		int emailUser = dao.buscarEmailUsuario(request.getParameter("email"));
		
		if(usuarioUser != null) {
			String msgErroCad = "Não foi possivel concluir o cadastro, usuário já cadastrado!";
			session.setAttribute("msgErroCad", msgErroCad);

			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/front/comum/cadastroComum.jsp");
			rd.forward(request, response);
			return;
		}		
		if(emailUser != 0 || emailAutonomo != 0) {
			String msgErroCad = "Não foi possivel concluir o cadastro, e-mail já cadastrado!";
			session.setAttribute("msgErroCad", msgErroCad);

			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/front/comum/cadastroComum.jsp");
			rd.forward(request, response);
			return;
		}
		if(emailUser == 0 && emailAutonomo == 0 && usuarioUser == null) {
			Usuario novoUsuario = new Usuario(nome, sobrenome, cpf, tel, user, senha, email, endereco, nomeimg, idUsuario);		
			
			dao.cadastrar(novoUsuario);
			request.setAttribute("comum", novoUsuario);
			
			String msgConfirm = "Usuario cadastrado com sucesso!";
			session.setAttribute("msgConfirm", msgConfirm);
			
			String redirectURL = "controller?action=index";
			response.sendRedirect(redirectURL);
		}
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
		String status = "Não aceito";
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
				status = "Pendente";
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
		
		String redirectURL = "controller?action=homeMensagem";
		response.sendRedirect(redirectURL);
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
	
	//Home page
	private void homeMensagem(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			
		HttpSession session = request.getSession(true);	
		session.setAttribute("msgContrato", "Contrato cadastrado com sucesso!");
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
		int todosContratos = dao.contarTodosContratos(Integer.valueOf(request.getParameter("idAutonomo")));
		
		request.setAttribute("todosContratosAut", todosContratos);
		request.setAttribute("autonomo", autonomo);
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/front/autonomo/detalhesAutonomo.jsp");
		rd.forward(request, response);
	}
	
	//Detalhes Usuario
	private void detalhesUsuario(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, DAOException {
		
		DAOUsuario dao = new DAOUsuarioImpl();
		Usuario usuario = dao.buscarUsuario(Integer.valueOf(request.getParameter("idUsuario")));

		int todosContratos = dao.contarTodosContratos(Integer.valueOf(request.getParameter("idUsuario")));
		
		request.setAttribute("todosContratosCom", todosContratos);
		
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
		UploadFile upload = new UploadFile("arquivo", 1, "jpg, jpeg, png");
		upload.setEncoding("UTF-8");

		String nome = upload.getParameter(request,"nome");
		String sobrenome = upload.getParameter(request,"sobrenome");
		String cpf = upload.getParameter(request,"cpf");
		String tel = upload.getParameter(request,"tel");
		String user = upload.getParameter(request,"user");
		String senha = upload.getParameter(request,"senha");
		String email = upload.getParameter(request,"email");
		String desc = upload.getParameter(request,"desc");
		String tags = upload.getParameter(request,"tags");
		String endereco = upload.getParameter(request,"endereco");
		double aval = 0;
		if(request.getParameter("aval") != null)
			aval = Double.valueOf(upload.getParameter(request,"aval"));
		
		int idAutonomo = (int) session.getAttribute("id");	
	
		String nomeimg = null;
		
		ServletContext application = getServletContext(); 

		if(upload.doUploadParameter(request, application, "nomeImg", user)){
			nomeimg = upload.getNomeArquivo();
		}
		
		if(nomeimg == null) {
			nomeimg = upload.getParameter(request,"imagem");
		}	
			
		Autonomo atualizarAutonomo = new Autonomo(nome, sobrenome, cpf, tel, user, senha, email, desc, tags, endereco, aval, nomeimg, idAutonomo);
			
		DAOAutonomo dao = new DAOAutonomoImpl();
		DAOUsuario dao2 = new DAOUsuarioImpl();
		
		int idAutonomoEmail = dao.buscarEmailAutonomo(email);
		int idUsuarioEmail = dao2.buscarEmailUsuario(email);
		
		if(idUsuarioEmail != 0 || idAutonomoEmail != 0 && idAutonomoEmail != ((int) session.getAttribute("id"))) {
			String msgErroAtu = "Não foi possivel fazer a alteração, email já cadastrado!";
			session.setAttribute("msgErroAtu", msgErroAtu);

			pagAlterarPerfilAut(request, response);
			return;
		} else {
			session.setAttribute("msgErroAtu", "");
			dao.atualizar(atualizarAutonomo);
			request.setAttribute("autonomo", atualizarAutonomo);
			
			String redirectURL = "controller?action=perfil";
			response.sendRedirect(redirectURL);
		}		
		
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
		UploadFile upload = new UploadFile("arquivo", 1, "jpg, jpeg, png");
		upload.setEncoding("UTF-8");
		
		String nome = upload.getParameter(request,"nome");
		String sobrenome = upload.getParameter(request,"sobrenome");
		String cpf = upload.getParameter(request,"cpf");
		String tel = upload.getParameter(request,"tel");
		String user = upload.getParameter(request,"user");
		String senha = upload.getParameter(request,"senha");
		String email = upload.getParameter(request,"email");
		String endereco = upload.getParameter(request,"endereco");
		int idUsuario = (int) session.getAttribute("id");

		String nomeimg = null;
		
		ServletContext application = getServletContext(); 		

		if(upload.doUploadParameter(request, application, "nomeImg", user)){
			nomeimg = upload.getNomeArquivo();
		}
		
		if(nomeimg == null) {
			nomeimg = upload.getParameter(request,"imagem");
		}		
		
		Usuario novoUsuario = new Usuario(nome, sobrenome, cpf, tel, user, senha, email, endereco, nomeimg, idUsuario);
		
		DAOAutonomo dao = new DAOAutonomoImpl();
		DAOUsuario dao2 = new DAOUsuarioImpl();
		
		int idAutonomoEmail = dao.buscarEmailAutonomo(email);
		int idUsuarioEmail = dao2.buscarEmailUsuario(email);
		
		if(idAutonomoEmail != 0 || idUsuarioEmail != 0 && idUsuarioEmail != ((int) session.getAttribute("id"))) {
			String msgErroAtu = "Não foi possivel fazer a alteração, email já cadastrado!";
			session.setAttribute("msgErroAtu", msgErroAtu);

			pagAlterarPerfilCom(request, response);
			return;
		} else {
			session.setAttribute("msgErroAtu", "");
			dao2.atualizar(novoUsuario);
			request.setAttribute("comum", novoUsuario);
	
			String redirectURL = "controller?action=perfil";
			response.sendRedirect(redirectURL);
		}
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
		String status = "Aceito";
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
			String status = "Não aceito";
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
			String status = "Finalizado";
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
						
			dao3.atualizarMedia(idAutonomo);
			dao2.atualizarAval(idContrato);

			meusContratos(request, response);
		}
		
		// Excluir Contrato 
		private void removerContrato(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, DAOException {

			int idContrato = Integer.valueOf(request.getParameter("idContrato"));
								
			DAOContrato dao = new DAOContratoImpl();
			dao.remover(idContrato);
			
			meusContratos(request, response);
		}
		
		// Buscar autonomo por tag
		private void buscarAutonomoPTag(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, DAOException {

			String tagBuscar = request.getParameter("tagBuscar");
			String nomeBuscar = request.getParameter("nomeBuscar");
			
			if(tagBuscar.equals("nada")) {
				tagBuscar = "";
			}
										
			DAOAutonomo dao = new DAOAutonomoImpl();
			List<Autonomo> autonomos = dao.buscarAutonomoTag(tagBuscar, nomeBuscar);
			
			request.setAttribute("msgNaoTem", "");
			
			if(autonomos.isEmpty()) {
				request.setAttribute("msgNaoTem", "Não há autonomos correspondentes ao filtro selecionado.");
			}
			
			request.setAttribute("autonomos", autonomos);		
			
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/front/autonomo/verAutonomos.jsp");
			rd.forward(request, response);
		}
		
		// Buscar contrato por status
		private void buscarContratoPStatus(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, DAOException {

			String status = request.getParameter("status");
			request.setAttribute("status", status);
												
			DAOContrato dao = new DAOContratoImpl();
			List<Contrato> contratos = dao.buscarContratoPStatus(status);
					
			request.setAttribute("msgNaoTem", "");
				
			if(contratos.isEmpty()) {
				request.setAttribute("msgNaoTem", "Não há autonomos correspondentes ao filtro selecionado.");
			}
					
			request.setAttribute("contratos", contratos);
			
			DAOAutonomo dao2 = new DAOAutonomoImpl();
			List<Autonomo> autonomos = dao2.todosAutonomos();

			request.setAttribute("autonomos", autonomos);
				
			DAOUsuario dao3 = new DAOUsuarioImpl();
			List<Usuario> usuarios = dao3.todosUsuarios();

			request.setAttribute("usuarios", usuarios);
					
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/front/contrato/meusContratos.jsp");
			rd.forward(request, response);
		}
}


