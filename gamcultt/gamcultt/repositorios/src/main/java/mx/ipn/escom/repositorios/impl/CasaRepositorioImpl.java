/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.ipn.escom.repositorios.impl;

import java.util.List;
import mx.ipn.escom.entidades.Casa;
import mx.ipn.escom.repositorios.CasaRepositorio;
import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.hibernate.sql.JoinType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Lap_christo
 */

@Transactional
@Repository
public class CasaRepositorioImpl implements CasaRepositorio{
    
    @Autowired
    SessionFactory sessionFactory;

    @Override
    public Boolean agregar(Casa casa) {
        Boolean guardado = null;
        try {
            sessionFactory.getCurrentSession().save(casa);
            guardado = true;
        } catch (HibernateException he) {
            he.printStackTrace();
        }
        return guardado;
    }

    @Override
    public Boolean actualizar(Casa casa) {
        Boolean guardado = null;
        try {
            sessionFactory.getCurrentSession().update(casa);
            guardado = true;
        } catch (HibernateException he) {
            he.printStackTrace();
        }
        return guardado;
    }

    @Override
    public Boolean eliminar(Casa casa) {
        Boolean guardado = null;
        try {
            sessionFactory.getCurrentSession().delete(casa);
            guardado = true;
        } catch (HibernateException he) {
            he.printStackTrace();
            guardado = false;
        }
        return guardado;
    }

    @Override
    public Boolean eliminar(Integer id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Casa buscarPorId(Integer id) {
        return (Casa) sessionFactory.getCurrentSession().createCriteria(Casa.class)
                .add(Restrictions.eq("id", id))
                .uniqueResult();
    }

    @Override
    public List<Casa> buscarTodos() {
        return (List<Casa>) sessionFactory.getCurrentSession().createCriteria(Casa.class)
                .list();
    }

    @Override
    public List<Casa> buscarPorCategoriaTaller(Integer categoriaTaller) {
        String query = "SELECT * FROM Casa as c, Sala s, Clase as cl, Taller as t, Categoria_Taller as cat where c.id = s.casa and s.id = cl.sala and cl.taller= t.id and t.categoriaTaller = cat.id and cat.id=" + categoriaTaller;
        return (List<Casa>) sessionFactory.getCurrentSession().createSQLQuery(query).addEntity(Casa.class).list();
                
                
    }
    
    
    
}
