package Controlador;

import Modelo.Mantenimiento;
import Modelo.MantenimientoDAO;
import Modelo.Soporte;
import Modelo.SoporteDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@MultipartConfig
public class ControlerJ extends HttpServlet {

    MantenimientoDAO mDao = new MantenimientoDAO();
    Mantenimiento m = new Mantenimiento();
    SoporteDAO dao = new SoporteDAO();
    Soporte s = new Soporte();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Controler</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controler at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        HttpSession sesion = request.getSession();
        String trabajadorS = "";
        String trabajadorM = "";
        if (sesion.getAttribute("ingeS") != null) {
            trabajadorS = sesion.getAttribute("ingeS").toString();
            System.out.println(trabajadorS);
        }
        if (sesion.getAttribute("ingeM") != null) {
            trabajadorM = sesion.getAttribute("ingeM").toString();
            System.out.println(trabajadorM);
        }

        String accion = request.getParameter("accion");
        switch (accion) {
            case "verTabla":
                List<Soporte> lista = dao.listar(trabajadorS);
                request.setAttribute("lista", lista);
                request.getRequestDispatcher("reportess.jsp").forward(request, response);
                break;
            case "verReporte":
                int id = Integer.parseInt(request.getParameter("reporte"));
                System.out.println(id);
                List<Soporte> lista2 = dao.listarReporte(id);
                request.setAttribute("lista2", lista2);
                request.getRequestDispatcher("visualizarReporte.jsp").forward(request, response);
                break;
            case "resolver":
                int id2 = Integer.parseInt(request.getParameter("id_reporte"));
                String solucion = request.getParameter("solucion");
                s.setId_reporte(id2);
                s.setSolucion(solucion);
                dao.resolver(s);
                request.getRequestDispatcher("reportess.jsp").forward(request, response);
                break;

            case "verTablaM":
                List<Mantenimiento> listarr = mDao.listarM(trabajadorM);
                request.setAttribute("listaM", listarr);
                request.getRequestDispatcher("verRepMan.jsp").forward(request, response);
                break;
            case "verReporteM":
                int idM = Integer.parseInt(request.getParameter("reporteM"));
                System.out.println(idM);
                List<Mantenimiento> lista2M = mDao.listarReporteM(idM);
                request.setAttribute("lista2M", lista2M);
                request.getRequestDispatcher("reportesMan.jsp").forward(request, response);
                break;
            case "resolverM":
                int id2M = Integer.parseInt(request.getParameter("id_reporteM"));
                String solucionM = request.getParameter("solucionM");
                m.setId_reporte(id2M);
                m.setSolucion(solucionM);
                mDao.resolverM(m);
                request.getRequestDispatcher("verRepMan.jsp").forward(request, response);
                break;
            case "cerrarReporte":
                int id3 = Integer.parseInt(request.getParameter("reporte"));
                s.setId_reporte(id3);
                dao.cerrarReporte(s);
                request.getRequestDispatcher("ControlerJ?accion=verTabla").forward(request, response);
                break;
            case "cerrarReporteM":
                int id4 = Integer.parseInt(request.getParameter("reporteM"));
                m.setId_reporte(id4);
                mDao.cerrarReporteM(m);
                request.getRequestDispatcher("ControlerJ?accion=verTablaM").forward(request, response);
                System.out.println("reporte bien");
                break;
        }
    }
}
