/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package mx.ipn.escom.servicios;

import mx.ipn.escom.servicios.auxiliares.Home;

/**
 *
 * @author angel
 */
public interface HomeUsuarioServicio {
 
    Home home();
    String editaVista(Home home, boolean esRed);
}
