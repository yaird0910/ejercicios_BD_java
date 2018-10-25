/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package AltasAlum;

//import LibDatosArray.DatosAlumnos;
import database.DatosAlumnos;
import topicos_practica10.Ventana; 

import java.awt.Font;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.BoxLayout;
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
public class Altas extends JFrame{
    JFrame v=new JFrame("Alta de alumno");
    JPanel p=new JPanel();
    JPanel pb=new JPanel();
    JLabel lab=new JLabel("nombre");
    JLabel lab2=new JLabel("No. de control");
    JLabel lab3=new JLabel("Calificacion");
    JTextField tex=new JTextField();
    JTextField tex2=new JTextField();
    JTextField tex3=new JTextField();
    JButton b=new JButton("Registrar");
    
    String nombre;
    int numcont,calif;
    
    
    public DatosAlumnos alta(DatosAlumnos datos,int c) {
       /* v.setBounds(350, 50, 280, 290);
        v.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        p.setLayout(new GridLayout(7,1));   //panel de 7 filas q se agrega a la ventana
        p.setBorder(new EmptyBorder(0,30,10,30)); //bordes
        //lab.setBounds(100, 50, 100, 20);
        //tex.setBounds(100, 80, 100, 20);
        //lab2.setBounds(100, 110, 100, 20);
        //tex2.setBounds(100, 140, 100, 20);
        tex.setFont(new Font("Arial", Font.BOLD, 18));
        tex2.setFont(new Font("Arial", Font.BOLD, 18));
        tex3.setFont(new Font("Arial", Font.BOLD, 18));
        p.add(lab);
        p.add(tex);
        p.add(lab2);
        p.add(tex2);
        p.add(lab3);
        p.add(tex3);
        pb.setLayout(new BoxLayout(pb,BoxLayout.X_AXIS)); 
        pb.add(b);
        p.add(pb);
        v.add(p);
        v.setVisible(true);
        
        b.addActionListener(this);
        */
        
       // datos[0][c]=JOptionPane.showInputDialog("Introduce en nombre del alumno");
        //datos[1][c]="00"+Integer.toString(c+1);
       //return datos;
        nombre=JOptionPane.showInputDialog("introduce el nombre del alumno");
        numcont=Integer.parseInt(JOptionPane.showInputDialog("introduce su numero de control"));
        datos.agregar(nombre, numcont, c);
        
        return datos;
    }

   
}
