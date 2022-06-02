/*
Autor:Vicente Leonel Vásquez Hernádez
  fecha creación: 8-05-2022
  fecha actualización 10-05-2022
  Descripción:Servlet Usuario
 */


package model;

import entity.Usuarios;
import java.util.List;
import model.IUsuarioModel;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class UsuarioModelImpl implements IUsuarioModel {

    private SessionFactory sf;
    private Session s;

    @Override
    public List<Usuarios> obtenerRegistros() {
        try {
            sf = new Configuration().configure().buildSessionFactory();
            s = sf.openSession();
            List<Usuarios> lista = s.createCriteria(Usuarios.class).list();
            s.close();

            sf.close();
            return lista;
        } catch (HibernateException e) {
            System.out.println("Error al recuperar los registros:" + e.getMessage());
        }
        return null;
    }

    @Override
    public void actualizarRegistro(Usuarios usuario) {
        try {
            sf = new Configuration().configure().buildSessionFactory();
            s = sf.openSession();
            s.beginTransaction();
            s.update(usuario);
            s.getTransaction().commit();
            s.close();
            sf.close();

        } catch (HibernateException e) {
            System.out.println("Error al actualizar el registro:" + e.getMessage());
        }
    }

    @Override
    public void eliminarUsuario(Usuarios usuario) {
        try {
            sf = new Configuration().configure().buildSessionFactory();
            s = sf.openSession();
            s.beginTransaction();
            s.delete(usuario);
            s.getTransaction().commit();
            s.close();
            sf.close();
        } catch (HibernateException e) {
            System.out.println("Error al eliminar el registro:" + e.getMessage());
        }
    }

    @Override
    public void crearRegistro(Usuarios usuario) {
        try {
            sf = new Configuration().configure().buildSessionFactory();
            s = sf.openSession();
            s.beginTransaction();
            s.save(usuario);
            s.getTransaction().commit();
            s.close();
            System.out.println("datos insertados");
            sf.close();

        } catch (HibernateException e) {
            System.out.println("Error al crear el registro:" + e.getMessage());
        }
    }

    @Override
    public Usuarios obtenerRegistro(int id) {
        try {
            sf = new Configuration().configure().buildSessionFactory();
            s = sf.openSession();
            Usuarios usuario = (Usuarios) s.get(Usuarios.class, id);

            s.close();
            sf.close();
            return usuario;
        } catch (HibernateException e) {
            System.out.println("Error al recuperar el registro:" + e.getMessage());
        }
        return null;
    }

}
