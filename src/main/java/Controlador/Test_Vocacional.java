package Controlador;

import Modelo.TestVocacional;
import Modelo.TestVocacionalDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Zoe GR
 */
@WebServlet(name = "Test_Vocacional", urlPatterns = {"/Test_Vocacional"})
public class Test_Vocacional extends HttpServlet {

    TestVocacional tv = new TestVocacional();
    TestVocacionalDAO tvDAO = new TestVocacionalDAO();
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Test_Vocacional</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Test_Vocacional at " + request.getContextPath() + "</h1>");
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
        if(sesion.getAttribute("alumno") != null){
            alumno = sesion.getAttribute("alumno").toString();
        }
        String ver = request.getParameter("ver");
        
        switch(ver){
            case "resultados":
                List<TestVocacional> lista = tvDAO.listar(alumno);
                List<String> areas = tvDAO.areaResultado(alumno);

                List<List<String>> carreras = new ArrayList<>();
                for (int i = 0; i < areas.size(); i++) {
                    carreras.add(tvDAO.obtenerCarreras(areas.get(i)));
                }

                //Se mandan los resultados del usuario
                request.setAttribute("areas", lista);

                //Se mandan las areas con mayor puntaje

                request.setAttribute("areaMayor", areas );
                request.setAttribute("carreras", carreras);
                request.getRequestDispatcher("Test-Vocacional/resultadosTV.jsp").forward(request, response);
                break;
            case "historial":
                List<TestVocacional> histo = tvDAO.historial(alumno);
                request.setAttribute("historial", histo);
                request.getRequestDispatcher("Test-Vocacional/historial.jsp").forward(request, response);
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
        
        String accion = request.getParameter("accion");
        float resultados[] = new float[4];
        String [] p = new String[6];
        HttpSession sesion = request.getSession();
        String alumno = "";
        if(sesion.getAttribute("alumno") != null){
            alumno = sesion.getAttribute("alumno").toString();
        }
        
        tv.setAlumno(alumno);
        switch(accion){
            case "01":
                for (int i = 0; i < p.length; i++) {
                    p[i] = request.getParameter("p" + (i+1));
                }
                for (int i = 0; i < p.length; i++) {
                    System.out.println(p[i]);
                }
                resultados = tvDAO.contar(p);
                
                tv.setICFM(resultados[0]);
                tv.setCSA(resultados[1]);
                tv.setCMB(resultados[2]);
                tv.setHA(resultados[3]);
                
                response.sendRedirect("Test-Vocacional/02.jsp");
                break;
            case "02":
                for (int i = 0; i < p.length; i++) {
                    p[i] = request.getParameter("p" + (i+1));
                }
                for (int i = 0; i < p.length; i++) {
                    System.out.println(p[i]);
                }
                resultados = tvDAO.contar(p);
                
                tv.setICFM(tv.getICFM() + resultados[0]);
                tv.setCSA(tv.getCSA() + resultados[1]);
                tv.setCMB(tv.getCMB() + resultados[2]);
                tv.setHA(tv.getHA() + resultados[3]);
                
                response.sendRedirect("Test-Vocacional/03.jsp");
                break;
            case "03":
                for (int i = 0; i < p.length; i++) {
                    p[i] = request.getParameter("p" + (i+1));
                }
                for (int i = 0; i < p.length; i++) {
                    System.out.println(p[i]);
                }
                resultados = tvDAO.contar(p);
                
                tv.setICFM(tv.getICFM() + resultados[0]);
                tv.setCSA(tv.getCSA() + resultados[1]);
                tv.setCMB(tv.getCMB() + resultados[2]);
                tv.setHA(tv.getHA() + resultados[3]);
                
                response.sendRedirect("Test-Vocacional/04.jsp");
                break;
            case "04":
                for (int i = 0; i < p.length; i++) {
                    p[i] = request.getParameter("p" + (i+1));
                }
                for (int i = 0; i < p.length; i++) {
                    System.out.println(p[i]);
                }
                resultados = tvDAO.contar(p);
                
                tv.setICFM(tv.getICFM() + resultados[0]);
                tv.setCSA(tv.getCSA() + resultados[1]);
                tv.setCMB(tv.getCMB() + resultados[2]);
                tv.setHA(tv.getHA() + resultados[3]);
                
                response.sendRedirect("Test-Vocacional/05.jsp");
                break;
            case "05":
                for (int i = 0; i < p.length; i++) {
                    p[i] = request.getParameter("p" + (i+1));
                }
                for (int i = 0; i < p.length; i++) {
                    System.out.println(p[i]);
                }
                resultados = tvDAO.contar(p);
                
                tv.setICFM(tv.getICFM() + resultados[0]);
                tv.setCSA(tv.getCSA() + resultados[1]);
                tv.setCMB(tv.getCMB() + resultados[2]);
                tv.setHA(tv.getHA() + resultados[3]);
                
                response.sendRedirect("Test-Vocacional/06.jsp");
                break;
            case "06":
                for (int i = 0; i < p.length; i++) {
                    p[i] = request.getParameter("p" + (i+1));
                }
                for (int i = 0; i < p.length; i++) {
                    System.out.println(p[i]);
                }
                resultados = tvDAO.contar(p);
                
                tv.setICFM(tv.getICFM() + resultados[0]);
                tv.setCSA(tv.getCSA() + resultados[1]);
                tv.setCMB(tv.getCMB() + resultados[2]);
                tv.setHA(tv.getHA() + resultados[3]);
                
                response.sendRedirect("Test-Vocacional/07.jsp");
                break;
            case "07":
                for (int i = 0; i < p.length; i++) {
                    p[i] = request.getParameter("p" + (i+1));
                }
                for (int i = 0; i < p.length; i++) {
                    System.out.println(p[i]);
                }
                resultados = tvDAO.contar(p);
                
                tv.setICFM(tv.getICFM() + resultados[0]);
                tv.setCSA(tv.getCSA() + resultados[1]);
                tv.setCMB(tv.getCMB() + resultados[2]);
                tv.setHA(tv.getHA() + resultados[3]);
                
                response.sendRedirect("Test-Vocacional/08.jsp");
                break;
            case "08":
                for (int i = 0; i < p.length; i++) {
                    p[i] = request.getParameter("p" + (i+1));
                }
                for (int i = 0; i < p.length; i++) {
                    System.out.println(p[i]);
                }
                resultados = tvDAO.contar(p);
                
                tv.setICFM(tv.getICFM() + resultados[0]);
                tv.setCSA(tv.getCSA() + resultados[1]);
                tv.setCMB(tv.getCMB() + resultados[2]);
                tv.setHA(tv.getHA() + resultados[3]);
                
                response.sendRedirect("Test-Vocacional/09.jsp");
                break;
            case "09":
                for (int i = 0; i < p.length; i++) {
                    p[i] = request.getParameter("p" + (i+1));
                }
                for (int i = 0; i < p.length; i++) {
                    System.out.println(p[i]);
                }
                resultados = tvDAO.contar(p);
                
                tv.setICFM(tv.getICFM() + resultados[0]);
                tv.setCSA(tv.getCSA() + resultados[1]);
                tv.setCMB(tv.getCMB() + resultados[2]);
                tv.setHA(tv.getHA() + resultados[3]);
                
                response.sendRedirect("Test-Vocacional/10.jsp");
                break;
            case "10":
                for (int i = 0; i < p.length; i++) {
                    p[i] = request.getParameter("p" + (i+1));
                }
                for (int i = 0; i < p.length; i++) {
                    System.out.println(p[i]);
                }
                resultados = tvDAO.contar(p);
                
                tv.setICFM(tv.getICFM() + resultados[0]);
                tv.setCSA(tv.getCSA() + resultados[1]);
                tv.setCMB(tv.getCMB() + resultados[2]);
                tv.setHA(tv.getHA() + resultados[3]);
                tv.todoPorcentajes();
                
                tvDAO.agregar(tv);
                response.sendRedirect("Test_Vocacional?ver=resultados");
                break;
        }
        
        System.out.println("Resultados:");
        System.out.println("ICFM: " + tv.getICFM());
        System.out.println("CSA: "  + tv.getCSA());
        System.out.println("CMB: " + tv.getCMB());
        System.out.println("HA: " + tv.getHA());
        
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
