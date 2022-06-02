<!--
Autor:Vicente Leonel Vásquez Hernádez
  fecha creación: 6-05-2022
  fecha actualización 10-05-2022
  Descripción: se listan los usuarios
-->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="../resourses/myJavaScript.js"></script>
        <script src="../resourses/js/myJavaScript.js" type="text/javascript"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>

        <style rel="stylesheet" >
            <%@include file="../resourses/css/estiloListar.css" %>

        </style>
    </head>
    <body class="body">


        <h1>Lista de usuarios</h1>


        <a href="javascript:history.back()"><img src="resourses/images/button.png" height="80" width="80" alt="Botón"></a>  
        <table class="table table-responsive table-bordered">
            <thead> 
                <tr>
                    <td>Nombres</td>   
                    <td>Apellidos</td>  
                    <td>Edad</td>
                    <td>Correo</td>
                    <td>Contraseña</td>
                    <td>Teléfono</td>
                    <td>Dirección</td>
                    <td>Sexo</td>
                    <td>Editar</td>
                    <td>Eliminar</td>   
                </tr> 
            </thead>  



            <c:forEach var="usuario" items="${ListaUsuario}">
                <tr>

                    <td><c:out value="${usuario.nombreusuario}"/></td>
                    <td><c:out value="${usuario.apellidousuario}"/></td> 
                    <td><c:out value="${usuario.edad}"/></td>
                    <td><c:out value="${usuario.correo}"/></td>
                    <td><c:out value="${usuario.contraseña}"/></td>
                    <td><c:out value="${usuario.telefono}"/></td>
                    <td><c:out value="${usuario.direccion}"/></td>
                    <td><c:out value="${usuario.sexo}"/></td>
                    <td><a href="UsuarioControllerServlet?action=actualizarFormulario&codigo=<c:out value="${usuario.codigo}"/>">Editar</a></td>
                    <td><a href="UsuarioControllerServlet?action=Eliminar&codigo=<c:out value="${usuario.codigo}"/>">Eliminar</a></td>

                </tr> 
            </c:forEach>
        </table> 
        <a href="pages/principal.html">ir a la principal</a>       






    </body>
</html>
