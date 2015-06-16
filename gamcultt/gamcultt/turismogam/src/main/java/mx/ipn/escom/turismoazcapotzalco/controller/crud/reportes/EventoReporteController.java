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
import mx.ipn.escom.entidades.Evento;
import mx.ipn.escom.servicios.EventoServicio;
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
public class EventoReporteController {

    @Autowired
    EventoServicio eventoServicio;

     @RequestMapping(value = "reporteIndividualEvento/{idEvento}", method = RequestMethod.GET)
    public void reporteIndividualEventoController(@PathVariable String idEvento, HttpSession session,
            HttpServletRequest request, HttpServletResponse response) {
        if (session.getAttribute("usuario") == null) {
            return;
        }
        if (esEntero(idEvento)) {
            Evento evento = eventoServicio.buscarPorId(Integer.parseInt(idEvento));
            response.setContentType("application/application/vnd.ms-excel");
            response.setHeader("Content-Disposition", "attachment; filename=\"" + evento.getNombre() + ".xls\"");
            PrintWriter out;
            try {
                out = response.getWriter();
                out.println("<!DOCTYPE html>");
                out.println("<html>");
                out.println("<head>");
                out.println("<title></title>");
                out.println("</head>");
                out.println("<body>");
                out.println("<h1>Reporte de Evento: " + evento.getNombre() +"     "+ evento.getInformacion()+ "</h1>");
                out.println("<table>");
                out.println("<thead>");
                out.println("</thead>");
                out.println("<tbody>");
                out.println("<tr>");
                out.println("<th>"+"Nombre Evento" +"</th>"+"<th>"+"Informacion del Taller" +"</th>" +"<th>"+"Horario" +"</th>" + "<th>"+"Dirección" +"</th>");
                out.println("</tr>");
                out.println("<tr>");
                out.println("<td>" + evento.getNombre() + "</td>"+"<td>" + evento.getInformacion()+"</td>" +"<td>" + evento.getHorario()+"</td>" + "<td>"+ evento.getDireccion()+ "</td>"+ "<td>");
                out.println("</tr>");
                out.println("</tbody>");
                out.println("</table>");
                out.println("<h3> Observaciones del Evento " + evento.getNombre()+ "</h3>");
                out.println("</body>");
                out.println("</html>");
            } catch (IOException ex) {
                Logger.getLogger(EventoReporteController.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
    }

    @RequestMapping(value = "reporteEvento", method = RequestMethod.GET)
    public void reporteEventoController(HttpSession session,
            HttpServletRequest request, HttpServletResponse response) {
        if (session.getAttribute("usuario") == null) {
            return;
        }
        List<Evento> eventos = eventoServicio.buscarTodos();
        response.setContentType("application/application/vnd.ms-excel");
        response.setHeader("Content-Disposition", "attachment; filename=\"eventos.xls\"");
        PrintWriter out;
        try {
            out = response.getWriter();
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title></title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Reporte de Evento de Casa de Cultura</h1>");
            out.println("<table>");
            out.println("<thead>");
            out.println("</thead>");
            out.println("<tbody>");
            out.println("<tr>");
            out.println("<th>"+"Nombre Evento" +"</th>"+"<th>"+"Informacion del Taller" +"</th>" +"<th>"+"Horario" +"</th>" + "<th>"+"Dirección" +"</th>" + "<th>"+"categoría" +"</th>" );
            out.println("</tr>");
            for (Evento evento : eventos) {
                out.println("<tr>");
                out.println("<td>" + evento.getNombre() + "</td>");
                out.println("<td>" + evento.getInformacion() + "</td>");
                out.println("<td>" + evento.getHorario() + "</td>");
                out.println("<td>" + evento.getDireccion() + "</td>");
                out.println("</tr>");
            }
            out.println("</tbody>");
            out.println("</table>");
            out.println("</body>");
            out.println("</html>");
        } catch (IOException ex) {
            Logger.getLogger(EventoReporteController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
