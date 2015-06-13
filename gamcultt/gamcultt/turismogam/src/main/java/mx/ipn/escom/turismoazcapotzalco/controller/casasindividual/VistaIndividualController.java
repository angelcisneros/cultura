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
    
    @RequestMapping(value ="casasgeneral/{idCasa}")
    public String casasgenealController(@PathVariable Integer idCasa, Model model) {
        Casa casa=casaServicio.buscarPorId(idCasa);
        if(casa == null) {
            return "templates/404";
        }
        model.addAttribute("casa", casa);
        return "casasindivi/casaindividual";
    }
    
        
    @RequestMapping(value ="casasgeneral/eventostodos")
        public String eventotodosController() {
        return "casasindivi/eventostodos";
    }
    @RequestMapping(value ="casasgeneral/eventostodos/eventoind")
        public String eventoindController() {
        return "casasindivi/eventoind";
    }
     @RequestMapping(value ="casasgeneral/eventostodos/registroevento")
        public String registroeventoController() {
        return "casasindivi/registroevento";
    }    
     @RequestMapping(value ="casasgeneral/pro_cul")
        public String proculController() {
        return "casasindivi/pro_cul";
    }
     @RequestMapping(value ="casasgeneral/contactocasa")
        public String contactoindController() {
        return "casasindivi/contactocasa";
    }
}