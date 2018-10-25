/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Actualizardatos;

import database.DatosAlumnos;
//import LibDatosArray.DatosAlumnos;
//import LibDatosArray.DatosAlumnos.Nodo;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JTextField;
import javax.swing.border.EmptyBorder;

/**
 *
 * @author yair
 */
public class Actualizar extends JFrame implements ActionListener{

    JFrame v=new JFrame("Actualizar");
    JPanel p=new JPanel();
    JTextField[] calif;
    JButton boton=new JButton("Actualizar");
    int c;
    String[][] datos;
    DatosAlumnos dat;
    
    public String[][] actualizar(DatosAlumnos dat,int c) {
        this.dat=dat;
        this.c=c;
        int y=c*50;
        v.setBounds(350, 50, 330, y+100);
        v.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        p.setLayout(new GridLayout(c+2,3));                  //panel de 7 filas q se agrega a la ventana
        p.setBorder(new EmptyBorder(20,20,20,20));          //bordes
        JLabel[][] tabla=new JLabel[c][2];
        JLabel[] tab=new JLabel[3];
        calif=new JTextField[c];
        
       // dat.setAlumnos(c);
        //datos=dat.RecorreINA(dat.raiz);
        
        for(int j=0;j<c;j++)
        {
            tabla[j][0]=new JLabel(datos[1][j]);
            tabla[j][1]=new JLabel(datos[0][j]);
            calif[j]=new JTextField(datos[2][j]);
        }
        
        tab[0]=new JLabel("No. control");
        tab[1]=new JLabel("Nombre");
        tab[2]=new JLabel("calificacion");
        p.add(tab[0]);
        p.add(tab[1]);
        p.add(tab[2]);
        
        for(int j=0;j<c;j++)
        {
            p.add(tabla[j][0]);
            p.add(tabla[j][1]);
            p.add(calif[j]);
        }
        
        p.add(boton);
        
        v.add(p);
        v.setVisible(true);
        
        boton.addActionListener(this);
        System.out.println("retorna el arreglo");
        return datos;
        
    }

    
    @Override
    public void actionPerformed(ActionEvent e) {
        
        for(int j=0;j<c;j++)
        {
            datos[2][j]=calif[j].getText();
        }
       // dat.arreglo();
       // dat.actcalif(datos);
       // dat.RecorreINAc(dat.raiz);
        v.dispose();
    }
    
    
    
}
