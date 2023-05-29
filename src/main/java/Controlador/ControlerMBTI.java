/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Personalidad;
import Modelo.PersonalidadDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author jwqui
 */
public class ControlerMBTI extends HttpServlet {

    Personalidad p = new Personalidad();
    PersonalidadDAO pDAO = new PersonalidadDAO();

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ControlerMBTI</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControlerMBTI at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
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
        HttpSession sesion = request.getSession();
        String alumno = "";
        alumno = sesion.getAttribute("alumno").toString();
        
        String ver = request.getParameter("ver");
        switch(ver){ 
            case "carreras": 
                List<Personalidad> list = pDAO.listar(alumno);
                System.out.println(list);
                request.setAttribute("carreras", list);
                request.getRequestDispatcher("MBTI/resultados.jsp").forward(request, response);
                break;
        }
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
        System.out.println("Corriendo Post");
        HttpSession sesion = request.getSession();
        String alumno = "";
        alumno = sesion.getAttribute("alumno").toString();
        String accion = request.getParameter("accion");
        
        switch (accion) {
            case "saveResults":
                String personalidad = request.getParameter("personalityType");
                p.setMbti(personalidad);
                p.setUsuario(alumno);
                pDAO.agregar(p);
                response.sendRedirect("ControlerMBTI?mbti=carreras");
                break;

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
