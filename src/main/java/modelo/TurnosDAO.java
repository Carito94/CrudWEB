/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import com.mysql.cj.xdevapi.PreparableStatement;
import java.util.ArrayList;
import java.util.List;
import config.conexion;

/**
 *
 * @author karis
 */
public class TurnosDAO {
 Connection conexion;
 
public TurnosDAO(){
conexion con=new conexion();
conexion=con.getConnection();

}
public List<Turnos> listarTurnos(){
PreparedStatement ps;
ResultSet rs;
List<Turnos> lista= new ArrayList<>();
try
{
    ps=conexion.prepareStatement("SELECT id,Nombre, Apellido, Edad, Telefono, Mail, NombreDoctor,Especialidad,Fecha,Hora FROM Turnos");
    rs=ps.executeQuery();
    while(rs.next()){
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
    
    Turnos turnos=new Turnos(id,Nombre, Apellido, Edad, Telefono, Mail, NombreDoctor,Especialidad,Fecha,Hora);
    lista.add(turnos);
    }
    return lista;
}
catch(SQLException e)
{
System.out.println(e.toString());
return null;
}
}

public Turnos MostrarTurno(int _id){
PreparedStatement ps;
ResultSet rs;
Turnos Turno=null;

try{
ps=conexion.prepareStatement("SELECT id, Nombre, Apellido, Edad, Telefono, Mail, NombreDoctor,Especialidad,Fecha,Hora FROM Turnos WHERE id=?");
ps.setInt(1, _id);
rs=ps.executeQuery();
while(rs.next()){
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
    Turno= new Turnos(id,Nombre, Apellido, Edad, Telefono, Mail, NombreDoctor,Especialidad,Fecha,Hora);
}
    return Turno;
}
catch(SQLException e)
{
System.out.println(e.toString());
return null;
}
}
public boolean AgendarTurno(Turnos Turno){
PreparedStatement ps;

try{
ps=conexion.prepareStatement("INSERT INTO Turnos (Nombre, Apellido, Edad, Telefono, Mail, NombreDoctor,Especialidad,Fecha,Hora) VALUES (?,?,?,?,?,?,?,?,?)" );
ps.setString(1, Turno.getNombre());
ps.setString(2, Turno.getApellido());
ps.setInt(3, Turno.getEdad());
ps.setInt(4, Turno.getTelefono());
ps.setString(5, Turno.getMail());
ps.setString(6, Turno.getNombreDoctor());
ps.setString(7, Turno.getEspecialidad());
ps.setString(8,Turno.getFecha());
ps.setString(9,Turno.getHora());

ps.execute();
return true;
}
catch(SQLException e){
    System.out.println(e.toString());
    return false;
}

}

public boolean ModificarTurno(Turnos Turno){
PreparedStatement ps;
try{
ps=conexion.prepareStatement("UPDATE Turnos SET Nombre=?,Apellido=?, Edad=?, Telefono=?, Mail=?, NombreDoctor=?,Especialidad=?,Fecha=?,Hora=? WHERE id=?" );
ps.setString(1, Turno.getNombre());
ps.setString(2, Turno.getApellido());
ps.setInt(3, Turno.getEdad());
ps.setInt(4, Turno.getTelefono());
ps.setString(5, Turno.getMail());
ps.setString(6, Turno.getNombreDoctor());
ps.setString(7, Turno.getEspecialidad());
ps.setString(8,Turno.getFecha());
ps.setString(9,Turno.getHora());
ps.setInt(10, Turno.getid());
ps.execute();
return true;
}
catch(SQLException e){
    System.out.println(e.toString());
    return false;
}
}
public boolean EliminarTurno(int _id){
PreparedStatement ps;
try{
ps=conexion.prepareStatement("DELETE FROM Turnos WHERE id=?");
ps.setInt(1, _id);
ps.execute();
return true;
}
catch(SQLException e){
System.out.println(e.toString());
return false;
}
}
}
    
   
 