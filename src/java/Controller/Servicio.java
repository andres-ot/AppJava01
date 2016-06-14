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
    private int servicio_id;
    private String nombre, estado;

    public int getServicio_id() {
        return servicio_id;
    }

    public void setServicio_id(int servicio_id) {
        this.servicio_id = servicio_id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
    
    public ResultSet getAll()
    {
        con = new Coneccion();
        con.setConsulta(" SELECT * FROM servicios where estado='ACTIVO' ");
        rs = con.getResultado();
        return rs;
    }

    public boolean next() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
