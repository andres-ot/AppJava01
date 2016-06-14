/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Conexion.Coneccion;
import java.sql.ResultSet;

/**
 *
 * @author Administrador
 */
public class Servicio {
    private ResultSet rs = null;
    private Coneccion con = null;
    
    public ResultSet getAll()
    {
        con = new Coneccion();
        con.setConsulta(" SELECT * FROM servicios where estado='ACTIVO' ");
        rs = con.getResultado();
        return rs;
    }
}
