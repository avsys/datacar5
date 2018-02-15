<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>dataCAR 5</title>
    <cfinclude template = "../includes/head.cfm">
      <!-- Custom styles for this template -->
    <link href="../css/animate.min.css" rel="stylesheet">
    <link href="../css/datepicker.min.css" rel="stylesheet">
    <link href="../css/transformaicons.css" rel="stylesheet">
    <link href="../css/slidebars.css" rel="stylesheet">
    <style>
    ul.sidebar-nav{
      padding-left: 0px;
    }
    .sidebar-nav a.btn{
      padding: 1em;
      width: 100%;
      text-align: left;
      box-shadow: none;
      border-radius: 0;
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
      /* background-color: rgba(0,0,0,.09); */
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

    #SideNav, .navbar{
      background: #23282d;
      color: #fff;
    }
    .navbar{
      padding: 1px;
    }

    #SideNav a {
      color: #fff;
      /* transition: width 0.5s;
      transition-delay: 0.5s; */
    }
    .sidebar-brand{
      background:#CC0000;
    }
    .icon-dropdown{
      color: white;
    }
    [canvas=container]{
      overflow-y: overlay;
    }
  </style>
  </head>
<body>
  <div canvas="container">
      <div class="content">
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
            <div class="col-lg-12">
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
            <div class="col-lg-3">
              <button type="button" class="btn btn-primary mt-3" name="button">Filtrar</button>
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
  </div>

  <div off-canvas="main-menu left shift" id="SideNav" style="margin-left: -255px; display: block; transition-duration: 300ms; transform: translate(255px, 0px);">
    <ul class="sidebar-nav">
        <li class="sidebar-brand text-center">
            <a href="#" class="navbar-brand">
                <img src="../img/logo-datacar.png" alt="" width="150" height="45">
            </a>
        </li>
        <li>
            <a class="a-active btn" href="#"><i class="fa fa-tachometer" style="color:white;"></i> Dashboard</a>
        </li>
        <li class="m-collapse">
          <a class="btn dropdown-toggle dropdown-toggle-split" data-toggle="collapse" href="#agenciasCollapse" role="button" aria-expanded="false" aria-controls="agenciasCollapse">
            <span><i class="fa fa-building-o icon-dropdown"></i> Agencias</span>
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
            <span><i class="fa fa-cogs icon-dropdown"></i> Configuración</span>
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
            <span><i class="fa fa-globe icon-dropdown"></i> Geografía </span>
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
            <span><i class="fa fa-bullhorn icon-dropdown"></i> Medios </span>
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
  </div>

    <cfinclude template = "../includes/scripts.cfm">

    <script type="text/javascript" src="../js/Chart.min.js"></script>
    <script type="text/javascript" src="../js/pieceLabel.min.js"></script>
    <script type="text/javascript" src="../js/datepicker.min.js"></script>
    <script type="text/javascript" src="../js/slidebars.min.js"></script>
    <script async type="text/javascript" src="../js/admin.js"></script>
    <script type="text/javascript" src="../js/transformaicons.min.js"></script>
    <script src= "https://cdn.zingchart.com/zingchart.min.js"></script>
    <script>zingchart.MODULESDIR = "https://cdn.zingchart.com/modules/";ZC.LICENSE = ["569d52cefae586f634c54f86dc99e6a9","ee6b7db5b51705a13dc2339db3edaf6d"];</script>

    <script>
      var controller, resizeTimer;
      //Configuracion de graficas
      Chart.defaults.global.defaultFontFamilily = 'Roboto';
      Chart.defaults.global.title.display = true;
      var animationBar = {
          onComplete: function () {
              var chartInstance = this.chart,
                  ctx = chartInstance.ctx;
              ctx.font = Chart.helpers.fontString(Chart.defaults.global.defaultFontSize, Chart.defaults.global.defaultFontStyle, Chart.defaults.global.defaultFontFamily);
              ctx.textAlign = 'center';
              ctx.fillStyle = "rgba(0, 0, 0, 0.5)";
              ctx.textBaseline = 'bottom';

              this.data.datasets.forEach(function (dataset, i) {
                  var meta = chartInstance.controller.getDatasetMeta(i);
                  meta.data.forEach(function (bar, index) {
                      var data = dataset.data[index];
                      ctx.fillText(data, bar._model.x, bar._model.y - 5);

                  });
              });
          }
      };
      var animationHorizontalBar = {
          onComplete: function () {
              var chartInstance = this.chart,
                  ctx = chartInstance.ctx;

              ctx.textAlign = 'center';
              ctx.fillStyle = "rgba(0, 0, 0, 0.5)";
              ctx.textBaseline = 'bottom';

              this.data.datasets.forEach(function (dataset, i) {
                  var meta = chartInstance.controller.getDatasetMeta(i);
                  meta.data.forEach(function (bar, index) {
                      ctx.font = Chart.helpers.fontString(bar._model.height-2, Chart.defaults.global.defaultFontStyle, Chart.defaults.global.defaultFontFamily);
                      var data = dataset.data[index];
                      ctx.fillText(data, bar._model.x-15, bar._model.y+(bar._model.height/2));
                  });
              });
          }
      };
      var tooltipPie = {
      callbacks: {
        label: function(tooltipItem, data) {
          var allData = data.datasets[tooltipItem.datasetIndex].data;
          var tooltipLabel = data.labels[tooltipItem.index];
          var tooltipData = allData[tooltipItem.index];
          var total = 0;
          for (var i in allData) {
            total += allData[i];
          }
          var tooltipPercentage = Math.round((tooltipData / total) * 100);
          return tooltipLabel + ': ' + tooltipData + ' (' + tooltipPercentage + '%)';
        }
      }
      };
      var legendPie =  {
            display: true,
            position: 'top',
            labels: {
                generateLabels: function(chart) {
                    var data = chart.data;
                    if (data.labels.length && data.datasets.length) {
                        return data.labels.map(function(label, i) {
                            var meta = chart.getDatasetMeta(0);
                            var ds = data.datasets[0];
                            var arc = meta.data[i];
                            var custom = arc && arc.custom || {};
                            var getValueAtIndexOrDefault = Chart.helpers.getValueAtIndexOrDefault;
                            var arcOpts = chart.options.elements.arc;
                            var fill = custom.backgroundColor ? custom.backgroundColor : getValueAtIndexOrDefault(ds.backgroundColor, i, arcOpts.backgroundColor);
                            var stroke = custom.borderColor ? custom.borderColor : getValueAtIndexOrDefault(ds.borderColor, i, arcOpts.borderColor);
                            var bw = custom.borderWidth ? custom.borderWidth : getValueAtIndexOrDefault(ds.borderWidth, i, arcOpts.borderWidth);

              // We get the value of the current label
        var value = chart.config.data.datasets[arc._datasetIndex].data[arc._index];

                            return {
                                // Instead of `text: label,`
                                // We add the value to the string
                                text: label + " [" + value +"]",
                                fillStyle: fill,
                                strokeStyle: stroke,
                                lineWidth: bw,
                                hidden: isNaN(ds.data[i]) || meta.data[i].hidden,
                                index: i
                            };
                        });
                    } else {
                        return [];
                    }
                }
            }
        };

      $(document).ready(function() {
        transformicons.add('.tcon');
        cargar('dashboard/encuesta_salida.cfm', 0);
        // Create a new instance of Slidebars
        controller = new slidebars();
        controller.init();
        if($( window ).width() > 768){
          transformicons.toggle('.tcon');
          toogleMenu();
        }

        $( window ).resize(function() {
          clearTimeout(resizeTimer);
          resizeTimer = setTimeout(function(){
            if ($( window ).width() <= 768) {
              if ($( ".content" ).css( "margin-Right") != "0px") {
                controller.toggle( 'main-menu' );
                transformicons.toggle('.tcon');
                $( ".content" ).animate({
                  marginRight: "0px",
                },300);
              }
            }
          }, 300);
        });
        //Funcion de Menu
        function toogleMenu(){
          // event.preventDefault();
          // event.stopPropagation();
          controller.toggle( 'main-menu' );
          if($( window ).width() > 768){
            var margin = "0px";
            if ($( ".content" ).css( "margin-Right") == margin) {
              margin = "255px";
            }
            $( ".content" ).animate({
              marginRight: margin,
            },300);
          }
        }

        // Funcion Calendario
        $("#btn-calendar").click(function(){
          if($("#row-calendar").is(":visible")){
              $("#row-calendar").hide("fast");
          }
          else{
            $("#row-calendar").show("fast");
          }
        });

        // Toggle main menu
        $( '.navbar-toggler' ).on( 'click', function ( event ) {
          toogleMenu();
        });

        // Botónes de encuestas
        $("a.nav-tabs").click(function(e){
          $("a.nav-tabs").removeClass("active");
          $(this).addClass("active");
          cargar('dashboard/'+$(this).attr('id')+'.cfm','slow');
        });

        function cargar(pagina,tiempo){
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
         $('#page-content').fadeOut(tiempo);
         $("#page-content").html('<div class="w-100 h-100 text-center mt-5"><i class="fa fa-cog fa-spin fa-3x fa-fw"></i><span class="sr-only">Cargando...</span></div>');
         $('#page-content').fadeOut(tiempo, function(){
           $('#page-content').load(pagina, function(){
             $('#page-content').fadeIn(tiempo);
           });
         });

         return false
        }

      });
    </script>
  </body>
</html>
