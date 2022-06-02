/*
Autor:Vicente Leonel Vásquez Hernádez
  fecha creación: 8-05-2022
  fecha actualización 10-05-2022
  Descripción:Servlet Usuario
 */
package service;

import entity.Usuarios;
import java.util.List;


public interface IUsuarioService {
     public List<Usuarios>obtenerRegistros();
    public void crearRegistro(Usuarios usuario);
    public void eliminarUsuario(Usuarios usuario);
    public void actualizarRegistro(Usuarios usuario);
    public Usuarios obtenerRegistro(int codigo);
}
