/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package mx.ipn.escom.servicios.auxiliares;

import java.util.List;
import lombok.Data;

/**
 *
 * @author angel
 */

public @Data class Home {
    private String red;
    private String descripcionRed;
    private String hrefRed;
    
    private String principal;
    private String descripcionPrincipal;
    private String hrefPrincipal;
    
    private List<Slider> slider;
}
