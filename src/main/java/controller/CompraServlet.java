package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.crud.dao.Cliente_DAO;
import br.com.crud.dao.Compra_DAO;
import br.com.crud.dao.Passagem_DAO;
import br.com.crud.model.ClienteModel;
import br.com.crud.model.CompraModel;
import br.com.crud.model.PassagemModel;



@WebServlet(urlPatterns = {"/compra",  "/compra-getCreate", "/compra-create", "/compra-edit", "/compra-update", "/compra-delete"})
public class CompraServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Compra_DAO compradao = new Compra_DAO();
	Cliente_DAO clientedao = new Cliente_DAO();
	Passagem_DAO passagemdao = new Passagem_DAO();
	CompraModel compramodel = new CompraModel();
       
   
    public CompraServlet() {
        super();
       
    }

	
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action = request.getServletPath();
		
		switch (action) {
		case "/compra":
			buscarCompra(request, response);
			break;
		case "/compra-getCreate":
			getCreate(request, response);
			break;	
		case "/compra-create":
			inserirCompra(request, response);
			break;
		case "/compra-edit":
			edit(request, response);
			break;
		case "/compra-update":
			atualizarCompra(request, response);
			break;
		case "/compra-delete":
			deletarCompra(request, response);
			break;
		default:
			response.sendRedirect("index.html");
			break;
		}
	}
	
	protected void buscarCompra (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<CompraModel> lista = compradao.buscarCompra();
		request.setAttribute("listaCompras", lista);
		RequestDispatcher rd = request.getRequestDispatcher("./views/compra/index.jsp");
		rd.forward(request, response);
	}
	
	protected void getCreate (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<ClienteModel> listaClientes = clientedao.buscarCliente();
		request.setAttribute("listaClientes", listaClientes);
		List<PassagemModel> listaPassagens = passagemdao.buscarPassagem();
		request.setAttribute("listaPassagens", listaPassagens);
		RequestDispatcher rd = request.getRequestDispatcher("./views/compra/cadastrarCompra.jsp");
		rd.forward(request, response);
	}
	
	protected void inserirCompra (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String data_compra = request.getParameter("data_compra");
		ClienteModel c1 = clientedao.buscarId(Integer.parseInt(request.getParameter("listac")));
		PassagemModel p1 = passagemdao.buscarId(Integer.parseInt(request.getParameter("listap")));
		String metodo_pagamento = request.getParameter("metodo_pagamento");
		
		compramodel = new CompraModel(data_compra,c1, p1, metodo_pagamento);
		
		compradao.inserirCompra(compramodel);
		response.sendRedirect("compra");
		
	}
	
	protected void edit (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		int id_compra = Integer.parseInt(request.getParameter("id_compra"));
		
		compramodel = compradao.buscarId(id_compra);
		
		request.setAttribute("compra", compramodel);
		
		List<ClienteModel> listaClientes = clientedao.buscarCliente();
		request.setAttribute("listaClientes", listaClientes);
		List<PassagemModel> listaPassagens = passagemdao.buscarPassagem();
		request.setAttribute("listaPassagens", listaPassagens);

		RequestDispatcher rd = request.getRequestDispatcher("./views/compra/update.jsp");
		rd.forward(request, response);
	}
	
	
	
	protected void atualizarCompra (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		compramodel.setId(Integer.parseInt(request.getParameter("id_compra")));
		
		compramodel.setData_compra(request.getParameter("data_compra"));
		compramodel.setC1(clientedao.buscarId(Integer.parseInt(request.getParameter("id_cliente"))));
		compramodel.setP1(passagemdao.buscarId(Integer.parseInt(request.getParameter("id_passagem"))));
		compramodel.setMetodo_pagamento(request.getParameter("metodo_pagamento"));
		
		compramodel.valorFinalViagem(compramodel.getP1().getPreço(), compramodel.getMetodo_pagamento());

		compradao.atualizarCompra(compramodel);
		response.sendRedirect("compra");
	}
	protected void deletarCompra(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id_compra = Integer.parseInt(request.getParameter("id_compra"));
		compradao.deletarCompra(id_compra);
		response.sendRedirect("compra");
	}	

}


