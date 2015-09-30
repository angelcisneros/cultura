package mx.ipn.escom.entidades;
// Generated 29/05/2015 09:21:20 AM by Hibernate Tools 3.6.0

import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.Pattern;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.validator.constraints.Email;

/**
 * Visitante generated by hbm2java
 */
@Entity
@Table(name = "visitante", catalog = "gamcultt")
@AllArgsConstructor
@NoArgsConstructor
public @Data class Visitante implements java.io.Serializable {

    @Id
    @Column(name = "id", unique = true, nullable = false)
    private Integer id;

    @Pattern(regexp = "^[a-zA-Záéíóúñ\\s]{2,}$", message="Verifique el Nombre")
    @Column(name = "Nombre", nullable = false, length = 45)
    private String nombre;

    @Pattern(regexp = "^[a-zA-Záéíóúñ]{2,}$", message="Verifique el Apellido Paterno")
    @Column(name = "apellido_paterno", nullable = false, length = 45)
    private String apellidoPaterno;

    @Pattern(regexp = "^[a-zA-Záéíóúñ]{2,}$", message="Verifique el Apellido Materno")
    @Column(name = "apellido_materno", length = 45)
    private String apellidoMaterno;

    @Min(value=0, message = "La edad es muy pequeña")
    @Max(value=100,message = "La edad es muy grande")
    @Column(name = "Edad", nullable = false)
    private Integer edad;

    @Pattern(regexp = "^[a-zA-Záéíóúñ]{2,}$", message="Verifique el Sexo")
    @Column(name = "Sexo", nullable = false, length = 10)
    private String sexo;

    @Pattern(regexp = "^[1-9]{2}-[0-9]{2}-[0-9]{2}-[0-9]{2}$", message="Verifique el Teléfono")
    @Column(name = "Telefono", length = 20)
    private String telefono;

    @Email(message = "Verifique el Correo")
    @Column(name = "Correo", nullable = false, length = 45)
    private String correo;

  
    private Boolean informacion;

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "visitante")
    private List<VisitanteEvento> visitanteEventos;

    public Visitante(Integer id, String nombre, String apellidoPaterno, Integer edad, String sexo, String correo) {
        this.id = id;
        this.nombre = nombre;
        this.apellidoPaterno = apellidoPaterno;
        this.edad = edad;
        this.sexo = sexo;
        this.correo = correo;
    }

}
