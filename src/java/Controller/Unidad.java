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
public class Unidad {
    private ResultSet rs = null;
    private Coneccion con = null;
    private String nombre, estado;
    private int unidad_id, servicio_id;

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

    public int getUnidad_id() {
        return unidad_id;
    }

    public void setUnidad_id(int unidad_id) {
        this.unidad_id = unidad_id;
    }

    public int getServicio_id() {
        return servicio_id;
    }

    public void setServicio_id(int servicio_id) {
        this.servicio_id = servicio_id;
    }
    
    
    
    public ResultSet getAll()
    {
        con = new Coneccion();
        con.setConsulta(" SELECT * FROM unidades where estado='ACTIVO' ");
        rs = con.getResultado();
        
        return rs;
    }
}
