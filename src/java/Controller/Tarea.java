
package Controller;

import Conexion.Coneccion;
import java.sql.ResultSet;

public class Tarea {

    
    private String nombre, tarea, estado, fecha;
    private int tarea_id,responsable_id;
    private ResultSet rs = null;
    private Coneccion con = null;

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }
    
    
    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
   
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getTarea() {
        return tarea;
    }

    public void setTarea(String tarea) {
        this.tarea = tarea;
    }

    public int getTarea_id() {
        return tarea_id;
    }

    public void setTarea_id(int tarea_id) {
        this.tarea_id = tarea_id;
    }

    public int getResponsable_id() {
        return responsable_id;
    }

    public void setResponsable_id(int responsable_id) {
        this.responsable_id = responsable_id;
    }
    
    public void guardar() {
        con = new Coneccion();
        con.setInsertar("insert into tareas(nombre, responsable_id, estado, fecha) values ('" +this.getNombre()+ "',"+this.getResponsable_id()+",'ACTIVA','"+this.getFecha()+"')");
    }
    
    public ResultSet getAll() {
        
        con = new Coneccion();
        con.setConsulta(" SELECT t.nombre as tareas FROM responsables where estado='ACTIVO' ");
        rs = con.getResultado();
        
        return rs;
    }
    
}
