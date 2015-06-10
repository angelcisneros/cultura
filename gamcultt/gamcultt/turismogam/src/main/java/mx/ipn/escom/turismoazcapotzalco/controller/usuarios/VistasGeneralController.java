/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.ipn.escom.turismoazcapotzalco.controller.usuarios;

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
public class VistasGeneralController {

    @Autowired
    CategoriaTallerServicio categoriaTallerServicio;
    
    @Autowired
    CasaServicio casaServicio;

    @RequestMapping(value = "casas")
    public String casasController() {
        return "usuarios/casas";
    }

    @RequestMapping(value = "tallerprincipal")
    public String tallerController(Model model) {
        model.addAttribute("categoriasTaller", categoriaTallerServicio.buscarTodos());
        return "usuarios/taller";
    }

    @RequestMapping(value = "eventoprincipal")
    public String eventoController() {
        return "usuarios/evento";
    }

    @RequestMapping(value = "misionvision")
    public String misvisController() {
        return "usuarios/misionvision";
    }

    @RequestMapping(value = "contacto")
    public String contactoController() {
        return "usuarios/contacto";
    }
    
    
    @RequestMapping(value = "buscarPorCategoriaTaller/{idCategoria}")
    public String buscarPorCategoriaTaller(@PathVariable Integer idCategoria, Model model) {
        System.out.println("ENtrooooooooo");
        for(Casa c : casaServicio.buscarPorCategoriaTaller(idCategoria)){
            System.out.println(c.getNombre());
        }
        model.addAttribute("casasImparte", casaServicio.buscarPorCategoriaTaller(idCategoria));
        return "usuarios/casasImpartenTaller";
    }

}
