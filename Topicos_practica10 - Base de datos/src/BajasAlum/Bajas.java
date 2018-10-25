/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package BajasAlum;

import database.DatosAlumnos;
//import LibDatosArray.DatosAlumnos;
import java.awt.BorderLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextArea;
import javax.swing.JTextField;

/**
 *
 * @author yair
 */
public class Bajas extends JFrame implements ActionListener{

     JFrame v=new JFrame("Bajas");
    JPanel p=new JPanel();
    JLabel label=new JLabel("Introduce el No. de control del alumno");
    JTextField baja=new JTextField();
    JButton boton=new JButton("Borrar");
    JTextArea area=new JTextArea();
    String caddatos=""; int c;
    String[][] datos;
    DatosAlumnos act;
    
    public String[][] bajas(DatosAlumnos datos, int c) {
        act=datos;
        this.datos=datos.
        this.c=c;
        int y=c*60;
    v.setBounds(350, 50, 330, 400);
    v.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);    
    /*p.setLayout(new BorderLayout());
    p.add(area, BorderLayout.CENTER);
    p.add(baja, BorderLayout.SOUTH);
    v.add(p);*/
     for(int x=0;x<c;x++)
        {
            caddatos=caddatos+this.datos[0][x]+"\t"+this.datos[1][x]+"\t"+this.datos[2][x]+"\n";
        }
    v.setLayout(null);
    area.setBounds(20, 20, 275, 220);
    area.setText("Nombre\tNo. control\tCalificacion\n");
    area.append(caddatos);
    area.setEditable(false);
    label.setBounds(20, 280, 250, 25);
    baja.setBounds(20, 310, 180, 30);
    boton.setBounds(210, 310, 90, 30);
    
    v.add(area);
    v.add(label);
    v.add(baja);
    v.add(boton);
    v.setResizable(false);
    v.setVisible(true);
    
    boton.addActionListener(this);
        
    return this.datos;
    
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        
        String b=baja.getText();
        for(int j=0;j<c;j++)
        {
            if(datos[1][j].equalsIgnoreCase(b)==true)
            {
                for(;j<c;j++)
                {
                    datos[0][j]=datos[0][j+1];
                    datos[1][j]=datos[1][j+1];
                    datos[2][j]=datos[2][j+1];
                }
                break;
            }
        }
        act.actcalif(datos);
        v.dispose();
        
    }
    
    
   
    
    
}
