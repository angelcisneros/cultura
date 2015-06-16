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
import mx.ipn.escom.entidades.Sala;
import mx.ipn.escom.servicios.SalaServicio;
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
public class SalaReporteController {

    @Autowired
    SalaServicio salaServicio;

     @RequestMapping(value = "reporteIndividualSala/{idSala}", method = RequestMethod.GET)
    public void reporteIndividualSalaController(@PathVariable String idSala, HttpSession session,
            HttpServletRequest request, HttpServletResponse response) {
        if (session.getAttribute("usuario") == null) {
            return;
        }
        if (esEntero(idSala)) {
            Sala sala = salaServicio.buscarPorId(Integer.parseInt(idSala));
            response.setContentType("application/application/vnd.ms-excel");
            response.setHeader("Content-Disposition", "attachment; filename=\"" + sala.getNombre() + ".xls\"");
            PrintWriter out;
            try {
                out = response.getWriter();
                out.println("<!DOCTYPE html>");
                out.println("<html>");
                out.println("<head>");
                out.println("<title></title>");
                out.println("</head>");
                out.println("<body>");
                out.println("<h1>Reporte de Sala: " + sala.getNombre() + sala.getCasa().getNombre() + "</h1>");
                out.println("<table>");
                out.println("<thead>");
                out.println("</thead>");
                out.println("<tbody>");
                out.println("<tr>");
                out.println("<th>"+"Nombre Sala" +"</th>"+"<th>"+"Capacidad" +"</th>" +"<th>"+"Casas que la contiene " +"</th>");
                out.println("</tr>");
                out.println("<tr>");
                out.println("<td>" + sala.getNombre() + "</td>"+"<td>" + sala.getCapacidad()+"</td>" +"<td>" + sala.getCasa() +"</td>" );
                out.println("</tr>");
                out.println("</tbody>");
                out.println("</table>");
                out.println("<h3> Observaciones del Sala " + sala.getNombre()+ "</h3>");
                out.println("</body>");
                out.println("</html>");
            } catch (IOException ex) {
                Logger.getLogger(SalaReporteController.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
    }

    @RequestMapping(value = "reporteSala", method = RequestMethod.GET)
    public void reporteSalaController(HttpSession session,
            HttpServletRequest request, HttpServletResponse response) {
        if (session.getAttribute("usuario") == null) {
            return;
        }
        List<Sala> salas = salaServicio.buscarTodos();
        response.setContentType("application/application/vnd.ms-excel");
        response.setHeader("Content-Disposition", "attachment; filename=\"salas.xls\"");
        PrintWriter out;
        try {
            out = response.getWriter();
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title></title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Reporte de Sala de Casa de Cultura</h1>");
            out.println("<table>");
            out.println("<thead>");
            out.println("</thead>");
            out.println("<tbody>");
            out.println("<tr>");
            out.println("<th>"+"Nombre Sala" +"</th>"+"<th>"+"Capacidad" +"</th>" +"<th>"+"Casas que la contiene " +"</th>");
            out.println("</tr>");
            for (Sala sala : salas) {
                out.println("<tr>");
                out.println("<td>" + sala.getNombre() + "</td>");
                out.println("<td>" + sala.getCapacidad() + "</td>");
                out.println("<td>" + sala.getCasa().getNombre() + "</td>");
                out.println("</tr>");
            }
            out.println("</tbody>");
            out.println("</table>");
            out.println("</body>");
            out.println("</html>");
        } catch (IOException ex) {
            Logger.getLogger(SalaReporteController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
