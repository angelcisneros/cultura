/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.ipn.escom.turismoazcapotzalco.controller.crud;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import mx.ipn.escom.entidades.Usuario;
import mx.ipn.escom.servicios.CasaServicio;
import mx.ipn.escom.servicios.UsuarioServicio;
import static mx.ipn.escom.servicios.util.Llave.USUARIO;
import static mx.ipn.escom.servicios.util.MensajesCrud.ERROR_DATOS;
import static mx.ipn.escom.servicios.util.MensajesCrud.SESION_CADUCA;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author vcisneros
 */
@Controller
@RequestMapping("administrador/")
public class UsuarioController {

    @Autowired
    UsuarioServicio usuarioServicio;
    
    @Autowired
    CasaServicio casaServicio;
    
    @RequestMapping(value = "usuarios", method = RequestMethod.GET)
    public String alumnos(Model model, HttpSession session) {
        if (session.getAttribute(USUARIO) == null){
            return "templates/login";
        }
        model.addAttribute("usuarios", usuarioServicio.buscarTodos());
        model.addAttribute("casas", casaServicio.buscarTodos());
        return "crud/usuario";
    }

    @ResponseBody
    @RequestMapping(value = "agregarUsuario", method = RequestMethod.POST)
    public String agregarUsuario(@Valid @ModelAttribute("usuario") Usuario usuario, BindingResult bindingResult, HttpSession session) {
        if (session.getAttribute("usuario") == null){
            return SESION_CADUCA;
        }
        System.out.println(usuario.getEstado());
        if (bindingResult.hasErrors()) {
            for(ObjectError e:bindingResult.getAllErrors()){
                System.out.println(e.getObjectName() + ":" + e.getDefaultMessage());
            }
                
            return ERROR_DATOS;
        }
        return usuarioServicio.agregar(usuario);
    }

    @ResponseBody
    @RequestMapping(value = "editarUsuario", method = RequestMethod.POST)
    public String editarUsuario(@Valid @ModelAttribute("usuario") Usuario usuario, BindingResult bindingResult, HttpSession session) {
        if (session.getAttribute("usuario") == null){
            return SESION_CADUCA;
        }
        if (bindingResult.hasErrors()) {
            return ERROR_DATOS;
        }
        return usuarioServicio.actualizar(usuario);
    }

    @ResponseBody
    @RequestMapping(value = "eliminarUsuario", method = RequestMethod.POST)
    public String eliminarUsuario(Usuario usuario, BindingResult bindingResult, HttpSession session) {
        if (session.getAttribute("usuario") == null){
            return SESION_CADUCA;
        }
        return usuarioServicio.eliminar(usuario);
    }
}
