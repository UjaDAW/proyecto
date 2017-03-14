/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.daw.gym.controller;

import com.daw.gym.model.Cliente;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;

/**
 *
 * @author josejimenezdelapaz
 */
@WebServlet("/clientes/*")
public class ClientesController extends HttpServlet {

    private String srvUrl;
    private String imgUrl;
    private static final Logger Log = Logger.getLogger(ClientesController.class.getName());
    private final String srvViewPath = "/WEB-INF/clientes";

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    public void init(ServletConfig servletConfig) throws ServletException {

        super.init(servletConfig);

        Log.info("Inicializando ClientesController");

        //Servlet and image dir URLs for views' use
        srvUrl = servletConfig.getServletContext().getContextPath() + "/clientes";
        imgUrl = servletConfig.getServletContext().getContextPath() + "/images";

        //***ELEGIR DAOLIST O DAOJDBC
        //Select DAO Implementation
        //clienteDAO=new ClienteDAOJDBC();
        /*
        clienteDAO=new ClienteDAOList();
        
        mediosPago=new MedioPagoDAO();
         */
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       

        response.setContentType("text/html");
        request.setCharacterEncoding("UTF-8");
        response.setHeader("Expires", "0"); //Avoid browser caching response

        request.setAttribute("imgUrl", imgUrl);
        request.setAttribute("srvUrl", srvUrl);
//
//        try (PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet clientes</title>");
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet clientes at " + request.getContextPath() + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
//        }
    
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);

        RequestDispatcher rd;
        rd = request.getRequestDispatcher("");
        //Detect current servlet action
        String action = (request.getPathInfo() != null ? request.getPathInfo() : "");

        Log.log(Level.INFO, "Petición GET {0}", action);

        switch (action) {
            case "/visualiza": {    //VISUALIZA UN CLIENTE
                /*
                int id=Integer.parseInt(request.getParameter("id"));
                Cliente c = clienteDAO.buscaId(id);
                request.setAttribute("cliente", c);
                rd=request.getRequestDispatcher(srvViewPath+"/visualiza.jsp");
                 */
                break;
            }
            case "/borra": {       //BORRAR CLIENTE
                /*
                int id=Integer.parseInt(Util.getParam(request.getParameter("id"),"0"));
                if (id>0) clienteDAO.borra(id);
                response.sendRedirect(srvUrl);
                 */
                return;
            }
            case "/crea": {        //FORMULARIO ALTA DE  CLIENTE
                Cliente c = new Cliente();
                request.setAttribute("cliente", c);
                rd = request.getRequestDispatcher(srvViewPath + "/crea.jsp");
                break;
            }
            case "/edita": {        //FORMULARIO EDICION DE CLIENTE
                /*
                Cliente c;
                //Cargar Cliente seleccionado
                int id=Integer.parseInt(Util.getParam(request.getParameter("id"),"0"));
                c=clienteDAO.buscaId(id);
                //Formulario de edición
                request.setAttribute("cliente", c);
                rd=request.getRequestDispatcher(srvViewPath+"/edita.jsp");
                 */
                break;
            }
            /*
            default: {          //LISTAR TODOS LOS CLIENTES
                List<Cliente> lc = clienteDAO.buscaTodos();
                request.setAttribute("clientes", lc);
                rd=request.getRequestDispatcher(srvViewPath+"/listado_jstl.jsp");
                break;
            }
             */

        }
        rd.forward(request, response);

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        //Detect current servlet action
        String action=(request.getPathInfo()!=null?request.getPathInfo():"");

        Log.log(Level.INFO, "Petición POST {0}", action);        

        switch (action) {
            case "/crea": {     //ALTA DE UN CLIENTE
//                Cliente c=new Cliente();
//                if (validateCustomer(request,c)) {
//                    clienteDAO.crea(c); //Create new client
//                    //Post-sent-redirect
//                    response.sendRedirect(srvUrl+"/visualiza?id="+c.getId());
//                } else { //Show form with validation errores
//                    request.setAttribute("cliente", c);
//                    RequestDispatcher rd = request.getRequestDispatcher(srvViewPath+"/crea.jsp");
//                    rd.forward(request, response);
//                }
                break;
            }
            case "/edita": {    //ACTUALIZAR UN CLIENTE
//                Cliente c=new Cliente();
//                if (validateCustomer(request,c)) {
//                    //Aactualizar datos Cliente
//                    clienteDAO.guarda(c);
//                    response.sendRedirect(srvUrl);
//                } else { //Show form with validation errores
//                    request.setAttribute("cliente", c);
//                    RequestDispatcher rd = request.getRequestDispatcher(srvViewPath+"/edita.jsp");
//                    rd.forward(request, response);
//                }
                break;
            }
            default:{ // Default POST
                response.sendRedirect(srvUrl);        
                break;
            }
        }
        
        
        
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
