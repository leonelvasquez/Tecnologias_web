<!--
Autor:Vicente Leonel Vásquez Hernádez
  fecha creación: 4-05-2022
  fecha actualización 9-05-2022
  Descripción: formulario jsp
-->

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
        
        <link rel='stylesheet' href='//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css'>
        <link rel='stylesheet' href='//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css'>
        <link rel='stylesheet' href='//cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.0/css/bootstrapValidator.min.css'><link>
       
         <style rel="stylesheet" >
               <%@include file="../resourses/css/estiloCrearRegistro.css" %>
        </style>  
        
    </head>
    <body class="body">
        
    
        
        
        
        
        
        
       <div class="container">
           
            <form class="well form-horizontal" action="UsuarioControllerServlet?action=crear" method="post"  id="contact_form">
                <fieldset>

                    <!-- Form Name -->
                    <legend>Registro de usuario</legend>

                    <!-- Text input-->

                    <div class="form-group">
                        <label class="col-md-4 control-label">Nombres:</label>  
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <input  name="nombreusuario" placeholder="Nombres" class="form-control"  type="text">
                            </div>
                        </div>
                    </div>

                    <!-- Text input-->

                    <div class="form-group">
                        <label class="col-md-4 control-label" >Apellidos:</label> 
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <input name="apellidousuario" placeholder="Apellidos" class="form-control"  type="text">
                            </div>
                        </div>
                    </div>
                    
                          <!-- Text input-->

                    <div class="form-group">
                        <label class="col-md-4 control-label">Edad:</label>  
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <input name="edad" placeholder="Edad" class="form-control"  type="text" onkeypress="return event.charCode >= 48 && event.charCode <= 57">
                                 
                            </div>
                        </div>
                    </div>
                    

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label">Correo:</label>  
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                <input name="correo" placeholder="Correo" class="form-control"  type="text">
                            </div>
                        </div>
                    </div>
                    
                     <!-- Text input-->

                    <div class="form-group">
                        <label class="col-md-4 control-label">Contraseña:</label>  
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
                                <input name="contrasena" placeholder="Contraseña" class="form-control" type="text">
                            </div>
                        </div>
                    </div>


                    <!-- Text input-->

                    <div class="form-group">
                        <label class="col-md-4 control-label">Teléfono:</label>  
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
                                <input name="telefono" placeholder="(951)299-30-20" class="form-control" type="text">
                            </div>
                        </div>
                    </div>

                    <!-- Text input-->

                    <div class="form-group">
                        <label class="col-md-4 control-label">Dirección:</label>  
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                                <input name="direccion" placeholder="Dirección" class="form-control" type="text">
                            </div>
                        </div>
                    </div>

              

                    <!-- Select Basic -->

                    <div class="form-group"> 
                        <label class="col-md-4 control-label">Sexo:</label>
                        <div class="col-md-4 selectContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
                                <select name="sexo" class="form-control selectpicker" >
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
                            <button type="submit" class="btn btn-warning" >Guardar usuario <span class="glyphicon glyphicon-send"></span></button>
                        </div>
                    </div>
                    
                    
                    
                     <a href="UsuarioControllerServlet?action=Listar">ir a listar</a> 
                    
                     

                </fieldset>
              
            </form>
        </div>
        
  
    </body>
</html>
