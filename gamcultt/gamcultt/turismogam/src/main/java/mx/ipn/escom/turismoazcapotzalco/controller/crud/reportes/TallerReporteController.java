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
import mx.ipn.escom.entidades.Taller;
import mx.ipn.escom.servicios.TallerServicio;
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
public class TallerReporteController {

    @Autowired
    TallerServicio tallerServicio;

     @RequestMapping(value = "reporteIndividualTaller/{idTaller}", method = RequestMethod.GET)
    public void reporteIndividualTallerController(@PathVariable String idTaller, HttpSession session,
            HttpServletRequest request, HttpServletResponse response) {
        if (session.getAttribute("usuario") == null) {
            return;
        }
        if (esEntero(idTaller)) {
            Taller taller = tallerServicio.buscarPorId(Integer.parseInt(idTaller));
            response.setContentType("application/application/vnd.ms-excel");
            response.setHeader("Content-Disposition", "attachment; filename=\"" + taller.getNombre() + ".xls\"");
            PrintWriter out;
            try {
                out = response.getWriter();
                out.println("<!DOCTYPE html>");
                out.println("<html>");
                out.println("<head>");
                out.println("<title></title>");
                out.println("</head>");
                out.println("<body>");
                out.println("<h1>Reporte de Taller: " + taller.getNombre() + taller.getDescripcion() + "</h1>");
                out.println("<table>");
                out.println("<thead>");
                out.println("</thead>");
                out.println("<tbody>");
                out.println("<tr>");
                out.println("<th>"+"Nombre Taller" +"</th>"+"<th>"+"Descripcion" +"</th>" +"<th>"+"Horario" +"</th>" + "<th>"+"Costo" +"</th>" + "<th>"+"categoria" +"</th>" );
                out.println("</tr>");
                out.println("<tr>");
                out.println("<td>" + taller.getNombre() + "</td>"+"<td>" + taller.getDescripcion()+"</td>" +"<td>" + taller.getHorario()+"</td>" + "<td>"+ taller.getCosto()+ "</td>"+ "<td>"+ taller.getCategoriaTaller()+"</td>"+ "<td>");
                out.println("</tr>");
                out.println("</tbody>");
                out.println("</table>");
                out.println("<h3> Observaciones del Taller " + taller.getNombre()+ "</h3>");
                out.println("</body>");
                out.println("</html>");
            } catch (IOException ex) {
                Logger.getLogger(TallerReporteController.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
    }

    @RequestMapping(value = "reporteTaller", method = RequestMethod.GET)
    public void reporteTallerController(HttpSession session,
            HttpServletRequest request, HttpServletResponse response) {
        if (session.getAttribute("usuario") == null) {
            return;
        }
        List<Taller> tallers = tallerServicio.buscarTodos();
        response.setContentType("application/application/vnd.ms-excel");
        response.setHeader("Content-Disposition", "attachment; filename=\"tallers.xls\"");
        PrintWriter out;
        try {
            out = response.getWriter();
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title></title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Reporte de Taller de Casa de Cultura</h1>");
            out.println("<table>");
            out.println("<thead>");
            out.println("</thead>");
            out.println("<tbody>");
            out.println("<tr>");
            out.println("<th>"+"Nombre Taller" +"</th>"+"<th>"+"Descripcion" +"</th>" +"<th>"+"Horario" +"</th>" + "<th>"+"Costo" +"</th>" + "<th>"+"Comentarios" +"</th>" );
            out.println("</tr>");
            for (Taller taller : tallers) {
                out.println("<tr>");
                out.println("<td>" + taller.getNombre() + "</td>");
                out.println("<td>" + taller.getDescripcion() + "</td>");
                out.println("<td>" + taller.getHorario() + "</td>");
                out.println("<td>" + taller.getCosto() + "</td>");
                out.println("</tr>");
            }
            out.println("</tbody>");
            out.println("</table>");
            out.println("</body>");
            out.println("</html>");
        } catch (IOException ex) {
            Logger.getLogger(TallerReporteController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
