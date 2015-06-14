/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.ipn.escom.servicios.impl;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import mx.ipn.escom.servicios.HomeUsuarioServicio;
import mx.ipn.escom.servicios.auxiliares.Home;
import mx.ipn.escom.servicios.auxiliares.Slider;
import static mx.ipn.escom.servicios.util.Rutas.HOME_USUARIO;
import static mx.ipn.escom.servicios.util.Validaciones.isNullOrEmpty;
import org.springframework.stereotype.Service;

/**
 *
 * @author angel
 */
@Service
public class HomeUsuarioServicioImpl implements HomeUsuarioServicio {

    @Override
    public Home home() {
        Properties properties = new Properties();
        Home home = new Home();
        List<Slider> slider = new ArrayList<Slider>();
        try {
            properties.load(new FileInputStream(HOME_USUARIO + "home.properties"));
            home.setRed(properties.getProperty("red"));
            home.setDescripcionRed(properties.getProperty("descripcionRed"));
            home.setHrefRed(properties.getProperty("hrefRed"));
            home.setPrincipal(properties.getProperty("principal"));
            home.setDescripcionPrincipal(properties.getProperty("descripcionPrincipal"));
            home.setHrefPrincipal(properties.getProperty("hrefPrincipal"));
            for (int i = 1; i < 11; i++) {

                String hrf = properties.getProperty("href" + i);
                String descripcion = properties.getProperty("descripcion" + i);
                if (!isNullOrEmpty(hrf) && !isNullOrEmpty(descripcion)) {
                    slider.add(new Slider(hrf, descripcion, properties.getProperty("alt" + i)));
                }
            }
            home.setSlider(slider);
        } catch (IOException ex) {
            Logger.getLogger(HomeUsuarioServicioImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return home;
    }

    @Override
    public String editaVista(Home home, boolean esRed) {
        Properties properties = new Properties();
        String titulo = "red";
        String tituloVal = home.getRed();
        String descripcion = "descripcionRed";
        String descripcionVal = home.getDescripcionRed();
        if(!esRed){
            titulo = "principal";
            tituloVal = home.getPrincipal();
            descripcion = "descripcionPrincipal";
            descripcionVal = home.getDescripcionPrincipal();
        }
        try {
            File file = new File(HOME_USUARIO + "home.properties");
            properties.load(new FileInputStream(file));
            properties.setProperty(titulo, tituloVal);
            properties.setProperty(descripcion, descripcionVal);
            FileOutputStream fos = new FileOutputStream(file.toString().replace("\\", "/"));
            properties.store(fos, null);
        } catch (IOException ex) {
            Logger.getLogger(HomeUsuarioServicioImpl.class.getName()).log(Level.SEVERE, null, ex);
            return "Error...#No se pudo cambiar la información";
        }
        return "Correcto...#Se actualizo la vista principal";
    }

}
