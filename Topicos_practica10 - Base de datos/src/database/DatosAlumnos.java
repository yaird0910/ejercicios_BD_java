/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author yair
 */
public class DatosAlumnos {
    MysqlDataSource datasource;
    Connection conexion;
    Statement st;
    String estado="todo bien";
    int cont=0;

    public void conexion() {
        datasource = new MysqlDataSource();
        datasource.setUser("root");
        datasource.setPassword("root");
        datasource.setDatabaseName("alumnos");
        datasource.setServerName("localhost");
        try {
            conexion=datasource.getConnection();
            st=conexion.createStatement();
        } catch (SQLException ex) {
            System.out.println("excepcion conexion");
            estado=ex.getMessage();
        }
    }

    public void agregar(String nom, int nocontrol,int c) {
        try {
            st.executeUpdate("INSERT INTO alum(nocontrol,nombre) VALUES('"+nocontrol+"','"+nom+"')");
            st.executeUpdate("INSERT INTO calif(nocontrol,calificacion) VALUES('"+nocontrol+"','"+"S/capturar"+"')");
        } catch (SQLException ex) {
            estado=ex.getMessage(); 
            System.out.println("excepcion agregar");
            
        }
    }
    
    void baja(int nocontrol){
        try {
            st.executeUpdate("DELETE FROM calif WHERE nocontrol='"+nocontrol+"'");
            st.executeUpdate("DELETE FROM alum WHERE nocontrol='"+nocontrol+"'");
        } catch (SQLException ex) {
            estado=ex.getMessage(); 
            System.out.println("excepcion baja");
        }
    }
    
    void verdat(){
        String opc="SELECT calif.nocontrol, alum.nombre,calif.calificacion from calif inner join alum on alum.nocontrol=calif.nocontrol";
        try {
            ResultSet rs= st.executeQuery(opc);
             while(rs.next()){
                cont++;
             }
        } catch (SQLException ex) {
            System.out.println("excepcion verdat()");
        }
    }

    
}
