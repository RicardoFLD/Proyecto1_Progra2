<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/Catalogo", "root", "Admin$1234");
            Statement statement = connection.createStatement();
            String sql = "UPDATE catalogo SET estado = 'En Venta' WHERE id =  '" + request.getParameter("id") + "' ";
            statement.executeUpdate(sql);
            statement.close();
            out.println("<script type='text/javascript'>alert('Gracias por vender');</script>");
            RequestDispatcher rd = request.getRequestDispatcher("/index.html");
            rd.include(request, response);
        %>
    </body>
</html>
