/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package topicos_database;

import javax.swing.JOptionPane;

/**
 *
 * @author yair
 */
public class Topicos_DataBase {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        int opc,c = 0;
        imp("conectando...");
        Conexion con=new Conexion();
        con.conexion();
        imp(con.estado);
        
        do{
            imp("Elija opcion:");
            imp("1.-agregar usuarion");
            imp("2.-modificar usuario");
            imp("3.-eliminar usuario");
            imp("4.-ver usuarios");
            imp("5.-salir");
            opc=Integer.parseInt(JOptionPane.showInputDialog("elije opcion"));
            switch(opc)
            {
                case 1:String nom=JOptionPane.showInputDialog("nombre del alumno");
                       String calif=JOptionPane.showInputDialog("calificacion del alumno");
                       c=Integer.parseInt(JOptionPane.showInputDialog("introduce numero de control"));
                       con.agregar(nom,c,calif);
                       imp(con.estado);
                    break;
                case 2:c=Integer.parseInt(JOptionPane.showInputDialog("introduce numero de control"));
                       con.modificar(c);
                    break;
                case 3:c=Integer.parseInt(JOptionPane.showInputDialog("introduce numero de control a eliminar"));
                       con.baja(c);
                       imp(con.estado);
                    break;
                case 4:con.verdat();
                    break;
            }
        }while(opc!=5);
    }
    
    public static void imp(String x){
        System.err.println(x);
    }
}
