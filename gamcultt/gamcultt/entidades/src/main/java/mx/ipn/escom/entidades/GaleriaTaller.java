package mx.ipn.escom.entidades;
// Generated 29/05/2015 09:21:20 AM by Hibernate Tools 3.6.0


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.Pattern;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.validator.constraints.NotBlank;

/**
 * GaleriaTaller generated by hbm2java
 */
@Entity
@Table(name="galeria_taller"
    ,catalog="gamcultt")
@AllArgsConstructor
@NoArgsConstructor
public @Data class GaleriaTaller  implements java.io.Serializable {

    @Id
    @GeneratedValue(strategy = IDENTITY)
    @Column(name = "id", unique = true, nullable = false)
    private Integer id;

    @NotBlank(message = "Seleccione un Taller")
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "taller", nullable = false)
    private Taller taller;

    @Pattern(regexp = "^[a-zA-Záéíóúñ\\s]{2,}$", message="Verifique el nombre")
    @Column(name = "nombre", nullable = false, length = 45)
    private String nombre;

    @Pattern(regexp = "^(.jpg |.png)$", message="Verifique la extensión")  //checar que funcione
    @Column(name = "extencion", nullable = false, length = 5)
    private String extencion;

    @Column(name = "ruta", nullable = false, length = 85)
    private String ruta;

}


