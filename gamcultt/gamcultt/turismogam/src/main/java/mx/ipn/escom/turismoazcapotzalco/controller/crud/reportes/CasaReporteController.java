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
import mx.ipn.escom.entidades.Casa;
import mx.ipn.escom.servicios.CasaServicio;
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
public class CasaReporteController {

    @Autowired
    CasaServicio casaServicio;

     @RequestMapping(value = "reporteIndividualCasa/{idCasa}", method = RequestMethod.GET)
    public void reporteIndividualCasaController(@PathVariable String idCasa, HttpSession session,
            HttpServletRequest request, HttpServletResponse response) {
        if (session.getAttribute("usuario") == null) {
            return;
        }
        if (esEntero(idCasa)) {
            Casa casa = casaServicio.buscarPorId(Integer.parseInt(idCasa));
            response.setContentType("application/application/vnd.ms-excel");
            response.setHeader("Content-Disposition", "attachment; filename=\"" + casa.getNombre() + ".xls\"");
            PrintWriter out;
            try {
                out = response.getWriter();
                out.println("<!DOCTYPE html>");
                out.println("<html>");
                out.println("<head>");
                out.println("<title></title>");
                out.println("</head>");
                out.println("<body>");
                out.println("<h1>Reporte de Casa: " + casa.getNombre() + casa.getInformacion() + "</h1>");
                out.println("<table>");
                out.println("<thead>");
                out.println("</thead>");
                out.println("<tbody>");
                out.println("<tr>");
                out.println("<th>"+"Nombre Casa" +"</th>"+"<th>"+"informacion" +"</th>" +"<th>"+"Horario" +"</th>" + "<th>"+"Direccion" +"</th>" + "<th>"+"Telefono" +"</th>"  );
                out.println("</tr>");
                out.println("<tr>");
                out.println("<td>" + casa.getNombre() + "</td>"+"<td>" + casa.getInformacion()+"</td>" +"<td>" + casa.getHorario()+"</td>" + "<td>"+ casa.getDireccion()+ "</td>" + "<td>"+ casa.getTelefono()+"</td>"+ "<td>");
                out.println("</tr>");
                out.println("</tbody>");
                out.println("</table>");
                out.println("<h3> Observaciones del Casa " + casa.getNombre()+ "</h3>");
                out.println("</body>");
                out.println("</html>");
            } catch (IOException ex) {
                Logger.getLogger(CasaReporteController.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
    }

    @RequestMapping(value = "reporteCasa", method = RequestMethod.GET)
    public void reporteCasaController(HttpSession session,
            HttpServletRequest request, HttpServletResponse response) {
        if (session.getAttribute("usuario") == null) {
            return;
        }
        List<Casa> casas = casaServicio.buscarTodos();
        response.setContentType("application/application/vnd.ms-excel");
        response.setHeader("Content-Disposition", "attachment; filename=\"casas.xls\"");
        PrintWriter out;
        try {
            out = response.getWriter();
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title></title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Reporte de Casa de Casa de Cultura</h1>");
            out.println("<table>");
            out.println("<thead>");
            out.println("</thead>");
            out.println("<tbody>");
            out.println("<tr>");
            out.println("<th>"+"Nombre Casa" +"</th>"+"<th>"+"informacion" +"</th>" +"<th>"+"Horario" +"</th>"+ "<th>"+"Direccion" +"</th>" + "<th>"+"Telefono" +"</th>"  );
            out.println("</tr>");
            for (Casa casa : casas) {
                out.println("<tr>");
                out.println("<td>" + casa.getNombre() + "</td>");
                out.println("<td>" + casa.getInformacion()+ "</td>");
                out.println("<td>" + casa.getHorario() + "</td>");
                out.println("<td>" + casa.getDireccion() + "</td>");
                out.println("<td>" + casa.getTelefono()+ "</td>");
                out.println("</tr>");
            }
            out.println("</tbody>");
            out.println("</table>");
            out.println("</body>");
            out.println("</html>");
        } catch (IOException ex) {
            Logger.getLogger(CasaReporteController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
