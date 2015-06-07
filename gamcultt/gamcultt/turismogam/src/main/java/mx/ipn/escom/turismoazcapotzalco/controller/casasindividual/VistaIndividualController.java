/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.ipn.escom.turismoazcapotzalco.controller.casasindividual;

import mx.ipn.escom.entidades.Casa;
import mx.ipn.escom.servicios.CasaServicio;
import mx.ipn.escom.servicios.CategoriaTallerServicio;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Lap_christo
 */

@Controller
public class VistaIndividualController {
        
    @Autowired
    CategoriaTallerServicio categoriaTallerServicio;
    
    @Autowired
    CasaServicio casaServicio;
    
    @RequestMapping(value ="casasgeneal/{idCasa}")
    public String casasgenealController(@PathVariable Integer idCasa, Model model) {
        Casa casa=casaServicio.buscarPorId(idCasa);
        if(casa == null) {
            return "templates/404";
        }
        model.addAttribute("casa", casa);
        return "casasindividual/casaindividual";
    }
    
    @RequestMapping(value ="tallerindividual")
    public String tallerindController(Model model) {
        model.addAttribute("categoriasTaller", categoriaTallerServicio.buscarTodos());
        return "casasindividual/taller";
    }
    
    @RequestMapping(value ="eventoindividual")
        public String eventoindController() {
        return "casasindividual/evento";
    }
    
     @RequestMapping(value ="PropuestasCulturales")
        public String Pro_culController() {
        return "casasindividual/pro_cul";
    }
     @RequestMapping(value ="contactoindividual")
        public String contactoindController() {
        return "casasindividual/contactoind";
    }
}