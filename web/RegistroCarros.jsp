<%-- 
    Document   : RegistroCarros
    Created on : 25 nov. 2022, 17:19:25
    Author     : PRINCIPAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>CRAutos</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js" integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    </head>
    <body>
        
        <nav class="navbar navbar-dark navbar-expand-lg bg-primary">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">Register cars to sell</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">  
                        <li class="nav-item">
                            <a class="nav-link active" href="invertarioCar">Inventory</a
                            <a class="nav-link active" href="index.html">Main</a>
                        </li>   
                    </ul>
                </div>
                
            </div>
        </nav>
    
        <div class="container" style="margin-top:5%">
            <div class="card" style="width: 45rem;">
                <div class="card-header">
                    New vehicle
                </div>
                <div class="card-body">
                    <form action="insertVehiculo" method="post">
                        <div class="row">
                            <div class="col">
                                <div class="form-floating mb-3">
                                    <input name="txtMarca" type="text" class="form-control" id="txtMarca" placeholder="Toyota" required>
                                    <label for="txtMarca">Brand</label>
                                </div>
                                <div class="form-floating mb-3">
                                    <input name="txtModelo" type="text" class="form-control" id="txtModelo" placeholder="Modelo" required>
                                    <label for="txtModelo">Model</label>
                                </div>        
                                <div class="form-floating mb-3">
                                    <input name="txtAño" type="number" class="form-control" id="txtAño" placeholder="1993" required>
                                    <label for="txtAño">Year</label>
                                </div>
                                  <div class="col-md-3">
                                      <label for="validationCustom04" class="form-label">Style</label>
                                      <select class="form-select" id="validationCustom04" required>
                                          <option selected disabled value="">Style</option>
                                          <option>Style 1</option>
                                          <option>Style 2</option>
                                          <option>Style 3</option>
                                      </select>
                                      <div class="invalid-feedback">
                                          Please select a valid state.
                                      </div>
                                  </div>
                            </div>
                        </div>
                        <hr>
                        <button type="submit" class="btn btn-primary" style="float: right">Register</button>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
