<cfcomponent output="false">
  <!--- Verificar campos de usuario --->
  <cfset key = 'acceso1' />
  <cffunction name = "validarUsuario" access="public" output="false" returntype="array">
    <cfargument name="usuario" type="string" required="true">
    <cfargument name="contrasenia" type="string" required="true">
      <cfset mensajesError = ArrayNew(1) />
      <!--- Validacion de valores --->
      <cfif arguments.usuario EQ ''>
        <cfset ArrayAppend(mensajesError, 'Verifica el campo de Usuario') />
      </cfif>
      <cfif arguments.contrasenia EQ ''>
        <cfset ArrayAppend(mensajesError, 'Verifica el campo de Contraseña') />
      </cfif>
      <cfreturn mensajesError />
  </cffunction>
  <!--- Funcion de Login --->
  <cffunction name = "login" access="public" output="false" returntype="boolean">
    <cfargument name="usuario" type="string" required="true">
    <cfargument name="contrasenia" type="string" required="true">

    <cfset usuarioLoginB = false />
    <cfset arguments.contrasenia = encrypt(arguments.contrasenia, key, 'CFMX_COMPAT','UU') />
    <!--- Validacion de usuario en la base de datos --->
    <cfquery name = "validacion">
      SELECT * FROM usuario WHERE login = '#arguments.usuario#' AND password = '#arguments.contrasenia#'
    </cfquery>
    <!--- Comprobar que el usuario existe --->
    <cfif validacion.recordCount EQ 1>
      <cflogin>
        <cfloginuser name = "#validacion.nombre#" password = "#validacion.password#" roles = "#validacion.id_usuario_grupo#">
      </cflogin>
      <!--- Asignar datos de usuario en la session --->
      <cfset Session.usuarioLogin = {'id_usuario' = validacion.id_usuario, 'nombre' = validacion.nombre, 'id_usuario_grupo' = validacion.id_usuario_grupo} />
      <!--- Cambiar valor de booleano --->
      <cfset usuarioLoginB = true />
      <cfset cambiarActivo(1,true) />
    </cfif>
    <cfreturn usuarioLoginB />
  </cffunction>
  <!--- Funcion de Logout --->
  <cffunction name = "logout" access="public" output="false" returntype="void">
    <!--- Borrar datos de session del usuario --->
    <cfset StructDelete(session, 'usuarioLogin') />
    <!--- Cerrar sesion --->
    <cflogout />
  </cffunction>
  <!--- Funcion cambiar a que el usuario está Activo --->
  <cffunction name = "cambiarActivo" access="public" output="false" returntype="void">
    <cfargument name="activo" type="numeric" required="true">
    <cfargument name="ultimaConexion" type="boolean" required="false">

      <cfquery name = "cambiarActivoDS">
        UPDATE usuario SET activo = #arguments.activo#
        <cfif IsDefined("ultimaConexion") AND ultimaConexion EQ true>
        ,ultima_fecha = '#DateFormat(now(), "yyyy-mm-dd")#'
        </cfif>
       WHERE id_usuario = #Session.usuarioLogin.id_usuario#
      </cfquery>
  </cffunction>
</cfcomponent>
