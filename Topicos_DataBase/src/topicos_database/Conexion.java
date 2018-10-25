/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package topicos_database;

import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
/**
 *
 * @author yair
 */
public class Conexion {
    MysqlDataSource datasource;
    Connection conexion;
    Statement st;
    String estado="todo bien";
    int cont=0;
    String DatosAl[][];

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

    void agregar(String nom, int nocontrol, String calif) {
        try {
            st.executeUpdate("INSERT INTO alum(nocontrol,nombre) VALUES('"+nocontrol+"','"+nom+"')");
            st.executeUpdate("INSERT INTO calif(nocontrol,calificacion) VALUES('"+nocontrol+"','"+calif+"')");
        } catch (SQLException ex) {
            estado=ex.getMessage(); 
            System.out.println("excepcion agregar");
        }
    }
    
    void baja(int nocontrol){
        try {
            st.executeUpdate("DELETE FROM calif WHERE nocontrol='"+nocontrol+"'");
            //st.executeUpdate("DELETE FROM calif WHERE nocontrol=nocontrol");
            st.executeUpdate("DELETE FROM alum WHERE nocontrol='"+nocontrol+"'");
            //st.executeUpdate("DELETE FROM alum WHERE nocontrol=nocontrol");
        } catch (SQLException ex) {
            estado=ex.getMessage(); 
            System.out.println("excepcion baja");
        }
    }
    
    void verdat(){
        
        String opc="SELECT calif.nocontrol, alum.nombre, calif.calificacion FROM calif inner join alum on alum.nocontrol=calif.nocontrol";
        String opc3="SELECT nocontrol, calificacion FROM calif";
        try {
            cont=0;
            int r=0,i=0;
            String r1="",r2="";
            ResultSet rs = st.executeQuery(opc);
             while(rs.next())
                cont++;
             DatosAl=new String[cont][3];
             System.out.println(cont);
             
             ResultSet rs2= st.executeQuery(opc);
             while(rs2.next()) {
                 r=rs2.getInt("nocontrol");
                 r1=rs2.getString("nombre");
                 r2=rs2.getString("calificacion");
                 DatosAl[i][0]=String.valueOf(r);
                 DatosAl[i][1]=r1;
                 DatosAl[i][2]=r2;
                 System.out.println(i+" "+DatosAl[i][0]+"\t"+DatosAl[i][1]+"\t"+DatosAl[i][2]);
                 i++;
             }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            System.out.println("excepcion verdat()");
        }
    }
    
    void modificar(int nocontrol){
        String nuevacalif=JOptionPane.showInputDialog("nueva calificacion");
        try {
            st.executeUpdate("UPDATE alumnos.calif SET calificacion='"+nuevacalif+"' WHERE nocontrol='"+nocontrol+"'");
        } catch (SQLException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
