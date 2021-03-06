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
import mx.ipn.escom.entidades.Alumno;
import mx.ipn.escom.servicios.AlumnoServicio;
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
public class AlumnoReporteController {

    @Autowired
    AlumnoServicio alumnoServicio;

    @RequestMapping(value = "reporteIndividualAlumno/{idAlumno}", method = RequestMethod.GET)
    public void reporteIndividualAlumnoController(@PathVariable String idAlumno, HttpSession session,
            HttpServletRequest request, HttpServletResponse response) {
        if (session.getAttribute("usuario") == null) {
            return;
        }
        if (esEntero(idAlumno)) {
            Alumno alumno = alumnoServicio.buscarPorId(Integer.parseInt(idAlumno));
            response.setContentType("application/application/vnd.ms-excel");
            response.setHeader("Content-Disposition", "attachment; filename=\"" + alumno.getNombre() + ".xls\"");
            PrintWriter out;
            try {
                out = response.getWriter();
                out.println("<!DOCTYPE html>");
                out.println("<html>");
                out.println("<head>");
                out.println("<title></title>");
                out.println("</head>");
                out.println("<body>");
                out.println("<h1>Reporte de Alumno: " + alumno.getNombre() + alumno.getPaterno()+ "</h1>");
                out.println("<table>");
                out.println("<thead>");
                out.println("</thead>");
                out.println("<tbody>");
                out.println("<tr>");
                out.println("<th>"+"Nombre Alumno" +"</th>"+"<th>"+"Apellido Paterno" +"</th>" +"<th>"+"Apellido Materno" +"</th>" + "<th>"+"TUTOR" +"</th>" + "<th>"+"Teléfono" +"</th>" );
                out.println("</tr>");
                out.println("<tr>");
                out.println("<td>" + alumno.getNombre() + "</td>"+"<td>" + alumno.getPaterno()+"</td>" + "<td>"+ alumno.getMaterno()+ "</td>"+ "<td>"+ alumno.getNombreTutor()+"</td>"+ "<td>"+ alumno.getTelefono()+ "</td>");
                out.println("</tr>");
                out.println("</tbody>");
                out.println("</table>");
                out.println("<h3> Observaciones del Alumno " + alumno.getNombre() + alumno.getPaterno()+ "</h3>");
                out.println("</body>");
                out.println("</html>");
            } catch (IOException ex) {
                Logger.getLogger(AlumnoReporteController.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
    }

    @RequestMapping(value = "reporteAlumno", method = RequestMethod.GET)
    public void reporteAlumnoController(HttpSession session,
            HttpServletRequest request, HttpServletResponse response) {
        if (session.getAttribute("usuario") == null) {
            return;
        }
        List<Alumno> alumnos = alumnoServicio.buscarTodos();
        response.setContentType("application/application/vnd.ms-excel");
        response.setHeader("Content-Disposition", "attachment; filename=\"alumnos.xls\"");
        PrintWriter out;
        try {
            out = response.getWriter();
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title></title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Reporte de Alumno de Casa de Cultura</h1>");
            out.println("<table>");
            out.println("<thead>");
            out.println("</thead>");
            out.println("<tbody>");
            out.println("<tr>");
            out.println("<th>"+"Nombre Alumno" +"</th>"+"<th>"+"Apellido Paterno" +"</th>" +"<th>"+"Apellido Materno" +"</th>" + "<th>"+"TUTOR" +"</th>" + "<th>"+"Teléfono" +"</th>" );
            out.println("</tr>");
            for (Alumno alumno : alumnos) {
                out.println("<tr>");
                out.println("<td>" + alumno.getNombre() + "</td>");
                out.println("<td>" + alumno.getPaterno() + "</td>");
                out.println("<td>" + alumno.getMaterno() + "</td>");
                out.println("<td>" + alumno.getNombreTutor() + "</td>");
                out.println("<td>" + alumno.getTelefono() + "</td>");
                out.println("</tr>");
            }
            out.println("</tbody>");
            out.println("</table>");
            out.println("</body>");
            out.println("</html>");
        } catch (IOException ex) {
            Logger.getLogger(AlumnoReporteController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
