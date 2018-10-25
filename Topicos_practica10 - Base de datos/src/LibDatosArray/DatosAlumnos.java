/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package LibDatosArray;

import VerDatos.Ver;
import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JLabel;
import javax.swing.JOptionPane;

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
    String DatosAl[][];
     int c=0;
     String cad;
     
     
     public void datosalumnos () {
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
    
    public String[][] agregar(String nom,int nocontrol,int c){
        try {
            st.executeUpdate("INSERT INTO alum(nocontrol,nombre) VALUES('"+nocontrol+"','"+nom+"')");
            st.executeUpdate("INSERT INTO calif(nocontrol,calificacion) VALUES('"+nocontrol+"','"+"S/Capturar"+"')");
        } catch (SQLException ex) {
            estado=ex.getMessage(); 
            System.out.println("excepcion agregar");
        }

        return DatosAl;
    }
    
    public String[][] verdat(){
        
        String opc="SELECT calif.nocontrol, alum.nombre,calif.calificacion from calif inner join alum on alum.nocontrol=calif.nocontrol";
        try {
            cont=0;
            int r=0,i=0;
            String r1="",r2="";
            ResultSet rs= st.executeQuery(opc);
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
                 System.out.println(i+DatosAl[i][0]+"\t"+DatosAl[i][1]+"\t"+DatosAl[i][2]);
                 i++;
             }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            System.out.println("excepcion verdat()");
        }
        return DatosAl;
    }
    //vaciar cadena antes del recorrido INorden
    public void cadvacio(){     
        cad="";
    }    
    
}
