/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package mx.ipn.escom.repositorios.impl;

import java.util.List;
import mx.ipn.escom.entidades.CategoriaTaller;
import mx.ipn.escom.repositorios.CategoriaTallerRepositorio;
import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author angel
 */


@Transactional
@Repository
public class CategoriaTallerRepositorioImpl implements CategoriaTallerRepositorio{
    
    
    @Autowired
    SessionFactory sessionFactory;

    @Override
    public Boolean agregar(CategoriaTaller categoriaTaller) {
        Boolean guardado = null;
        try {
            sessionFactory.getCurrentSession().save(categoriaTaller);
            guardado = true;
        } catch (HibernateException he) {
            he.printStackTrace();
        }
        return guardado;
    }

    @Override
    public Boolean actualizar(CategoriaTaller categoriaTaller) {
        Boolean guardado = null;
        try {
            sessionFactory.getCurrentSession().update(categoriaTaller);
            guardado = true;
        } catch (HibernateException he) {
            he.printStackTrace();
        }
        return guardado;
    }

    @Override
    public Boolean eliminar(CategoriaTaller categoriaTaller) {
        Boolean guardado = null;
        try {
            sessionFactory.getCurrentSession().delete(categoriaTaller);
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
    public CategoriaTaller buscarPorId(Integer id) {
        return (CategoriaTaller) sessionFactory.getCurrentSession().createCriteria(CategoriaTaller.class)
                .add(Restrictions.eq("id", id))
                .uniqueResult();
    }

    @Override
    public List<CategoriaTaller> buscarTodos() {
        return (List<CategoriaTaller>) sessionFactory.getCurrentSession().createCriteria(CategoriaTaller.class)
                .list();
    }

    
}
