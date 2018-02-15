<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>dataCAR 5</title>
    <cfinclude template = "../includes/head.cfm">
      <!-- Custom styles for this template -->
    <link href="../css/animate.css" rel="stylesheet">
    <link href="../css/datepicker.min.css" rel="stylesheet">
    <link href="../css/transformaicons.css" rel="stylesheet">
  </head>
<body>

  <style media="screen">
    ul.sidebar-nav{
      padding-left: 0px;
    }
    .sidebar-nav a.btn{
      padding: 1em;
      width: 100%;
      text-align: left;
      box-shadow: none;
      /* border-bottom: 0.5px solid rgba(156, 161, 166, 0.5); */
    }
    a.btn:hover{
      background-color: rgba(255,255,255,.18) !important;
    }
    a.a-active{
      background-color: #0099cc !important;
    }
    a.dropdown-toggle:focus{
      background-color: rgba(0,153,204,0.3) !important;
    }
    ul.collapse, .collapsing{
      background: #32373c;
      list-style: none;
      padding-left: 0px;
    }
    ul.collapse .btn{
      padding-left: 50px;
    }
    ul.collapsing .btn{
      padding-left: 50px;
    }
    .panel a {
      text-decoration: none;
    }
    ul.sidebar-nav .dropdown-toggle::after{
      float: right;
      margin-top: 0.5em;
    }
    .navbar .dropdown-toggle{
      background: transparent;
      color: #fff;
    }
    .navbar .dropdown-item:hover{
      background-color: rgba(0,0,0,.09);
    }
    .estadistica{
      font-size: 4rem;
      font-weight: 400;
      line-height: 1em;
      color: #1b1c1d;
      text-transform: uppercase;
      text-align: center;
    }
    .list-group-item .text-muted{
      margin-bottom: 0px;
      font-size: 10px;
    }
    .navbar-nav .dropdown-menu{
      position: absolute;
    }
    .btn-pdf{
      height: 38px;
    }
    #btn-calendar{
      height: 38px;
    }
          /*
      Recommeded CSS
      ==============
      */

      .panel {
        position: fixed;
        left: -15.625em; /*or width of your navigation panel*/
        width: 15.625em; /*should match the above value*/
      }

      /*
      Demo Specific Styles
      ====================
      */

      .wrap {
        position: relative;
        max-width: 80%;
        margin: 0 auto;
        padding: 20px;
      }

      .panel, .navbar{
        background: #23282d;
        color: #fff;
      }
      .navbar{
        padding: 1px;
      }

      .panel a {
        color: #fff;
      }

  </style>
    <body>

    <nav id="menu" class="panel" role="navigation">
      <ul class="sidebar-nav">
          <li class="sidebar-brand text-center" style="background:#CC0000;">
              <a href="#" class="navbar-brand">
                  <img src="../img/logo-datacar.png" alt="" width="150" height="45">
              </a>
          </li>
          <li>
              <a class="a-active btn" href="#"><i class="fa fa-tachometer" style="color:white;"></i> Dashboard</a>
          </li>
          <li class="m-collapse">
            <a class="btn dropdown-toggle" data-toggle="collapse" href="#agenciasCollapse" role="button" aria-expanded="false" aria-controls="agenciasCollapse">
              <span><i class="fa fa-building-o" style="color:white;"></i> Agencias</span>
            </a>

            <!--- Colapso de encuestas --->
            <ul class="collapse multi-collapse" id="agenciasCollapse">
              <li>
                <a class="btn" href="#">Usuarios</a>
              </li>
              <li>
                <a class="btn" href="#">Vendedores</a>
              </li>
              <li>
                <a class="btn" href="#">Responsables</a>
              </li>
              <li>
                <a class="btn" href="#">Correos</a>
              </li>
              <li>
                <a class="btn" href="#">Recordatorios</a>
              </li>
            </ul>
          </li>
          <li class="m-collapse">
            <a class="btn dropdown-toggle" data-toggle="collapse" href="#configuracionCollapse" role="button" aria-expanded="false" aria-controls="configuracionCollapse">
              <span><i class="fa fa-cogs" style="color:white;"></i> Configuración</span>
            </a>

            <!--- Colapso de encuestas --->
            <ul class="collapse multi-collapse" id="configuracionCollapse">
              <li>
                <a class="btn" href="#">Marcas</a>
              </li>
              <li>
                <a class="btn" href="#">Segmentos</a>
              </li>
              <li>
                <a class="btn" href="#">Modelos</a>
              </li>
              <li>
                <a class="btn" href="#">Catalogos</a>
              </li>
              <li>
                <a class="btn" href="#">Colores</a>
              </li>
              <li>
                <a class="btn" href="#">Combustible</a>
              </li>
              <li>
                <a class="btn" href="#">Cilindros</a>
              </li>
              <li>
                <a class="btn" href="#">Transmisión</a>
              </li>
              <li>
                <a class="btn" href="#">Puertas</a>
              </li>
              <li>
                <a class="btn" href="#">Años</a>
              </li>
            </ul>
          </li>
          <li class="m-collapse">
            <a class="btn dropdown-toggle" data-toggle="collapse" href="#geografiaCollapse" role="button" aria-expanded="false" aria-controls="geografiaCollapse">
              <span><i class="fa fa-globe" style="color:white;"></i> Geografía </span>
            </a>

            <!--- Colapso de encuestas --->
            <ul class="collapse multi-collapse" id="geografiaCollapse">
              <li>
                <a class="btn" href="#">Pais</a>
              </li>
              <li>
                <a class="btn" href="#">Estado</a>
              </li>
              <li>
                <a class="btn" href="#">Ciudad</a>
              </li>
            </ul>
          </li>
          <li class="m-collapse">
            <a class="btn dropdown-toggle" data-toggle="collapse" href="#mediosCollapse" role="button" aria-expanded="false" aria-controls="mediosCollapse">
              <span><i class="fa fa-bullhorn" style="color:white;"></i> Medios </span>
            </a>

            <!--- Colapso de encuestas --->
            <ul class="collapse multi-collapse" id="mediosCollapse">
              <li>
                <a class="btn" href="#">Radio</a>
              </li>
              <li>
                <a class="btn" href="#">Prensa</a>
              </li>
              <li>
                <a class="btn" href="#">TV</a>
              </li>
            </ul>
          </li>
      </ul>
    </nav>

    <div class="wrap push" style="padding: 0px;max-width: 100%;">

        <!--- <a href="#menu" class="menu-link">&#9776;</a> --->
        <!-- .navbar -->
        <nav class="navbar sticky-top">
          <!-- Navbar content -->
          <button type="button" class="tcon tcon-menu--xcross navbar-toggler menu-link" id="menu-toggle">
            <span class="tcon-menu__lines" aria-hidden="true"></span>
            <span class="tcon-visuallyhidden">toggle menu</span>
          </button>

          <div class="navbar-nav flex-row ml-md-auto d-md-flex">
            <div class="dropdown" style="margin-right: 1em;">
              <button class="btn dropdown-toggle" type="button" id="btn-user" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <img class="rounded-circle" src="http://via.placeholder.com/200x200/ffffff" alt="" width="30" height="30">
                <span class="navbar-text d-none d-md-inline-block">
                  Usuario Registrado
                </span>
              </button>
              <div class="dropdown-menu" aria-labelledby="btn-user">
                <a class="dropdown-item" href="#"><i class="fa fa-user"></i> Perfil</a>
                <a class="dropdown-item" href="#"><i class="fa fa-question"></i> Ayuda</a>
                <a class="dropdown-item" href="#"><i class="fa fa-sign-out"></i> Salir</a>
              </div>
            </div>
          </div>
        </nav>
        <!-- /.navbar -->
        <!-- Page Content -->
        <div id="page-content-wrapper">
          <div class="container">
            <!--- Filtro --->
            <div class="row justify-content-between mt-3">
              <div class="col-lg-6">
                <select class="form-control" name="">
                  <option value="1" selected>Ford Plasencia</option>
                  <option value="2">Ford Tepic</option>
                  <option value="3">Ford Santa Anita</option>
                </select>
              </div>
              <div class="col-lg-2 text-right btn-pdf">
                <button type="button" class="btn btn-primary mt-3" name="button"><i class="fa fa-file-pdf-o"></i></button>
                <button type="button" class="btn btn-primary mt-3" name="button"><i class="fa fa-envelope-o"></i></button>
              </div>
            </div>
            <div class="row">
              <div class="col-lg-6">
                  <button type="button" class="btn btn-secondary mt-3">Mes Actual</button>
                  <button type="button" class="btn btn-secondary mt-3">Mes Anterior</button>
                  <button type="button" class="btn btn-secondary mt-3">Año Actual</button>
                  <button type="button" class="btn btn-secondary mt-3">Año Anterior</button>
                  <button type="button" class="btn btn-secondary mt-3" id="btn-calendar"><i class="fa fa-calendar-o"></i></button>
              </div>
            </div>
            <div class="row" style="display: none;" id="row-calendar">
              <div class="col-lg-3">
                <div class="input-group mt-3">
                  <div class="input-group-prepend bg-light">
                    <span class="input-group-text" id="add-calendar1"><i class="fa fa-calendar-o"></i></span>
                  </div>
                  <input type="text" class="form-control" placeholder="Fecha Inicio" aria-label="Fecha Inicio" aria-describedby="add-calendar1" data-toggle="datepicker">
                </div>
              </div>
              <div class="col-lg-3">
                <div class="input-group mt-3">
                  <div class="input-group-prepend bg-light">
                    <span class="input-group-text" id="add-calendar2"><i class="fa fa-calendar-o"></i></span>
                  </div>
                  <input type="text" class="form-control" placeholder="Fecha Final" aria-label="Fecha Final" aria-describedby="add-calendar2" data-toggle="datepicker">
                </div>
              </div>
            </div>
            <div class="row mt-3">
              <div class="col">
                <button type="button" class="btn btn-primary" name="button">Filtrar</button>
              </div>
            </div>
            <!--- /Filtro --->
            <!--- Tabs --->
              <ul class="nav nav-tabs mt-3">
                <li class="nav-item">
                  <a class="nav-link nav-tabs active" id="encuesta_salida" href="#">Salida</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link nav-tabs" id="encuesta_caja" href="#">Caja</a>
                </li>
              </ul>
            <div id="page-content">


            </div>
        </div>
      </div>


    </div>
    <cfinclude template = "../includes/scripts.cfm">

    <script type="text/javascript" src="../js/transformaicons.js"></script>
    <script type="text/javascript" src="../js/Chart.min.js"></script>
    <script type="text/javascript" src="../js/datepicker.js"></script>
    <script type="text/javascript" src="../js/datepicker.es-ES.js"></script>
    <script type="text/javascript" src="../js/bigSlide.js"></script>
    <script type="text/javascript" src="../js/admin.js"></script>
    <script>transformicons.add('.tcon'); transformicons.toggle('.tcon');</script>
    <script>
    // Funcion Calendario
    $("#btn-calendar").click(function(){
      if($("#row-calendar").is(":visible")){
          $("#row-calendar").hide("slow");
      }
      else{
        $("#row-calendar").show("slow");
      }
    });
    // Botónes de encuestas
    $("a.nav-tabs").click(function(e){
      $("a.nav-tabs").removeClass("active");
      $(this).addClass("active");
      cargar('dashboard/'+$(this).attr('id')+'.cfm');
    });

    function cargar(pagina){
      // $.ajax({
      //   // the location of the CFC to run
      //     url: "Dashboard/encuesta_salida.cfm"
      //   // send a GET HTTP operation
      //   , type: "post"
      //   // tell jQuery we're getting JSON back
      //   // send the data to the CFC
      //   , data: {
      //     variable_main:'variable_MAIN'
      //   //   // the method in the CFC to run
      //   //     method: "getUserById"
      //   //   /*
      //   //     send other arguments to CFC
      //   //   */
      //   //   // send the ID entered by the user
      //   //   , userId: $("#userId").val()
      //   }
      //   // this gets the data returned on success
      //   , success: function (data){
      //     // this uses the "jquery.field.min.js" library to easily populate your form with the data from the server
      //     $("#page-content-wrapper").html(data);
      //   }
      //   // this runs if an error
      //   , error: function (xhr, textStatus, errorThrown){
      //     // show error
      //     alert(errorThrown);
      //   }
      // });
     //  $.get(pagina,{},function(data){
     //     $("#page-content").html(data);
     // });
     // Animacion de fadeIn y fadeOut
     $('#page-content').fadeOut('slow');
     $("#page-content").html('<div class="w-100 h-100 text-center mt-5"><i class="fa fa-cog fa-spin fa-3x fa-fw"></i><span class="sr-only">Cargando...</span></div>');
     $('#page-content').fadeOut('slow', function(){
       $('#page-content').load(pagina, function(){
         $('#page-content').fadeIn('slow');
       });
     });

     return false
    }
    $(document).ready(function() {
      cargar('dashboard/encuesta_salida.cfm');
      $('[data-toggle="datepicker"]').datepicker({language: 'es-ES'});
      $('.menu-link').bigSlide({state:'open'});
    });
    </script>
    </body>
</html>
