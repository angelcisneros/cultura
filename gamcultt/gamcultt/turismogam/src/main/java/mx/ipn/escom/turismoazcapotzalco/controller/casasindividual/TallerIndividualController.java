/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.ipn.escom.turismoazcapotzalco.controller.casasindividual;

import mx.ipn.escom.entidades.Taller;
import mx.ipn.escom.servicios.TallerServicio;
import static mx.ipn.escom.servicios.util.Validaciones.esEntero;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author Lap_christo
 */
@Controller
public class TallerIndividualController {

    @Autowired
    // Esto es Una Interfaz Tiene los metodos a Utilizar
    TallerServicio tallerServicio;

    @RequestMapping(value = "casasgeneral/tallertodos/{idCasa}")
    public String tallertodController(@PathVariable String idCasa, Model model) {
        if (esEntero(idCasa)) {
            // el metodo buscarPorcasa se tuvo que crear  por que no existia la consulta 
            //talleres se el identificador como en el jsp es equivalente ${}
            model.addAttribute("talleres", tallerServicio.buscarPorCasa(Integer.parseInt(idCasa)));
            return "casasindivi/tallertodos";
        }
        return "templates/404";
    }

    @ResponseBody
    @RequestMapping(value = "buscaTallerPorId/{idTaller}", method = {RequestMethod.GET, RequestMethod.POST})
    public Taller buscaTallerPorId(@PathVariable String idTaller, Model model) {
        if (esEntero(idTaller)) {
            return tallerServicio.buscarPorId(Integer.parseInt(idTaller));
        }
        return null;
    }
}
