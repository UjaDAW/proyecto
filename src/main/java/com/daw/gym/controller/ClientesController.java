package com.daw.gym.controller;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;

import com.daw.gym.model.Cliente;
import com.daw.gym.model.dao.ClienteDAO;
import com.daw.gym.model.dao.ClienteDAOJDBC;
import com.daw.gym.model.dao.ClienteDAOList;

@WebServlet("/clientes/*")
public class ClientesController extends HttpServlet {

    private final String srvViewPath = "/WEB-INF/clientes";
    private String AppUrl;
    private ClienteDAO clienteDAO;
    private String srvUrl;
    private static final Logger Log = Logger.getLogger(ClientesController.class.getName());

    @Override
    public void init(ServletConfig servletConfig) throws ServletException {

        super.init(servletConfig);

        AppUrl = servletConfig.getServletContext().getContextPath();
        Log.info("ClientesController");

        srvUrl = servletConfig.getServletContext().getContextPath() + "/clientes";

        //ELEGIR List o JDBC
        //clienteDAO=new ClienteDAOJDBC();
        clienteDAO = new ClienteDAOList();

    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html");
        request.setCharacterEncoding("UTF-8");
        request.setAttribute("srvUrl", srvUrl);

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);

        RequestDispatcher rd;

        String action = (request.getPathInfo() != null ? request.getPathInfo() : "");

        Log.log(Level.INFO, "Petición GET {0}", action);

        switch (action) {
            case "/visualiza": {
                int id = Integer.parseInt(request.getParameter("id"));
                Cliente c = clienteDAO.buscaId(id);
                request.setAttribute("cliente", c);
                
                
                rd = request.getRequestDispatcher(srvViewPath + "/visualiza.jsp");

                break;
            }
            case "/borra": {
                int id = Integer.parseInt(request.getParameter("id"));
                if (id > 0) {
                    clienteDAO.borra(id);
                }
                
                response.sendRedirect(AppUrl);

                return;
            }
            case "/crea": {
                
                rd = request.getRequestDispatcher(srvViewPath + "/crea.jsp");

                break;
            }
            case "/edita": {
                Cliente c;

                int id = Integer.parseInt(request.getParameter("id"));
                c = clienteDAO.buscaId(id);
                request.setAttribute("cliente", c);

                rd = request.getRequestDispatcher(srvViewPath + "/edita.jsp");

                break;
            }
            default: {
                response.sendRedirect(srvUrl + "/crea");
                return;
            }

        }
        rd.forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);

        String action = (request.getPathInfo() != null ? request.getPathInfo() : "");

        Log.log(Level.INFO, "Petición POST {0}", action);

        switch (action) {
            case "/crea": {
                Cliente c = new Cliente();

                String nombre = request.getParameter("nombre");
                String apellidos = request.getParameter("apellidos");
                String email = request.getParameter("email");
                String nick = request.getParameter("nick");
                String pass = request.getParameter("pass");
                
                boolean mayor = false;
                String mayoredad = String.valueOf(mayor);
                mayoredad = request.getParameter("mayoredad");

                c.setNombre(nombre);
                c.setApellidos(apellidos);
                c.setEmail(email);
                c.setNick(nick);
                c.setPass(pass);
                c.setMayoredad(mayor);

                clienteDAO.crea(c);

                response.sendRedirect(srvUrl + "/visualiza?id=" + c.getId());
                
                break;
            }
            case "/edita": {
                int id = Integer.parseInt(request.getParameter("id"));
                Cliente c = clienteDAO.buscaId(id);

                String nombre = request.getParameter("nombre");
                String apellidos = request.getParameter("apellidos");
                String email = request.getParameter("email");
                String nick = request.getParameter("nick");

                c.setNombre(nombre);
                c.setApellidos(apellidos);
                c.setEmail(email);
                c.setNick(nick);

                clienteDAO.edita(c);
                response.sendRedirect(srvUrl + "/visualiza?id=" + c.getId());
                break;
            }
            default: {
                response.sendRedirect(srvUrl);
                break;
            }
        }

    }

    @Override
    public String getServletInfo() {
        return "Clientes";
    }
}
