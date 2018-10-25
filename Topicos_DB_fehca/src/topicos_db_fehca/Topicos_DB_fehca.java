/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package topicos_db_fehca;

import java.sql.Date;
import java.util.Calendar;
import java.util.GregorianCalendar;


/**
 *
 * @author yair
 */
public class Topicos_DB_fehca {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
      
        System.err.println("conectando...");
        Conexion con=new Conexion();
        con.getDate();
        
        GregorianCalendar fecha=new GregorianCalendar(2013,11,(31+73));
        fecha.set(2001, 7, 9);
        System.out.println(fecha.getTime());
        System.out.println(fecha.get(Calendar.YEAR));
        System.out.println(fecha.get(Calendar.DAY_OF_MONTH));
        System.out.println(fecha.get(Calendar.MONTH));
        System.out.println(Calendar.DECEMBER);
        
        Date fecha2=new Date(2014, 0, 7);
        System.out.println(fecha2.getYear());
        System.out.println(fecha2.getMonth());
        System.out.println(fecha2.getDate());
        System.out.println(fecha2);
    }
}
