/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.ipn.escom.turismoazcapotzalco.controller.crud;

import java.util.Iterator;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import mx.ipn.escom.servicios.HomeUsuarioServicio;
import mx.ipn.escom.servicios.auxiliares.Home;
import static mx.ipn.escom.servicios.util.ManejadorArchivos.subirImagen;
import static mx.ipn.escom.servicios.util.MensajesCrud.SESION_CADUCA;
import static mx.ipn.escom.servicios.util.Rutas.CASAS;
import static mx.ipn.escom.servicios.util.Rutas.HOME_USUARIO;
import static mx.ipn.escom.servicios.util.Validaciones.esEntero;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

/**
 *
 * @author angel
 */
@Controller
@RequestMapping("administrador/")
public class HomeAdministradorController {

    @Autowired
    HomeUsuarioServicio hus;

    @RequestMapping(value = "homeAdmin")
    public String homeAdmin(Model model) {
        model.addAttribute("home", hus.home());
        return "crud/modificaHome";
    }

    @ResponseBody
    @RequestMapping(value = "vistaPrincipal")
    public String vistaPrincipal(@Valid @ModelAttribute("home") Home home, BindingResult bindingResult) {
        return hus.editaVista(home, false);
    }

    @ResponseBody
    @RequestMapping(value = "vistaRed")
    public String vistaRed(@Valid @ModelAttribute("home") Home home, BindingResult bindingResult) {
        return hus.editaVista(home, true);
    }

    @ResponseBody
    @RequestMapping(value = "subirImagenHome/{id}", method = RequestMethod.POST)
    public String subirImagenCasa(MultipartHttpServletRequest request, @PathVariable String id, HttpSession session) {
        if (session.getAttribute("usuario") == null) {
            return SESION_CADUCA;
        }
        Iterator<String> itr = request.getFileNames();
        while (itr.hasNext()) {            
            MultipartFile mpf = request.getFile(itr.next());
            return subirImagen(mpf, HOME_USUARIO + id + ".jpg");
        }
        return "-1";
    }

}
