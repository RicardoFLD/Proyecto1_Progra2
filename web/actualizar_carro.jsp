<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>update</title>
    </head>
    <body>
        <%
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost/Catalogo", "root", "Admin$1234");
                Statement statement = con.createStatement();
                String sql = "update catalogo set Name = '" + request.getParameter("txtName")
                        + "', Email = '" + request.getParameter("txtEmail")
                        + "', Phone = " + request.getParameter("txtPhone")
                        + ", Marca = '" + request.getParameter("txtMarca")
                        + "', Modelo = '" + request.getParameter("txtModelo")
                        + "', Año = " + request.getParameter("txtyear")
                        + ", tipo = '" + request.getParameter("txtTipo")
                        + "'  where id = '" + request.getParameter("id") + "'";
                statement.executeUpdate(sql);
                out.println("<script type='text/javascript'>alert('Carro actualizado');</script>");
                RequestDispatcher rd = request.getRequestDispatcher("/getCatalogServlet");
                rd.include(request, response);
            } catch (Exception ex) {
                ex.printStackTrace();
            }
        %>
    </body>
</html>