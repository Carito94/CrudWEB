/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package config;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author karis
 */
public class conexion {
    public String driver= "com.mysql.jdbc.Driver";
    public Connection getConnection()
    {
    Connection conexion=null;
    
    try
    {
    Class.forName(driver);
    conexion=DriverManager.getConnection("jdbc:mysql://localhost:3306/clinica", "root", "");
    }
    catch(ClassNotFoundException | SQLException e)
    {
    System.out.println(e.toString());
    }    
        
    return conexion;
    }
    public static void main (String[] args) throws SQLException {
    Connection Conexion=null;
    conexion con= new conexion();
    Conexion=con.getConnection();
    PreparedStatement ps;
    ResultSet rs;
    ps=Conexion.prepareStatement("SELECT * FROM Turnos");
    rs=ps.executeQuery();
    while (rs.next()){
    int id=rs.getInt("id");
    String Nombre=rs.getString("Nombre");
    String Apellido=rs.getString("Apellido");
    int Edad=rs.getInt("Edad");
    int Telefono=rs.getInt("Telefono");
    String Mail=rs.getString("Mail");
    String NombreDoctor=rs.getString("NombreDoctor");
    String Especialidad=rs.getString("Especialidad");
    String Fecha=rs.getString("Fecha");
    String Hora=rs.getString("Hora");
    System.out.println("id:"+id+"Nombre: "+Nombre+"Apellido: "+Apellido+"Edad: "+Edad+"Telefono: "+Telefono+"Mail: "+Mail+"NombreDoctor: "+NombreDoctor+"Especialidad: "+Especialidad+"Fecha:"+Fecha+"Hora:"+Hora);
    
    
    }
    }
}
