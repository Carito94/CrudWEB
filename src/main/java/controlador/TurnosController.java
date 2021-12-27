/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.TurnosDAO;
import modelo.Turnos;
import javax.servlet.RequestDispatcher;

/**
 *
 * @author karis
 */
@WebServlet(name = "TurnosController", urlPatterns = {"/TurnosController"})
public class TurnosController extends HttpServlet {


    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        TurnosDAO turnosdao=new TurnosDAO();
        String accion;
        RequestDispatcher dispatcher=null;
        accion=request.getParameter("accion");
        
        if(accion==null||accion.isEmpty()){
        dispatcher=request.getRequestDispatcher("Vistas/Turnos.jsp");
        
        }else if(accion.equals("Modificar")){
        dispatcher=request.getRequestDispatcher("Vistas/Modificar.jsp");
       
        }else if(accion.equals("actualizar")){
        int id=Integer.parseInt(request.getParameter("id"));
        String Nombre=request.getParameter("Nombre");
        String Apellido=request.getParameter("Apellido");
        int Edad=Integer.parseInt(request.getParameter("Edad"));
        int Telefono=Integer.parseInt(request.getParameter("Telefono"));
        String Mail=request.getParameter("Mail");
        String NombreDoctor=request.getParameter("NombreDoctor");
        String Especialidad=request.getParameter("Especialidad");
        String Fecha=request.getParameter("Fecha");
       String Hora=request.getParameter("Hora");
        
      
        
        Turnos turno=new Turnos(id,Nombre,Apellido,Edad,Telefono,Mail,NombreDoctor,Especialidad,Fecha,Hora);
        turnosdao.ModificarTurno(turno);
        
        }else if(accion.equals("Eliminar")){
        int id=Integer.parseInt(request.getParameter("id"));
        turnosdao.EliminarTurno(id);
        
        dispatcher=request.getRequestDispatcher("Vistas/Turnos.jsp");
        
        }else if(accion.equals("nuevo")){
        dispatcher=request.getRequestDispatcher("Vistas/Nuevo.jsp");
        
        }else if(accion.equals("insert")){
       

        int id=Integer.parseInt(request.getParameter("id"));
        String Nombre=request.getParameter("Nombre");
        String Apellido=request.getParameter("Apellido");
        int Edad=Integer.parseInt(request.getParameter("Edad"));
        int Telefono=Integer.parseInt(request.getParameter("Telefono"));
        String Mail=request.getParameter("Mail");
        String NombreDoctor=request.getParameter("NombreDoctor");
        String Especialidad=request.getParameter("Especialidad");
        
        String Fecha=request.getParameter("Fecha");
        String Hora=request.getParameter("Hora");
        
        Turnos turno= new Turnos(0,Nombre,Apellido,Edad,Telefono,Mail,NombreDoctor,Especialidad,Fecha,Hora);
        turnosdao.AgendarTurno(turno);
        }else{
         dispatcher=request.getRequestDispatcher("Vistas/Turnos.jsp");
        }
        
        
        dispatcher.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request,response);
    }

  
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
