package util;

import java.io.IOException;
import java.util.Arrays;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebFilter("/*")
public class filtroUsuarios implements Filter {

	private final String[] LOGADO_AUTONOMO_ACTIONS = {"logout","login","pagCadCont","cadastrarContrato","home","homeMensagem","verContratos","verAutonomos","confirmarLogin","detalhesAutonomo","detalhesUsuario","detalhesContrato","perfil","meuPerfilAut","pagAlterarPerfilAut","alterarPerfilAut","meusContratos","aceitarContrato","pagAtualizarContrato","proporContrato","atualizarContrato","finalizarContrato","removerContrato","buscarAutonomoPTag","buscarContratoPStatus","numeroWPP"};
	
	private final String[] LOGADO_COMUM_ACTIONS = {"logout","login","pagCadCont","cadastrarContrato","home","homeMensagem","verContratos","verAutonomos","confirmarLogin","detalhesAutonomo","detalhesUsuario","detalhesContrato","perfil","meuPerfilCom","pagAlterarPerfilCom","alterarPerfilCom","meusContratos","aceitarContrato","pagAtualizarContrato","atualizarContrato","proporContrato","finalizarContrato","avaliar","removerContrato","buscarAutonomoPTag","buscarContratoPStatus","numeroWPP"};
	
	private final String[] DESLOGADO_ACTIONS = {"logout","index", "login", "pagCadAuto", "pagCadComum","cadastrarAutonomo","cadastrarComum","confirmarLogin","pagRecuperarSenha","recuperarSenha","conferirCodigoSenha","recuperarNovaSenha","reenviarCodigo"};

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		request.setCharacterEncoding("UTF-8");
		String action = ((HttpServletRequest) request).getParameter("action");

		HttpSession session = ((HttpServletRequest) request).getSession();
		
		String usuario = (String) session.getAttribute("usuario");		
		
		if(action != null && Arrays.asList(LOGADO_AUTONOMO_ACTIONS).contains(action)) {
			if(usuario != null && usuario.equals("autonomo")) {
				chain.doFilter(request, response);		
				return;
			} else if(usuario != null && usuario.equals("comum")){
				if(Arrays.asList(LOGADO_COMUM_ACTIONS).contains(action)) {
					chain.doFilter(request, response);
					return;					
				} else {
					((HttpServletResponse) response).sendRedirect("controller?action=erro");
					return;
				}			
			} else if(usuario == null && Arrays.asList(DESLOGADO_ACTIONS).contains(action)){
				chain.doFilter(request, response);
				return;								
			} else if(usuario == null && action.equals("home")){
				((HttpServletResponse) response).sendRedirect("controller?action=index");
				return;								
			} else {
				((HttpServletResponse) response).sendRedirect("controller?action=erro");
				return;
			}
		}
		
		if(action != null && Arrays.asList(LOGADO_COMUM_ACTIONS).contains(action)) {
			if(usuario != null && usuario.equals("comum")) {
				chain.doFilter(request, response);
				return;
			} else if(usuario != null && usuario.equals("autonomo")) {
				if(Arrays.asList(LOGADO_AUTONOMO_ACTIONS).contains(action)) {
					chain.doFilter(request, response);
					return;
				} else {
					((HttpServletResponse) response).sendRedirect("controller?action=erro");
					return;
				}
			} else if(usuario == null && Arrays.asList(DESLOGADO_ACTIONS).contains(action)){
				chain.doFilter(request, response);
				return;								
			} else if(usuario == null && action.equals("home")){
				((HttpServletResponse) response).sendRedirect("controller?action=index");
				return;								
			} else {
				((HttpServletResponse) response).sendRedirect("controller?action=erro");
				return;
			}
		}
		
		if(action != null && Arrays.asList(DESLOGADO_ACTIONS).contains(action)) {
			if(usuario == null) {
				chain.doFilter(request, response);
				return;
			} else if(usuario != null && action.equals("index")){
				((HttpServletResponse) response).sendRedirect("controller?action=home");
				return;								
			} else {
				((HttpServletResponse) response).sendRedirect("controller?action=erro");
				return;
			}
		}
		
		if(action != null && !(Arrays.asList(DESLOGADO_ACTIONS).contains(action)) && !(Arrays.asList(LOGADO_COMUM_ACTIONS).contains(action)) && !(Arrays.asList(LOGADO_AUTONOMO_ACTIONS).contains(action))){
			chain.doFilter(request, response);
			return;
		}
		
		if(action == null) {
			chain.doFilter(request, response);
			return;
		}
	}
}
