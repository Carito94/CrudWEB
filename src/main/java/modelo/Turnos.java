/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;
import java.sql.Date;

/**
 *
 * @author karis
 */
public class Turnos {
    private int id;
    private String Nombre;
    private String Apellido;
    private int Edad;
    private int Telefono;
    private String Mail;
    private String NombreDoctor;
    private String Especialidad;
    private String Fecha;
    private String Hora;

    public Turnos (int id, String Nombre, String Apellido, int Edad, int Telefono, String Mail, String NombreDoctor, String Especialidad, String Fecha, String Hora)
    {
    this.id=id;
    this.Nombre=Nombre;
    this.Apellido=Apellido;
    this.Edad=Edad;
    this.Telefono=Telefono;
    this.Mail=Mail;
    this.NombreDoctor=NombreDoctor;
    this.Especialidad=Especialidad;
    this.Fecha=Fecha;
    this.Hora=Hora;
    }

    public int getid() {
        return id;
    }

    public void setid(int id) {
        this.id = id;
    }
    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getApellido() {
        return Apellido;
    }

    public void setApellido(String Apellido) {
        this.Apellido = Apellido;
    }

    public int getEdad() {
        return Edad;
    }

    public void setEdad(int Edad) {
        this.Edad = Edad;
    }

    public int getTelefono() {
        return Telefono;
    }

    public void setTelefono(int Telefono) {
        this.Telefono = Telefono;
    }

    public String getMail() {
        return Mail;
    }

    public void setMail(String Mail) {
        this.Mail = Mail;
    }

    public String getNombreDoctor() {
        return NombreDoctor;
    }

    public void setNombreDoctor(String NombreDoctor) {
        this.NombreDoctor = NombreDoctor;
    }

    public String getEspecialidad() {
        return Especialidad;
    }

    public void setEspecialidad(String Especialidad) {
        this.Especialidad = Especialidad;
    }

   public String getFecha() {
        return Fecha;
    }

    public void setFecha(String Fecha) {
        this.Fecha = Fecha;
    }
    public String getHora() {
        return Hora;
    }

    public void setHora(String Hora) {
        this.Hora = Hora;
    }
}
