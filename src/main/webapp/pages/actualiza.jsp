<!--
Autor:Vicente Leonel Vásquez Hernádez
  fecha creación: 4-05-2022
  fecha actualización 10-05-2022
  Descripción: actualiza el formulario
-->

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../resourses/css/estiloCrearRegistro.css">
        <link rel="stylesheet" href="../webjars/bootstrap/5.1.3/css/bootstrap.min.css">
        <script type="text/javascript" src="../resourses/myJavaScript.js"></script>
        <script src="../resourses/js/myJavaScript.js" type="text/javascript"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>
     
         <style rel="stylesheet" >
               <%@include file="../resourses/css/estiloCrearRegistro.css" %>
        </style>  
        
        <link rel='stylesheet' href='//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css'>
        <link rel='stylesheet' href='//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css'>
        <link rel='stylesheet' href='//cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.0/css/bootstrapValidator.min.css'><link>

    </head>
 <body class="body">
    <div class="container">
        
         <form class="well form-horizontal" action="UsuarioControllerServlet?action=actualizar" method="post"  id="contact_form">
            <input type='hidden' name='codigo' value="<c:out value="${usuario.codigo}"></c:out>"><br>
                

                       
                            <fieldset>

                                <!-- Form Name -->
                                <legend>Registro de usuario</legend>

                                <!-- Text input-->

                                <div class="form-group">
                                    <label class="col-md-4 control-label">Nombres:</label>  
                                    <div class="col-md-4 inputGroupContainer">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                            <input type="text" name="nombreusuario" required="" value="<c:out value="${usuario.nombreusuario}" ></c:out>"><br>
                                        </div>
                                    </div>
                                </div>

                                <!-- Text input-->

                                <div class="form-group">
                                    <label class="col-md-4 control-label" >Apellidos:</label> 
                                    <div class="col-md-4 inputGroupContainer">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>

                                            <input type="text" name="apellidousuario" required="" value="<c:out value="${usuario.apellidousuario}" ></c:out>"><br>
                                        </div>
                                    </div>
                                </div>

                                <!-- Text input-->

                                <div class="form-group">
                                    <label class="col-md-4 control-label">Edad:</label>  
                                    <div class="col-md-4 inputGroupContainer">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                            <input type="text" name="edad" required="" value="<c:out value="${usuario.edad}" ></c:out>"><br>

                                        </div>
                                    </div>
                                </div>


                                <!-- Text input-->
                                <div class="form-group">
                                    <label class="col-md-4 control-label">Correo:</label>  
                                    <div class="col-md-4 inputGroupContainer">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                            <input type="text" name="correo" required="" value="<c:out value="${usuario.correo}" ></c:out>"><br>
                                        </div>
                                    </div>
                                </div>

                                <!-- Text input-->

                                <div class="form-group">
                                    <label class="col-md-4 control-label">Contraseña:</label>  
                                    <div class="col-md-4 inputGroupContainer">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
                                            <input type="text" name="contrasena" required="" value="<c:out value="${usuario.contraseña}" ></c:out>"><br>
                                        </div>
                                    </div>
                                </div>


                                <!-- Text input-->

                                <div class="form-group">
                                    <label class="col-md-4 control-label">Teléfono:</label>  
                                    <div class="col-md-4 inputGroupContainer">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
                                            <input type="text" name="telefono" required="" value="<c:out value="${usuario.telefono}" ></c:out>"><br>
                                        </div>
                                    </div>
                                </div>

                                <!-- Text input-->

                                <div class="form-group">
                                    <label class="col-md-4 control-label">Dirección:</label>  
                                    <div class="col-md-4 inputGroupContainer">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                                            <input type="text" name="direccion" required="" value="<c:out value="${usuario.direccion}" ></c:out>"><br>
                                        </div>
                                    </div>
                                </div>



                                <!-- Select Basic -->

                                <div class="form-group"> 
                                    <label class="col-md-4 control-label">Sexo:</label>
                                    <div class="col-md-4 selectContainer">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
                                            <select name="sexo" class="form-control selectpicker" value="<c:out value="${usuario.sexo}" ></c:out>"><br>>
                                            <option value=" " >Por favor selecciona tu sexo</option>
                                            <option>Masculino</option>
                                            <option>Femenino</option>
                                        </select>
                                    </div>
                                </div>
                            </div>


                            <div class="form-group">
                                <label class="col-md-4 control-label"></label>
                                <div class="col-md-4">
                                    <button type="submit" class="btn btn-warning" >Actualizar regristro <span class="glyphicon glyphicon-send"></span></button>
                                </div>
                            </div>
                                            
                                            
                                         
                


                        </fieldset>

                    
              
           
        </form>
    </div>
 </body>
</html>
