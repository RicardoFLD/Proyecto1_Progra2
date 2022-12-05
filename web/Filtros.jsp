<%-- 
    Document   : Filtros
    Created on : 5 dic. 2022, 02:42:59
    Author     : PRINCIPAL
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
        <title>Busqueda</title>
    </head>
    <body>
        <div class="container" style="margin-top:2%">             
            <div class="card">
                <div class="card-header">
                    Search user
                </div>
                <div class="card-body">
                    <form action="search.jsp">            
                        <div class="form-floating mb-3">
                            <input type="text" class="form-control" name="txtName" placeholder="Name">
                            <label>Name</label>
                        </div>
                        <div class="form-floating mb-3">
                            <input type="text" class="form-control" name="txtEmail" placeholder="Email">
                            <label>Email</label>
                        </div>
                        <div class="form-floating mb-3">
                            <input type="number" class="form-control" name="txtPhone" placeholder="44533553">
                            <label>Phone</label>
                        </div>
                        <div class="form-floating mb-3">
                            <input type="text" class="form-control" name="txtMarca" placeholder="marca">
                            <label>Marca</label>
                        </div>
                        <div class="form-floating mb-3">
                            <input type="text" class="form-control" name="txtModelo" placeholder="modelo">
                            <label>Modelo</label>
                        </div>
                        <div class="form-floating mb-3">
                            <input type="number" class="form-control" name="txtAño" placeholder="1999">
                            <label>Phone</label>
                        </div>
                        <div class="form-floating mb-3">
                            <button type="submit" class="btn btn-primary">Search</button>                            
                        </div>                          
                    </form>                    
                </div>
            </div>   
            <hr />  
            <%
                String txtName = request.getParameter("txtName");
                String txtEmail = request.getParameter("txtEmail");

                Connection con = null;
                ResultSet resultset = null;

                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    con = DriverManager.getConnection("jdbc:mysql://localhost/Catalogo", "root", "Admin$1234");
                    Statement statement = con.createStatement();
                    resultset = statement.executeQuery("select * from users where name like '%" + txtName + "%' OR email like '%" + txtEmail + "%'");                    
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
            %>   
            <table class="table table-hover">
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
                        <th scope="row"> <%=resultset.getString("Email")%> </th>
                        <td><%=resultset.getInt("Phone")%></td>                                                
                        <td><%=resultset.getString("Marca")%></td>
                        <td><%=resultset.getString("Modelo")%></td>
                        <td><%=resultset.getInt("Año")%></td>
                    </tr>                    
                    <%}%>
                </tbody>
            </table>   
        </div>
    </body>
</html>
