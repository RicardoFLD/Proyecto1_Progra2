<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js" integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    </head>
    <body>
        <%
            ResultSet resultset = null;
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/Catalogo", "root", "Admin$1234");
                Statement statement = connection.createStatement();
                resultset = statement.executeQuery("select * from catalogo WHERE id = '" + request.getParameter("id") + "'");
                resultset.next();
            } catch (Exception ex) {
                ex.printStackTrace();
            }
        %>
        <nav class="navbar navbar-dark navbar-expand-lg bg-primary">
            <div class="container-fluid">
                <a class="navbar-brand" href="index.html">Inicio</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">  
                        <li class="nav-item">
                            <a class="nav-link active" href="getCatalogServlet">Inventario</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="busqueda.jsp">Buscar Vehiculo</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="container" style="margin-top:5%">
            <div class="card" style="width: 45rem;">
                <div class="card-header">
                    Modificar Datos
                </div>
                <div class="card-body">
                    <form action="actualizar_carro.jsp?id=<%= request.getParameter("id")%>" method="post">
                        <div class="row">
                            <div class="col">
                                <div class="form-floating mb-3">
                                    <input value="<%=resultset.getString("Name")%>" name="txtName" type="text" class="form-control" id="txtName" placeholder="Cesar" required="required">
                                    <label for="txtName">Nombre completo</label>
                                </div>
                                <div class="form-floating mb-3">
                                    <input value="<%=resultset.getString("Email")%>" name="txtEmail" type="email" class="form-control" id="txtEmail" placeholder="name@example.com" required="required">
                                    <label for="txtEmail">Email</label>
                                </div>
                                <div class="form-floating mb-3">
                                    <input value="<%=resultset.getString("Phone")%>" name="txtPhone" type="number" class="form-control" id="txtPhone" placeholder="87301229" required="required">
                                    <label for="txtPhone">Telefono</label>
                                </div>                                
                                <div class="form-floating mb-3">
                                    <input value="<%=resultset.getString("Marca")%>" name="txtMarca" type="text" class="form-control" id="txtMarca" placeholder="Marca" required="required">
                                    <label for="txtMarca">Marca</label>
                                </div> 
                                <div class="form-floating mb-3">
                                    <input value="<%=resultset.getString("Modelo")%>" name="txtModelo" type="text" class="form-control" id="txtModelo" placeholder="Modelo" required="required">
                                    <label for="txtModelo">Modelo</label>
                                </div> 
                                <div class="form-floating mb-3">
                                    <input value="<%=resultset.getString("Año")%>" name="txtyear" type="number" class="form-control" id="txtyear" placeholder="1993" required="required">
                                    <label for="txtyear">Año</label>
                                </div>
                                <div class="col-md-3">
                                    <label for="txtTipo" class="form-label">Tipo de Carroceria</label>
                                    <select name="txtTipo" class="form-select" id="txtTipo" required="required">
                                        <option value="SEDÁN">SEDÁN</option>
                                        <option value="HATCHBACK">HATCHBACK</option>
                                        <option value="SUV">SUV</option>
                                        <option value="PICK-UP">PICK-UP</option>
                                        <option value="MINIVAN">MINIVAN</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <hr>
                        <button type="submit" class="btn btn-primary" style="float: right">Update</button>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
