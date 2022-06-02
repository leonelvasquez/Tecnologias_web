/*
Autor:Vicente Leonel Vásquez Hernádez
  fecha creación: 8-05-2022
  fecha actualización 10-05-2022
  Descripción:Servlet Usuario
 */
package controller;

import entity.Usuarios;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import service.IUsuarioService;
import service.UsuarioServiceImpl;

public class UsuarioControllerServlet extends HttpServlet {

    IUsuarioService service;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        System.out.println("Action:" + action);

        switch (action) {
            case "crear":

                crear(request, response);
                break;
            case "Listar":

                Listar(request, response);
                break;
            case "crearFormulario":

                crearFormulario(request, response);
                break;

            case "actualizarFormulario":

                actualizarFormulario(request, response);

            case "actualizar":

                actualizar(request, response);
                break;
            case "Eliminar":

                Eliminar(request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("");
        doGet(request, response);
    }

    private void Listar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("pages/lista.jsp");
        this.service = new UsuarioServiceImpl();
        List<Usuarios> ListaUsuario = this.service.obtenerRegistros();
        request.setAttribute("ListaUsuario", ListaUsuario);
        dispatcher.forward(request, response);
    }

    private void crearFormulario(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("pages/index.jsp");
        dispatcher.forward(request, response);
    }

    private void actualizarFormulario(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Usuarios usuario = this.service.obtenerRegistro(Integer.parseInt(request.getParameter("codigo")));
        request.setAttribute("usuario", usuario);
        RequestDispatcher dispatcher = request.getRequestDispatcher("pages/actualiza.jsp");
        dispatcher.forward(request, response);
    }

    private void crear(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Usuarios usuario = new Usuarios();
        usuario.setNombreusuario(request.getParameter("nombreusuario"));
        usuario.setApellidousuario(request.getParameter("apellidousuario"));
        usuario.setEdad(Integer.parseInt(request.getParameter("edad")));
        usuario.setCorreo(request.getParameter("correo"));
        usuario.setContraseña(request.getParameter("contrasena"));
        usuario.setTelefono(request.getParameter("telefono"));
        usuario.setDireccion(request.getParameter("direccion"));
        usuario.setSexo(request.getParameter("sexo"));
        service = new UsuarioServiceImpl();
        service.crearRegistro(usuario);

        RequestDispatcher dispatcher = request.getRequestDispatcher("pages/index.jsp");
        dispatcher.forward(request, response);
        this.service = new UsuarioServiceImpl();
        List<Usuarios> ListaUsuario = this.service.obtenerRegistros();
        request.setAttribute("ListaUsuario", ListaUsuario);
        dispatcher.forward(request, response);
    }

    private void actualizar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Usuarios usuario = new Usuarios(Integer.parseInt(request.getParameter("codigo")));
        usuario.setNombreusuario(request.getParameter("nombreusuario"));
        usuario.setApellidousuario(request.getParameter("apellidousuario"));
        usuario.setEdad(Integer.parseInt(request.getParameter("edad")));
        usuario.setCorreo(request.getParameter("correo"));
        usuario.setContraseña(request.getParameter("contrasena"));
        usuario.setTelefono(request.getParameter("telefono"));
        usuario.setDireccion(request.getParameter("direccion"));
        usuario.setSexo(request.getParameter("sexo"));
        service = new UsuarioServiceImpl();
        service.actualizarRegistro(usuario);
        System.out.println("usuario actualizado");

        RequestDispatcher dispatcher = request.getRequestDispatcher("UsuarioControllerServlet?action=Listar");

        dispatcher.forward(request, response);

        this.service = new UsuarioServiceImpl();
        List<Usuarios> ListaUsuario = this.service.obtenerRegistros();

        request.setAttribute("ListaUsuario", ListaUsuario);
        dispatcher.forward(request, response);

    }

    private void Eliminar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("pages/lista.jsp");
        this.service = new UsuarioServiceImpl();
        Usuarios usuario = new Usuarios();
        usuario = this.service.obtenerRegistro(Integer.parseInt(request.getParameter("codigo")));
        service.eliminarUsuario(usuario);

        List<Usuarios> ListaUsuario = this.service.obtenerRegistros();
        request.setAttribute("ListaUsuario", ListaUsuario);
        dispatcher.forward(request, response);
    }

}
