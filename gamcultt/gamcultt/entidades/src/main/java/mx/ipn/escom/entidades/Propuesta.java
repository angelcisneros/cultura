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
import javax.validation.constraints.Min;
import javax.validation.constraints.Pattern;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;


/**
 * Propuesta generated by hbm2java
 */
@Entity
@Table(name = "propuesta", catalog = "gamcultt")
@AllArgsConstructor
@NoArgsConstructor
public @Data class Propuesta implements java.io.Serializable {

    @Id
    @GeneratedValue(strategy = IDENTITY)
    @Column(name = "id", unique = true, nullable = false)
    private Integer id;

    @NotBlank(message = "Seleccione un Usuario")
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "usuario", nullable = false)
    private Usuario usuario;
    
    @Pattern(regexp = "^[a-zA-Záéíóúñ]{2,}$", message="Verifique el Representante")
    @Column(name = "representante", nullable = false, length = 105)
    private String representante;

    @Pattern(regexp = "^[a-zA-Záéíóúñ0-9]{2,}$", message="Verifique el objetivo")
    @Column(name = "objetivo", nullable = false, length = 65535)
    private String objetivo;

    @Min(value=25, message = "Verifica el número de personas")
    @Column(name = "personas")
    private Integer personas;

    @Pattern(regexp = "^[a-zA-Záéíóúñ0-9]{2,}$", message="Verifique la descripción")
    @Column(name = "descripcion", nullable = false, length = 65535)
    private String descripcion;

    @Email(message = "El correo no es valido")
    @Column(name = "correo", nullable = false, length = 85)
    private String correo;

    @Pattern(regexp = "^[1-9]{2}-[0-9]{2}-[0-9]{2}-[0-9]{2}$", message="Verifique el Teléfono")
    @Column(name = "telefono", length = 20)
    private String telefono;

    @Min(value=25, message = "Verifica la Asistencia Estimada")
    @Column(name = "asistencia_estimada", nullable = false)
    private Integer asistenciaEstimada;


    public Propuesta(Usuario usuario, String representante, String objetivo, String descripcion, String correo, Integer asistenciaEstimada) {
        this.usuario = usuario;
        this.representante = representante;
        this.objetivo = objetivo;
        this.descripcion = descripcion;
        this.correo = correo;
        this.asistenciaEstimada = asistenciaEstimada;
    }

}
