/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.ipn.escom.turismoazcapotzalco.controller.crud.reportes;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import mx.ipn.escom.entidades.Profesor;
import mx.ipn.escom.servicios.ProfesorServicio;
import static mx.ipn.escom.servicios.util.Validaciones.esEntero;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author angel
 */
@Controller
@RequestMapping("administrador/")
public class ProfesorReporteController {

    @Autowired
    ProfesorServicio profesorServicio;

     @RequestMapping(value = "reporteIndividualProfesor/{idProfesor}", method = RequestMethod.GET)
    public void reporteIndividualProfesorController(@PathVariable String idProfesor, HttpSession session,
            HttpServletRequest request, HttpServletResponse response) {
        if (session.getAttribute("usuario") == null) {
            return;
        }
        if (esEntero(idProfesor)) {
            Profesor profesor = profesorServicio.buscarPorId(Integer.parseInt(idProfesor));
            response.setContentType("application/application/vnd.ms-excel");
            response.setHeader("Content-Disposition", "attachment; filename=\"" + profesor.getNombre() + ".xls\"");
            PrintWriter out;
            try {
                out = response.getWriter();
                out.println("<!DOCTYPE html>");
                out.println("<html>");
                out.println("<head>");
                out.println("<title></title>");
                out.println("</head>");
                out.println("<body>");
                out.println("<h1>Reporte de Profesor: " + profesor.getNombre() + profesor.getPaterno()+ "</h1>");
                out.println("<table>");
                out.println("<thead>");
                out.println("</thead>");
                out.println("<tbody>");
                out.println("<tr>");
                out.println("<th>"+"Nombre Profesor" +"</th>"+"<th>"+"Apellido Paterno" +"</th>" +"<th>"+"Apellido Materno" +"</th>" + "<th>"+"Correo" +"</th>" + "<th>"+"Teléfono" +"</th>" );
                out.println("</tr>");
                out.println("<tr>");
                out.println("<td>" + profesor.getNombre() + "</td>"+"<td>" + profesor.getPaterno()+"</td>" + "<td>"+ profesor.getMaterno()+ "</td>"+ "<td>"+ profesor.getCorreo()+"</td>"+ "<td>"+ profesor.getTelefono()+ "</td>");
                out.println("</tr>");
                out.println("</tbody>");
                out.println("</table>");
                out.println("<h3> Observaciones del Profesor " + profesor.getNombre() + profesor.getPaterno()+ "</h3>");
                out.println("</body>");
                out.println("</html>");
            } catch (IOException ex) {
                Logger.getLogger(ProfesorReporteController.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
    }

    @RequestMapping(value = "reporteProfesor", method = RequestMethod.GET)
    public void reporteProfesorController(HttpSession session,
            HttpServletRequest request, HttpServletResponse response) {
        if (session.getAttribute("usuario") == null) {
            return;
        }
        List<Profesor> profesors = profesorServicio.buscarTodos();
        response.setContentType("application/application/vnd.ms-excel");
        response.setHeader("Content-Disposition", "attachment; filename=\"profesors.xls\"");
        PrintWriter out;
        try {
            out = response.getWriter();
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title></title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Reporte de Profesor de Casa de Cultura</h1>");
            out.println("<table>");
            out.println("<thead>");
            out.println("</thead>");
            out.println("<tbody>");
            out.println("<tr>");
            out.println("<th>"+"Nombre Profesor" +"</th>"+"<th>"+"Apellido Paterno" +"</th>" +"<th>"+"Apellido Materno" +"</th>" + "<th>"+"Correo" +"</th>" + "<th>"+"Teléfono" +"</th>"+ "<th>"+"Comentarios" +"</th>" );
            out.println("</tr>");
            for (Profesor profesor : profesors) {
                out.println("<tr>");
                out.println("<td>" + profesor.getNombre() + "</td>");
                out.println("<td>" + profesor.getPaterno() + "</td>");
                out.println("<td>" + profesor.getMaterno() + "</td>");
                out.println("<td>" + profesor.getCorreo() + "</td>");
                out.println("<td>" + profesor.getTelefono() + "</td>");
                out.println("</tr>");
            }
            out.println("</tbody>");
            out.println("</table>");
            out.println("</body>");
            out.println("</html>");
        } catch (IOException ex) {
            Logger.getLogger(ProfesorReporteController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
