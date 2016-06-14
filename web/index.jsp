<%-- 
    Document   : index.jsp
    Created on : 13-06-2016, 07:58:37 PM
    Author     : Administrador
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet" %>
<%@page import="Controller.Responsable" %>
<%@page import="Controller.Unidad"%>
<%@page import="Controller.Servicio"%>


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
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-md-offset-3">
                    <h1>Asignar responsabilidades</h1>
                    <hr />
                    
                    <div class="form-group">
                        <caption>Servicios</caption>
                        <select class="form-control" name="servicios" id="servicios">
                            <option>Seleccione un servicios...</option>
                            <% 
                                Servicio ser = new Servicio();
                                ResultSet servicios = ser.getAll();
                                while ( servicios.next() ) {
                                    out.println("<option value=\""+servicios.getString("servicio_id")+"\">"+servicios.getString("nombre")+"</option>");
                                }
                            %>
                        </select>
                    </div>
                    
                    <div class="form-group">
                        <caption>Unidades</caption>
                        <select class="form-control" name="unidades" id="unidades" disabled>
                            <option>Seleccione un unidades...</option>
                            <% 
                                Unidad un = new Unidad();
                                ResultSet unidades = un.getAll();
                                while ( unidades.next() ) {
                                    out.println("<option x-data-parent=\""+unidades.getString("servicio_id")+"\" value=\""+unidades.getString("unidad_id")+"\">"+unidades.getString("nombre")+"</option>");
                                }
                            %>
                        </select>
                    </div>
                    
                    <div class="form-group">
                        <caption>Responsable</caption>
                        <select class="form-control" name="responsabilidad" id="responsables" disabled>
                            <option>Seleccione un responsable...</option>
                            <% 
                                Responsable res = new Responsable();
                                ResultSet responsables = res.getAll();
                                while ( responsables.next() ) {
                                    out.println("<option <option x-data-parent=\""+responsables.getString("unidad_id")+"\" value=\""+responsables.getString("reponsable_id")+"\">"+responsables.getString("nombre")+"</option>");
                                }
                            %>
                            
                        </select>
                    </div>
                    
                    <div class="form-group">
                        <caption>Tarea</caption>
                        <input type="text" name="tarea" class="form-control" id="tarea">
                    </div>
                    
                    <div class="form-group">
                        <button class="btn btn-block btn-success" id="crear">Crear</button>
                    </div>
                    
                </div>
            </div>
            
            
        </div>
       <script   src="https://code.jquery.com/jquery-1.12.4.min.js"   integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ="   crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
        <script src="main.js" type="text/javascript"></script>
    </body>
</html>
