<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Buscar</title>
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    </head>
    <body>
        <nav class="navbar navbar-dark bg-primary">
            <div class="container-fluid">
                <a class="navbar-brand" href="index.html">Inicio</a>
            </div>
        </nav>
        <hr>
        <div class="container" style="">
            <main role="main" class="container my-auto">
                <div class="row">
                    <div id="login">
                        <form action="mostrar_busqueda.jsp?tipo=marca" method="post">
                            <div class="input-group">
                                <div class="input-group-text" id="btnGroupAddon">Buscar por marca</div>
                                <input type="text" class="form-control" name="txtmarca" placeholder="Marca">
                                <button class="btn btn-secondary" type="submit">
                                    <img src="https://cdn-icons-png.flaticon.com/512/54/54481.png" alt="Bootstrap" width="20" height="20">
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div id="login" >
                        <form action="mostrar_busqueda.jsp?tipo=modelo" method="post">
                            <div class="input-group">
                                <div class="input-group-text" id="btnGroupAddon">Buscar por modelo</div>
                                <input type="text" class="form-control" name="txtmodelo" placeholder="Modelo">
                                <button class="btn btn-secondary" type="submit">
                                    <img src="https://cdn-icons-png.flaticon.com/512/54/54481.png" alt="Bootstrap" width="20" height="20">
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div id="login" >
                        <form action="mostrar_busqueda.jsp?tipo=year" method="post">
                            <div class="input-group">
                                <div class="input-group-text" id="btnGroupAddon">Buscar por año de</div>
                                <input type="number" class="form-control" name="txtyear1" placeholder="Año 1">
                                <div class="input-group-text" id="btnGroupAddon">hasta</div>
                                <input type="number" class="form-control" name="txtyear2" placeholder="Año 2">
                                <button class="btn btn-secondary" type="submit">
                                    <img src="https://cdn-icons-png.flaticon.com/512/54/54481.png" alt="Bootstrap" width="20" height="20">
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            </main>
        </div> 
    </body>
</html>
