package mx.ipn.escom.entidades;
// Generated 29/05/2015 09:21:20 AM by Hibernate Tools 3.6.0

import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Pattern;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.validator.constraints.Email;

/**
 * Profesor generated by hbm2java
 */
@Entity
@Table(name = "profesor", catalog = "gamcultt")
@AllArgsConstructor
@NoArgsConstructor
public @Data class Profesor implements java.io.Serializable {

    @Id
    @GeneratedValue(strategy = IDENTITY)
    @Column(name = "id", unique = true, nullable = false)
    private Integer id;

    @Pattern(regexp = "^[a-zA-Záéíóúñ\\s]{2,}$", message="Verifique el nombre")
    @Column(name = "nombre", nullable = false, length = 45)
    private String nombre;

    @Pattern(regexp = "^[a-zA-Záéíóúñ]{2,}$", message="Verifique el apellido paterno")
    @Column(name = "paterno", nullable = false, length = 45)
    private String paterno;

    @Pattern(regexp = "^[a-zA-Záéíóúñ]{2,}$", message="Verifique el apellido materno")
    @Column(name = "materno", nullable = false, length = 45)
    private String materno;

    @Email(message = "El correo no es válido")
    @Column(name = "correo", nullable = false, length = 45)
    private String correo;

    @Pattern(regexp = "^[1-9]{2}-[0-9]{2}-[0-9]{2}-[0-9]{2}$", message="Verifique el Teléfono")
    @Column(name = "telefono", length = 20)
    private String telefono;

    @Pattern(regexp = "^55-[1-9]{2}-[0-9]{2}-[0-9]{2}-[0-9]{2}$", message="Verifique el Celular")
    @Column(name = "celular", length = 20)
    private String celular;

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "profesor")
    private List<Clase> clases;

    public Profesor(String nombre, String paterno, String materno, String correo) {
        this.nombre = nombre;
        this.paterno = paterno;
        this.materno = materno;
        this.correo = correo;
    }


}
