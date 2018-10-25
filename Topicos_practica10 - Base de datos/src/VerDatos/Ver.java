/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package VerDatos;

import database.DatosAlumnos;
import AltasAlum.Altas;
//import LibDatosArray.DatosAlumnos;
import javax.swing.JOptionPane;
        
import javax.swing.JTextArea;

/**
 *
 * @author yair
 */
public class Ver {

    String caddatos="";
    
    public Ver(DatosAlumnos datos,int c) {
        //datos.cadvacio();
        //caddatos=datos.RecorreIN(datos.raiz);
        
        JTextArea area=new JTextArea();
        area.setText("Nombre\tNo. control\tCalificacion\n");
        area.append(caddatos);
        area.setEditable(false);
        JOptionPane.showMessageDialog(null, area);
    }
}
