/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.ipn.escom.turismoazcapotzalco.controller;

import java.io.File;
import javax.servlet.http.HttpSession;
import mx.ipn.escom.entidades.Taller;
import mx.ipn.escom.servicios.HomeUsuarioServicio;
import mx.ipn.escom.servicios.TallerServicio;
import static mx.ipn.escom.servicios.util.ManejadorArchivos.convierteArchivoToArregloBytes;
import static mx.ipn.escom.servicios.util.Rutas.HOME_USUARIO;
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
 * @author vcisneros
 */
@Controller
public class HomeController {

    @Autowired
    HomeUsuarioServicio hus;

    @RequestMapping(value = "/")
    public String homeController(Model model) {
        model.addAttribute("home", hus.home());
        return "templates/index";
    }

    @RequestMapping(value = "administrador/homeAdmin")
    public String homeAdmin(Model model) {
        model.addAttribute("home", hus.home());
        return "crud/modificaHome";
    }

    @ResponseBody
    @RequestMapping(value = "sliderHome/{href}")
    public byte[] sliderHome(@PathVariable String href) {
        String path = HOME_USUARIO + href + ".jpg";
        return convierteArchivoToArregloBytes(new File(path));
    }

    @RequestMapping(value = "*")
    public String error404(HttpSession session) {
        return "templates/404";
    }
    
    
    @Autowired
    // Esto es Una Interfaz Tiene los metodos a Utilizar
    TallerServicio tallerServicio;
    @ResponseBody
    @RequestMapping(value = "buscaTallerPorId/{idTaller}", method = {RequestMethod.GET, RequestMethod.POST})
    public Taller buscaTallerPorId(@PathVariable String idTaller, Model model) {
        if (esEntero(idTaller)) {
            return tallerServicio.buscarPorId(Integer.parseInt(idTaller));
//            return "puto";
        }
        return null;
//    }
    }
}
