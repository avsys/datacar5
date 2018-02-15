<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>dataCAR 5</title>
    <cfinclude template = "includes/head.cfm">
    <!-- Custom styles for this template -->
    <link href="css/login.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
  </head>

  <body class="text-center">
    <style>
      body{
      	background-image: URL(../img/back-datacar.jpg);
      	background-repeat:no-repeat;
        background-size:cover;
      }
      .card{
        border-radius: 10px;
      }
      .card-img-top{
        border-top-left-radius: 10px;
        border-top-right-radius: 10px;
      }
      .card-footer{
        border-top: none;
      }
      .olvidaste:hover{
        color: #007bff !important;
      }
    </style>
    <!--- Crear instancia de componente de login --->
    <cfset autentificacion = createobject('component','components.autentificacion')/>
    <cfif IsUserLoggedIn() >
      <cflocation url = "/admin" addtoken="no">
    </cfif>

    <cfif StructKeyExists(form, 'submitLogin')>
      <!--- Validacion de datos --->
      <cfset msjError = autentificacion.validarUsuario(FORM.fl_User,FORM.fl_Password) />
      <cfif ArrayIsEmpty(msjError)>
        <!--- Ahora hacer el login --->
        <cfset isUserLogin = autentificacion.login(FORM.fl_User,FORM.fl_Password) />
        <cfif isUserLogin EQ false>
          <cfset ArrayAppend(msjError, 'Usuario o contrase&ntilde;a incorrectos.') />
        </cfif>
      </cfif>

    </cfif>

    <!--- <cfquery name = "insertUsuario">
      INSERT INTO usuario(fecha, nombre, login, password, cargo, id_usuario_grupo) VALUES('2017-01-22','Carlos Magallón','carlos','#encrypted#','WEB MASTER', 1)
    </cfquery> --->

    <cfform class="form-signin card" style="border: 1px solid ##ced4da; padding: 0px;">
      <img class="mb-4 card-img-top" src="img/logo-datacar.png" alt="" width="72" height="72" style="padding: 10px 60px; background: #CC0000;">
      <div class="card-body" style="padding: 15px;">

        <div class="input-group mb-3">
          <div class="input-group-prepend">
            <span class="input-group-text bg-light" id="addUser"><i class="fa fa-user"></i></span>
          </div>
          <input type="text" id="fl_User" name="fl_User" class="form-control" aria-label="Usuario" required autofocus aria-describedby="addUser">
        </div>
        <div class="input-group mb-3">
          <div class="input-group-prepend">
            <span class="input-group-text bg-light" id="addPass"><i class="fa fa-lock"></i></span>
          </div>
          <input type="password" id="fl_Password" name="fl_Password" class="form-control" aria-label="Contrase&ntilde;a" required style="margin: 0px;" aria-describedby="addPass">
        </div>
        <div class="card-footer bg-transparent">

        <button class="btn btn-link  text-muted olvidaste" data-toggle="modal" data-target="#exampleModal" style="margin: 10px">&iquest;Olvidaste tu contraseña?</button>
        <!--- <style>
        .form-control{
        margin-bottom: 10px;
        }
        </style>
        <label for="inputUser" class="sr-only">Usuario</label>
        <input type="text" id="fl_User" name="fl_User" class="form-control" placeholder="Usuario" required="" autofocus="">
        <label for="inputPassword" class="sr-only">Contrase&ntilde;a</label>
        <input type="password" id="fl_Password" name="fl_Password" class="form-control" placeholder="Contrase&ntilde;a" required=""> --->

          <button class="btn btn-lg btn-outline-primary btn-block" name="submitLogin" id="submitLogin" type="submit">Ingresar</button>

           <cfif IsDefined('msjError') AND NOT ArrayIsEmpty(msjError)>
             <div class="alert alert-danger mt-3" role="alert">
             <cfloop array="#msjError#" item="error">
                <cfoutput>#error#</cfoutput>
             </cfloop>
            </div>
           </cfif>
           <cfif IsUserLoggedIn()>
             <p style="color:green;">Sesión inciada como:
             <cfoutput>
               #Session.usuarioLogin.nombre#
             </cfoutput></p>
           </cfif>
           <p class="mt-5 mb-3 text-muted">AVSYS&copy; 2018</p>
         </div>
     </div>
    </cfform>
    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <cfform>
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">¿Olvidaste contraseña?</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
              <div class="form-group text-left">
                <label for="exampleInputEmail1">Correo Electronico:</label>
                <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
              </div>
          </div>
          <div class="modal-footer justify-content-center">
            <button type="button" class="btn btn-outline-primary w-25">Enviar</button>
          </div>
        </cfform>
        </div>
      </div>
    </div>
    <cfinclude template = "includes/scripts.cfm">
      <script>
      $( document ).ready(function() {
        // Si dió un error, hace animacion
       <cfif IsDefined('msjError') AND NOT ArrayIsEmpty(msjError)>
          $('.card').addClass('animated shake');
       </cfif>
       $('#fl_User, #fl_Password').keypress(function(event) {
          if (event.keyCode == 13 || event.which == 13) {
              $('#submitLogin').focus();
              $('#submitLogin').click();
              event.preventDefault();
          }
      });
      });
      </script>
</body>
</html>
