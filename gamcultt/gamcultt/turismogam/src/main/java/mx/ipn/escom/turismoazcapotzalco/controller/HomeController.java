/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.ipn.escom.turismoazcapotzalco.controller;

import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author vcisneros
 */
@Controller
public class HomeController {

    @RequestMapping(value = "/")
    public String homeController() {
        return "templates/index";
    }

    @RequestMapping(value = "*")
    public String error404(HttpSession session) {
        System.out.println("No osy admin");
        return "templates/404";
    }
}
