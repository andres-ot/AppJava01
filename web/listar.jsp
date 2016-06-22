
<%@page import="Conexion.Coneccion"%>
<!DOCTYPE html>
<html lang="en">
    <head>
    <head>
        <title>jQuery</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/css/select2.min.css" rel="stylesheet" />
        <link href="bootstrap-datepicker.min.css" rel="stylesheet" />
    </head>
</head>

<body>
    
    <div>
        
        <div class="container">

            <div class="starter-template">
                <br>
                <br>
                <br>
                 <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">Listar Tareas</h3>
                    </div>
                    <div class="panel-body">
                <table class='table table-striped table-bordered table-hover table-condensed'>
                    <%--<a href="crear.jsp" class="btn btn-primary">Nuevo Usuario</a> --%>
                    <br>
                    <br>
                    
                        Buscar por Nombre:<input type="text" name="buscarNombre" ><input type="submit" value="Buscar">
                    </form>
                    <br>
                    <br>
                    <thead>
                        <tr>
                            <th>Unidad</th>
                            <th>Servicio</th>
                            <th>Responsable</th>
                            <th>Tarea</th>
                            <th>Fecha</th>
                           // <th>Acciones:</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            Coneccion con = new Coneccion();
                           
                        %>
                        <%
                            con.setConsulta("select servicios.nombre, unidades.nombre, responsables.nombre, tareas.nombre, tareas.fecha from servicios, unidades, responsables, tareas where unidades.servicio_id=servicios.servicio_id and unidades.unidad_id=responsables.unidad_id and tareas.responsable_id=responsables.reponsable_id");
                            while (con.getResultado().next()) {
                                out.println("<tr>");
                                out.println("<td>" + con.getResultado().getString("unidades.nombre") + "</td>");
                                out.println("<td>" + con.getResultado().getString("servicios.nombre") + "</td>");
                                out.println("<td>" + con.getResultado().getString("responsables.nombre") + "</td>");
                                out.println("<td>" + con.getResultado().getString("tareas.nombre") + "</td>");
                                out.println("<td>" + con.getResultado().getString("tareas.fecha") + "</td>");
                                //out.println("<td>" + con.getResultado().getString("ciudad") + "</td>");
                                //out.println("<td>" + "<a href='../ServletUsuario?eliminar=" + con.getResultado().getString("usuario_id") + "' class='btn btn-danger'>Eliminar</a>" + "</td>");
                                //out.println("<td>" + "<a href='editar.jsp?editar=" + con.getResultado().getString("usuario_id") + "' class='btn btn-primary'>Editar</a>" + "</td>");

                                out.println("</tr>");
                            }
                        %>
                    </tbody>
                </table>
                    </div>
            </div><!-- /.container -->
        
    </div>
    <script   src="https://code.jquery.com/jquery-1.12.4.min.js"   integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ="   crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/js/select2.min.js"></script>
    <script src="bootstrap-datepicker.min.js"></script>
    <script src="main.js" type="text/javascript"></script>
</body>
</html>


<!-- Bootstrap core JavaScript -->