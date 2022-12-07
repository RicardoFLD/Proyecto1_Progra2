<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Busqueda</title>
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    </head>
    <body>
        <%
            ResultSet resultset = null;
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost/Catalogo", "root", "Admin$1234");
                Statement statement = con.createStatement();
                switch (request.getParameter("tipo")) {
                    case "marca":
                        resultset = statement.executeQuery("select * from catalogo WHERE Marca like '%" + request.getParameter("txtmarca") + "%' ");
                        break;
                    case "modelo":
                        resultset = statement.executeQuery("select * from catalogo WHERE Modelo like '%" + request.getParameter("txtmodelo") + "%' ");
                        break;
                    case "year":
                        int y1 = Integer.parseInt(request.getParameter("txtyear1"));
                        int y2 = Integer.parseInt(request.getParameter("txtyear2"));
                        resultset = statement.executeQuery("select * from catalogo WHERE Año BETWEEN " + y1 + " and " + y2 + "");
                        break;
                }
            } catch (Exception ex) {
                ex.printStackTrace();
            }
        %>
        <nav class="navbar navbar-dark bg-primary">
            <div class="container-fluid">
                <a class="navbar-brand" href="index.html">Inicio</a>
            </div>
        </nav>
        <hr>
        <div class="container" style="">
            <main role="main" class="container my-auto">
                <table class="table table-primary table-striped-columns">
                    <thead>
                        <tr>
                            <th scope="col">Name</th>
                            <th scope="col">Email</th>
                            <th scope="col">Phone</th>
                            <th scope="col">Marca</th>
                            <th scope="col">Modelo</th>
                            <th scope="col">Año</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% while (resultset.next()) {%>
                        <tr onclick="window.location.href = 'loadCatalogServlet?Name=<%=resultset.getString("Name")%>'"> 
                            <td><%=resultset.getString("Name")%></td>                                                
                            <td><%=resultset.getString("Email")%></td>                                                
                            <td><%=resultset.getInt("Phone")%></td>                                                
                            <td><%=resultset.getString("Marca")%></td>
                            <td><%=resultset.getString("Modelo")%></td>
                            <td><%=resultset.getInt("Año")%></td>
                        </tr>                    
                        <%}%>
                    </tbody>
                </table>   
            </main>
        </div> 
    </body>
</html>
