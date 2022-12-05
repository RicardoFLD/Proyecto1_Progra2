/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Catalogo;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author PRINCIPAL
 */
public class loadCatalogServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
   protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");

        PrintWriter out = response.getWriter();

        try {
            int Id = Integer.parseInt(request.getParameter("Id"));
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/catalogo", "root", "Admin$1234");
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("select * from catalogo where Id=" + Id);
            resultSet.next();

            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>invertarioCar</title>");
            out.println("<script src=\"https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js\" integrity=\"sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3\" crossorigin=\"anonymous\"></script>");
            out.println("<script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js\" integrity=\"sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz\" crossorigin=\"anonymous\"></script>");
            out.println("<link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT\" crossorigin=\"anonymous\">");
            out.println("</head>");
            out.println("    <body>");
            out.println("        <nav class=\"navbar navbar-dark navbar-expand-lg bg-primary\">\n" +"");
            out.println("            <div class=\"container-fluid\">");
            out.println("                <a class=\"navbar-brand\" href=\"#\">Registration</a>\n" +"");
            out.println("                <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarNav\" aria-controls=\"navbarNav\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n" +"");
            out.println("                    <span class=\"navbar-toggler-icon\"></span>\n" +"");
            out.println("                </button>");
            out.println("                <div class=\"collapse navbar-collapse\" id=\"navbarNav\">\n" +"");
            out.println("                    <ul class=\"navbar-nav\">  \n" +"");
            out.println("                        <li class=\"nav-item\">\n" +"");
            out.println("                            <a class=\"nav-link active\" href=\"invertarioCar\">Inventario</a>\n" +"");
            out.println("                        </li>");
            out.println("                        <li class=\"nav-item\">");
            out.println("                            <a class=\"nav-link active\" href=\"RegistroCarros.jsp\">Registrar Vehiculo</a>\n" +"");
            out.println("                        </li>");
            out.println("                    </ul>");
            out.println("                </div>");
            out.println("            </div>");
            out.println("        </nav>");
            out.println("        <div class=\"container\" style=\"margin-top:5%\">");
            out.println("            <div class=\"card\" style=\"width: 45rem;\">");
            out.println("                <div class=\"card-header\">");
            out.println("                    Registro de ventas");
            out.println("                </div>");
            out.println("                <div class=\"card-body\">");
            out.println("                    <form action=\"insertCatalogServlet\" method=\"post\">\n" +"");
            out.println("                        <div class=\"row\">");
            out.println("                            <div class=\"col\">");
            out.println("                                <div class=\"form-floating mb-3\">\n" +"");
            out.println("                                    <input name=\"txtName\" type=\"text\" class=\"form-control\" id=\"txtName\" placeholder=\"Cesar\" required>\n" +"");
            out.println("                                    <label for=\"txtName\">Nombre completo</label>\n" +"");
            out.println("                                </div>");
            out.println("                                <div class=\"form-floating mb-3\">\n" +"");
            out.println("                                    <input name=\"txtEmail\" type=\"email\" class=\"form-control\" id=\"txtEmail\" placeholder=\"name@example.com\" required>\n" +"");
            out.println("                                    <label for=\"txtEmail\">Email</label>\n" +"");
            out.println("                                </div> ");
            out.println("                                <div class=\"form-floating mb-3\">\n" +"");
            out.println("                                    <input name=\"txtPhone\" type=\"number\" class=\"form-control\" id=\"txtPhone\" placeholder=\"87301229\" required>\n" +"");
            out.println("                                    <label for=\"txtPhone\">Telefono</label>\n" +"");
            out.println("                                </div>");
            out.println("                                <div class=\"col-md-3\">");
            out.println("                                    <label for=\"txtMarca\" class=\"form-label\">Marca</label>\n" +"");
            out.println("                                    <select class=\"form-select\" id=\"Marca\" required>\n" +"");
            out.println("                                        <option selected disabled value=\"\">Marca del carro</option>\n" +"");
            out.println("                                        <option>Toyota</option>\n" +"");
            out.println("                                        <option>Citroen</option>\n" +"");
            out.println("                                        <option>Hyundai</option>\n" +"");
            out.println("                                    </select>");
            out.println("                                    <div class=\"invalid-feedback\">\n" +"");
            out.println("                                        Elija una marca\n" +"");
            out.println("                                    </div>");
            out.println("                                </div>");
            out.println("                                <div class=\"form-floating mb-3\">\n" +"");
            out.println("                                    <input name=\"txtModelo\" type=\"text\" class=\"form-control\" id=\"txtModelo\" placeholder=\"Modelo\" required>\n" +"");
            out.println("                                    <label for=\"txtModelo\">Modelo</label>\n" +"");
            out.println("                                </div>");
            out.println("                                <div class=\"form-floating mb-3\">\n" +"");
            out.println("                                    <input name=\"txtAño\" type=\"number\" class=\"form-control\" id=\"txtAño\" placeholder=\"1993\" required>\n" +"");
            out.println("                                    <label for=\"txtAño\">Año</label>\n" +"");
            out.println("                                </div> ");
            out.println("                            </div>");
            out.println("                        </div>");
            out.println("                        <hr>");
            out.println("                        <button type=\"submit\" class=\"btn btn-primary\" style=\"float: right\">Register</button>\n" +"");
            out.println("                    </form>");
            out.println("                </div>");
            out.println("            </div>");
            out.println("        </div>");
            out.println("    </body>");
            out.println("</html>");

        } catch (NumberFormatException | ClassNotFoundException | SQLException e) {
            out.println(e.getMessage());
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
        processRequest(request, response);
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
