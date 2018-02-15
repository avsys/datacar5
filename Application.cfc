<cfcomponent output="true" displayname="Application">
  <cfset this.name = 'Datacar5' />
  <cfset this.datasource = 'datacar5' />
  <cfset this.sessionManagement = true />
  <cfset this.setclientcookies="Yes"/>
  <cfset this.sessionTimeout = createTimeSpan( 0, 0, 20, 0 ) />
  <cfset this.enablerobustexception = true />

  <!--- OnApplicationStart() --->
  <cffunction name = "OnApplicationStart" returntype="boolean">
    <cfset application.variable = "Variable Global 1 :)" />
    <cfset application.url_datacar5 = "http://www.datacar.com.mx/" />
    <cfreturn true>
  </cffunction>
  <cffunction name = "OnRequestStart" returntype="boolean">
    <cfargument name="tarjetPage" type="string" required="true">
      <cfif IsDefined('url.restartApp')>

      </cfif>
    <cfreturn true>
  </cffunction>
  <cfset this.OnApplicationStart() />
</cfcomponent>
