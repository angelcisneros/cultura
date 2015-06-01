/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.ipn.escom.turismoazcapotzalco.controller.usuarios;

import javax.servlet.http.HttpSession;
import mx.ipn.escom.entidades.Usuario;
import mx.ipn.escom.servicios.UsuarioServicio;
import static mx.ipn.escom.servicios.util.Llave.USUARIO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author angel
 */
@Controller
@RequestMapping("administrador/")
public class LoginController {

    @Autowired
    UsuarioServicio usuarioServicio;

    @RequestMapping(value = "inicio", method = RequestMethod.GET)
    public String login(HttpSession session, Model model) {
        Usuario u = (Usuario) session.getAttribute(USUARIO);
        if (u != null) {
            model.addAttribute("usuario", u);
            return "templates/welcome";
        }
        return "templates/login";
    }

    @RequestMapping(value = "inicio", method = RequestMethod.POST)
    public String inicio(String correo, String password, Model model, HttpSession session) {
        Usuario usuario = usuarioServicio.estaRegistrado(correo, password);
        if (usuario != null) {
            session.setAttribute(USUARIO, usuario);
//            if(usuario.getPrimeraSesion()){
//                return new ModelAndView("usuario/cambiarPass");
//            }
            model.addAttribute("url", "inicio");
            return "templates/redireccionador";
        }
        return "templates/login";
    }

    @RequestMapping(value = "*")
    public String error404(HttpSession session) {
        if ((Usuario) session.getAttribute(USUARIO) == null) {
            return "templates/login";
        }
        return "templates/404";
    }

    @RequestMapping(value = "cerrarSesion")
    public String cerrarSesion(HttpSession session) {
        if ((Usuario) session.getAttribute(USUARIO) == null) {
            return "templates/login";
        }
        else{
            session.invalidate();
            return "templates/login";
        }
    }
}
