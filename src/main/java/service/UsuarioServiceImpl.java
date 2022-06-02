/*
Autor:Vicente Leonel Vásquez Hernádez
  fecha creación: 8-05-2022
  fecha actualización 10-05-2022
  Descripción:Servlet Usuario
 */
package service;

import entity.Usuarios;
import java.util.List;
import model.IUsuarioModel;
import model.UsuarioModelImpl;

public class UsuarioServiceImpl implements IUsuarioService {

      IUsuarioModel modelo = new UsuarioModelImpl();

  
    @Override
    public void actualizarRegistro(Usuarios usuario) {
        modelo.actualizarRegistro(usuario);
    }

    @Override
    public List<Usuarios> obtenerRegistros() {
        return modelo.obtenerRegistros();
    }

    @Override
    public Usuarios obtenerRegistro(int codigo) {
        return modelo.obtenerRegistro(codigo);
    }

    @Override
    public void eliminarUsuario(Usuarios usuario) {
        modelo.eliminarUsuario(usuario);

    }

    @Override
    public void crearRegistro(Usuarios usuario) {
       modelo.crearRegistro(usuario);
    }
    
}
