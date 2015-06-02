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
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;

/**
 * CategoriaTaller generated by hbm2java
 */
@Entity
@Table(name = "categoria_taller", catalog = "gamcultt")
@AllArgsConstructor
@NoArgsConstructor
public class CategoriaTaller implements java.io.Serializable {

    @Id
    @GeneratedValue(strategy = IDENTITY)
    @Column(name = "id", unique = true, nullable = false)
    private Integer id;

    @Column(name = "nombre", nullable = false, length = 45)
    private String nombre;

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "categoriaTaller")
    private List<Taller> tallers;

    
    public CategoriaTaller(Integer id, String nombre) {
        this.id = id;
        this.nombre = nombre;
    }

}
