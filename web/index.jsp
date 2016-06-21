<%-- 
    Document   : index.jsp
    Created on : 13-06-2016, 07:58:37 PM
    Author     : Administrador
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
 
<html>
    <head>
        <title>jQuery</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/css/select2.min.css" rel="stylesheet" />
        <link href="bootstrap-datepicker.min.css" rel="stylesheet" />
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-md-offset-3">
                    <h1>Asignar responsabilidades</h1>
                    <hr />
                    <form method="post" action="/weajquery/Guardar">
                    <div class="form-group">
                        <caption>Servicios</caption>
                        <select class="form-control" name="servicios" id="servicios">
                            <option>Seleccione un servicios...</option>
                        </select>
                    </div>
                    
                    <div class="form-group">
                        <caption>Unidades</caption>
                        <select class="form-control" name="unidades" id="unidades" disabled>
                            <option>Seleccione un unidades...</option>
                        </select>
                    </div>
                    
                    <div class="form-group">
                        <caption>Responsable</caption>
                        <select class="form-control" name="responsable_id" id="responsables" disabled>
                            <option>Seleccione un responsable...</option>
                        </select>
                    </div>
                    
                    <div class="form-group">
                        <caption>Tarea</caption>
                        <input type="text" name="nombre" class="form-control" id="tarea">
                    </div>
                    
                    <div class="form-group">
                            
                        <caption>Fecha</caption>
                        <input type="text" name="fecha" class="form-control" id="fecha">
                        
                    </div>
                    
                    <div class="form-group">
                        <button class="btn btn-block btn-success" id="crear">Crear</button>
                    </div>
                    </form>
                    
                </div>
            </div>            
        </div>

        <script   src="https://code.jquery.com/jquery-1.12.4.min.js"   integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ="   crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/js/select2.min.js"></script>
        <script src="bootstrap-datepicker.min.js"></script>
        <script src="main.js" type="text/javascript"></script>
    </body>
</html>
