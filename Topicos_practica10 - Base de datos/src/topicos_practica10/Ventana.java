/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package topicos_practica10;

//import LibDatosArray.DatosAlumnos;
import Actualizardatos.Actualizar;
import AltasAlum.Altas;
import BajasAlum.Bajas;
import database.DatosAlumnos;
import VerDatos.Ver;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.WindowConstants;

/**
 *
 * @author yair
 */
public class Ventana extends JFrame implements ActionListener{
    
    static JFrame vent=new JFrame();
    JButton ba=new JButton("altas");
    static JButton bb=new JButton("bajas");
    static JButton bv=new JButton("ver");
    static JButton bact=new JButton("actualizar");
    String aux[]=new String[3]; int c=0;
    
    
    Altas obj=new Altas();
    Ver d;
    Bajas baj=new Bajas();
    DatosAlumnos Datos=new DatosAlumnos();

    public void ventanita() {
        vent.setTitle("ventana 1");
        vent.setSize(350, 300);
        vent.setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);
        vent.setLayout(null);
        
        ba.setBounds(100, 20, 100, 40);
        bb.setBounds(100, 80, 100, 40);
        bv.setBounds(100, 140, 100, 40);
        bact.setBounds(100, 200, 100, 40);
        vent.add(ba);
        vent.add(bb);
        vent.add(bv);
        vent.add(bact);
        vent.setVisible(true);
        
        ba.addActionListener(this);
        bb.addActionListener(this);
        bv.addActionListener(this);
        bact.addActionListener(this);
    }
    
     @Override
    public void actionPerformed(ActionEvent e) {
        
        if(e.getSource()==ba) //presiona el boton Alta
        {
           Datos=obj.alta(Datos,c);
           c++;
        }
        else if(e.getSource()==bv) //presiona el boton Ver
        {
            d=new Ver(Datos,c);
        }
        else if(e.getSource()==bact)  //presiona el boton Actualizar
        {
            Actualizar f=new Actualizar();
            f.actualizar(Datos, c);
        }
        else{                            //presiona el boton Baja
            baj.bajas(Datos, c);
            c--;
        }
    }
     
  
    
}
