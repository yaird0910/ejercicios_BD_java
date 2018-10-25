/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package topicos_db_fehca;

import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author yair
 */
public class Conexion {
    MysqlDataSource datasource;
    Connection conexion;
    Statement st;
    String estado="todo bien";

    public Conexion() {
        datasource = new MysqlDataSource();
        datasource.setUser("root");
        datasource.setPassword("root");
        datasource.setDatabaseName("topicos_db_fecha");
        datasource.setServerName("localhost");
        try{
            conexion=datasource.getConnection();
            st=conexion.createStatement();
        } catch (SQLException ex) {
            System.out.println("excepcion conexion");
            estado=ex.getMessage();
        }
        System.out.println(estado);
    }
    
    public void getDate(){
        try {
            String opc="SELECT calif.nocontrol, alum.nombre, calif.calificacion FROM calif inner join alum on alum.nocontrol=calif.nocontrol";
            String cad="SELECT fecha, id FROM fecha";
            int x;
            ResultSet rs= st.executeQuery(cad);
            
            if(rs.next())
            {
               x=rs.getInt("id");
               System.out.println(x);
               System.out.println("la fecha es: ");
               System.out.println(rs.getDate("fecha"));
            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            System.out.println("excepcion getDate()");
        }
    }
}
