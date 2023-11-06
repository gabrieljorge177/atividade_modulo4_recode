package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.crud.dao.Passagem_DAO;
import br.com.crud.model.PassagemModel;



@WebServlet(urlPatterns = {"/passagem", "/passagem-create", "/passagem-edit", "/passagem-update", "/passagem-delete"})
public class Passagem_Servelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	  Passagem_DAO passagemdao = new Passagem_DAO();
	  PassagemModel passagemmodel = new PassagemModel();
	  PassagemModel passagem = new PassagemModel();   
    
    public Passagem_Servelet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action = request.getServletPath();
		
		switch (action) {
		case "/passagem":
			buscarpassagem(request, response);
			break;
		case "/passagem-create":
			inserirpassagem(request, response);
			break;
		case "/passagem-edit":
			edit(request, response);
			break;
		case "/passagem-update":
			atualizarpassagem(request, response);
			break;
		case "/passagem-delete":
			deletarpassagem(request, response);
			break;
		default:
			response.sendRedirect("index.html");
			break;
		}
	}
	
	protected void buscarpassagem(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<PassagemModel> lista = passagemdao.buscarPassagem();
		request.setAttribute("listaPassagens", lista);
		RequestDispatcher rd = request.getRequestDispatcher("./views/passagem/index.jsp");
		rd.forward(request, response);
	}
	
	protected void inserirpassagem(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		passagem.setCidade(request.getParameter("cidade"));
		passagem.setData_passagem(request.getParameter("data_passagem"));
		passagem.setPreço(Double.parseDouble((request.getParameter("preço"))));
		passagem.setCategoria(request.getParameter("categoria"));
		
		passagemdao.inserirPassagem(passagem);
		response.sendRedirect("passagem");
	}
	
	protected void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id_passagem = Integer.parseInt(request.getParameter("id_passagem"));
		passagem = passagemdao.buscarId(id_passagem);
		
		request.setAttribute("passagem", passagem);
		RequestDispatcher rd = request.getRequestDispatcher("./views/passagem/update.jsp");
		
		rd.forward(request, response);
	}
	
	protected void atualizarpassagem(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		passagem.setCidade(request.getParameter("cidade"));
		passagem.setData_passagem(request.getParameter("data_passagem"));
		passagem.setPreço(Double.parseDouble((request.getParameter("preço"))));
		passagem.setCategoria(request.getParameter("categoria"));
		passagem.setId_passagem(Integer.parseInt(request.getParameter("id_passagem")));

		passagemdao.atualizarPassagem(passagem);
		response.sendRedirect("passagem");
	}
	protected void deletarpassagem(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id_passagem = Integer.parseInt(request.getParameter("id_passagem"));
		passagemdao.deletarPassagem(id_passagem);
		response.sendRedirect("passagem");
	}	

}


