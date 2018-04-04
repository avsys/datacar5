<?php 
// session_start(); 

// if(!isset($_SESSION['usuario'])){	
// 	header('location: ../');
// }
?>
<html lang="es">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>dataCAR 5</title>
  <?php include("../includes/head.php") ?>
  <!-- Sitio -->
  <link href="../css/animate.min.css" rel="stylesheet">
  <link href="../css/transformaicons.css" rel="stylesheet">
  <link href="../css/slidebars.min.css" rel="stylesheet">
  <link href="../css/global.css" rel="stylesheet">
  <!-- Encuestas -->
  <link href="../css/datepicker.min.css" rel="stylesheet">
  <!-- Admin -->
  <link href="../css/dataTables.bootstrap4.min.css" rel="stylesheet">
  <link href="../css/select.bootstrap4.min.css" rel="stylesheet">
  <link href="../css/responsive.bootstrap4.min.css" rel="stylesheet">
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
                <?php 
                  if(isset($_SESSION["usuario"])){
                    echo $_SESSION["usuario"]["nombre"];
                  }
                  else{
                    echo "Usuario Registrado";
                  }
                  ?>
              </span>
            </button>
            <div class="dropdown-menu" aria-labelledby="btn-user">
              <a class="dropdown-item" href="#">
                <i class="fa fa-user"></i> Perfil</a>
              <a class="dropdown-item" href="#">
                <i class="fa fa-question"></i> Ayuda</a>
              <a class="dropdown-item" href="../?logout=1">
                <i class="fa fa-sign-out"></i> Salir</a>
            </div>
          </div>
        </div>
      </nav>
      <div class="container" id="contenido-admin">
        <!-- Filtro -->
        <div class="row justify-content-between mt-3">
          <div class="col-lg-6">
            <select class="form-control" name="">
              <option value="1" selected>Ford Plasencia</option>
              <option value="2">Ford Tepic</option>
              <option value="3">Ford Santa Anita</option>
            </select>
          </div>
          <div class="col-lg-2 text-right btn-pdf">
            <button type="button" class="btn btn-primary mt-3" name="button">
              <i class="fa fa-file-pdf-o"></i>
            </button>
            <button type="button" class="btn btn-primary mt-3" name="button">
              <i class="fa fa-envelope-o"></i>
            </button>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-12">
            <button type="button" class="btn btn-secondary mt-3">Mes Actual</button>
            <button type="button" class="btn btn-secondary mt-3">Mes Anterior</button>
            <button type="button" class="btn btn-secondary mt-3">Año Actual</button>
            <button type="button" class="btn btn-secondary mt-3">Año Anterior</button>
            <button type="button" class="btn btn-secondary mt-3" id="btn-calendar">
              <i class="fa fa-calendar-o"></i>
            </button>
          </div>
        </div>
        <div class="row" style="display: none;" id="row-calendar">
          <div class="col-lg-3">
            <div class="input-group mt-3">
              <div class="input-group-prepend bg-light">
                <span class="input-group-text" id="add-calendar1">
                  <i class="fa fa-calendar-o"></i>
                </span>
              </div>
              <input type="text" class="form-control" placeholder="Fecha Inicio" aria-label="Fecha Inicio" aria-describedby="add-calendar1"
                data-toggle="datepicker">
            </div>
          </div>
          <div class="col-lg-3">
            <div class="input-group mt-3">
              <div class="input-group-prepend bg-light">
                <span class="input-group-text" id="add-calendar2">
                  <i class="fa fa-calendar-o"></i>
                </span>
              </div>
              <input type="text" class="form-control" placeholder="Fecha Final" aria-label="Fecha Final" aria-describedby="add-calendar2"
                data-toggle="datepicker">
            </div>
          </div>
          <div class="col-lg-3">
            <button type="button" class="btn btn-primary mt-3" name="button">Filtrar</button>
          </div>
        </div>
        <!-- /Filtro -->
        <!-- Tabs -->
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
        <a class="a-active btn btn-menu" id="dashboard-encuesta_salida">
          <i class="fa fa-tachometer" style="color:white;"></i> Dashboard</a>
      </li>
      <li class="m-collapse">
        <a class="btn dropdown-toggle dropdown-toggle-split btn-menu" id="agencias-agencias" data-toggle="collapse" href="#agenciasCollapse"
          role="button" aria-expanded="false" aria-controls="agenciasCollapse">
          <span>
            <i class="fa fa-building-o icon-dropdown"></i> Agencias</span>
        </a>

        <!-- Colapso de Agencias -->
        <ul class="collapse multi-collapse" id="agenciasCollapse">
          <li>
            <a class="btn btn-menu" id="agencias-usuarios">Usuarios</a>
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
          <span>
            <i class="fa fa-cogs icon-dropdown"></i> Configuración</span>
        </a>

        <!-- Colapso de Configuracion -->
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
        <a class="btn dropdown-toggle dropdown-toggle-split btn-menu" id="geografia-geografia" data-toggle="collapse" href="#geografiaCollapse"
          role="button" aria-expanded="false" aria-controls="geografiaCollapse">
          <span>
            <i class="fa fa-globe icon-dropdown"></i> Geografía </span>
        </a>

        <!-- Colapso de Geografia -->
        <ul class="collapse multi-collapse" id="geografiaCollapse">
          <li>
            <a class="btn btn-menu" id="geografia-pais">Pais</a>
          </li>
          <li>
            <a class="btn btn-menu" id="geografia-estado">Estado</a>
          </li>
          <li>
            <a class="btn btn-menu" id="geografia-ciudad">Ciudad</a>
          </li>
        </ul>
      </li>
      <li class="m-collapse">
        <a class="btn dropdown-toggle" data-toggle="collapse" href="#mediosCollapse" role="button" aria-expanded="false" aria-controls="mediosCollapse">
          <span>
            <i class="fa fa-bullhorn icon-dropdown"></i> Medios </span>
        </a>

        <!-- Colapso de Medios -->
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
  <?php include("../includes/scripts.php");?>


  <script async type="text/javascript" src="../js/admin.js"></script>
  <script type="text/javascript" src="../js/slidebars.min.js"></script>
  <script type="text/javascript" src="../js/transformaicons.min.js"></script>
  <!-- Encuestas -->
  <script src="https://cdn.zingchart.com/zingchart.min.js"></script>
  <script>
    zingchart.MODULESDIR = "https://cdn.zingchart.com/modules/";
    ZC.LICENSE = ["569d52cefae586f634c54f86dc99e6a9", "ee6b7db5b51705a13dc2339db3edaf6d"];
  </script>
  <script type="text/javascript" src="../js/Chart.min.js"></script>
  <script type="text/javascript" src="../js/pieceLabel.min.js"></script>
  <script type="text/javascript" src="../js/datepicker.min.js"></script>
  <!-- Admin -->
  <script type="text/javascript" src="../js/datatables.min.js"></script>
  <script type="text/javascript" src="../js/dataTables.bootstrap4.min.js"></script>
  <script type="text/javascript" src="../js/dataTables.select.min.js"></script>
  <script type="text/javascript" src="../js/dataTables.responsive.min.js"></script>
  <script type="text/javascript" src="../js/responsive.bootstrap4.min.js"></script>
  <script type="text/javascript" src="../js/jquery.validate.min.js"></script>
  <!-- Config Paginas -->
  <script async type="text/javascript" src="../js/config_paginas.js"></script>

  <script>
    var controller, resizeTimer;
    //Configuracion de graficas
    Chart.defaults.global.defaultFontFamilily = 'Roboto';
    Chart.defaults.global.title.display = true;
    var animationBar = {
      onComplete: function () {
        var chartInstance = this.chart,
          ctx = chartInstance.ctx;
        ctx.font = Chart.helpers.fontString(Chart.defaults.global.defaultFontSize, Chart.defaults.global.defaultFontStyle,
          Chart.defaults.global.defaultFontFamily);
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
            ctx.font = Chart.helpers.fontString(bar._model.height - 2, Chart.defaults.global.defaultFontStyle,
              Chart.defaults.global.defaultFontFamily);
            var data = dataset.data[index];
            ctx.fillText(data, bar._model.x - 15, bar._model.y + (bar._model.height / 2));
          });
        });
      }
    };
    var tooltipPie = {
      callbacks: {
        label: function (tooltipItem, data) {
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
    var legendPie = {
      display: true,
      position: 'top',
      labels: {
        generateLabels: function (chart) {
          var data = chart.data;
          if (data.labels.length && data.datasets.length) {
            return data.labels.map(function (label, i) {
              var meta = chart.getDatasetMeta(0);
              var ds = data.datasets[0];
              var arc = meta.data[i];
              var custom = arc && arc.custom || {};
              var getValueAtIndexOrDefault = Chart.helpers.getValueAtIndexOrDefault;
              var arcOpts = chart.options.elements.arc;
              var fill = custom.backgroundColor ? custom.backgroundColor : getValueAtIndexOrDefault(ds.backgroundColor,
                i, arcOpts.backgroundColor);
              var stroke = custom.borderColor ? custom.borderColor : getValueAtIndexOrDefault(ds.borderColor, i,
                arcOpts.borderColor);
              var bw = custom.borderWidth ? custom.borderWidth : getValueAtIndexOrDefault(ds.borderWidth, i,
                arcOpts.borderWidth);

              // We get the value of the current label
              var value = chart.config.data.datasets[arc._datasetIndex].data[arc._index];

              return {
                // Instead of `text: label,`
                // We add the value to the string
                text: label + " [" + value + "]",
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

    $(document).ready(function () {
      transformicons.add('.tcon');
      cargar('dashboard/encuesta_salida.php', 0, 'page-content');
      // Create a new instance of Slidebars
      controller = new slidebars();
      controller.init();
      if ($(window).width() > 768) {
        transformicons.toggle('.tcon');
        toogleMenu();
      }

      $(window).resize(function () {
        clearTimeout(resizeTimer);
        resizeTimer = setTimeout(function () {
          if ($(window).width() <= 768) {
            if ($(".content").css("margin-Right") != "0px") {
              controller.toggle('main-menu');
              transformicons.toggle('.tcon');
              $(".content").animate({
                marginRight: "0px",
              }, 300);
            }
          }
        }, 300);
      });
      //Funcion de Menu
      function toogleMenu() {
        // event.preventDefault();
        // event.stopPropagation();
        controller.toggle('main-menu');
        if ($(window).width() > 768) {
          var margin = "0px";
          if ($(".content").css("margin-Right") == margin) {
            margin = "255px";
          }
          $(".content").animate({
            marginRight: margin,
          }, 300);
        }
      }

      // Funcion Calendario
      $("#btn-calendar").click(function () {
        if ($("#row-calendar").is(":visible")) {
          $("#row-calendar").hide("fast");
        } else {
          $("#row-calendar").show("fast");
        }
      });

      // Toggle main menu
      $('.navbar-toggler').on('click', function (event) {
        toogleMenu();
      });

      // Botónes de encuestas
      $("a.nav-tabs").click(function (e) {
        $("a.nav-tabs").removeClass("active");
        $(this).addClass("active");
        cargar('dashboard/' + $(this).attr('id') + '.php', 'slow', 'page-content');
      });

      function cargar(pagina, tiempo, id) {
        // $.ajax({
        //   // the location of the CFC to run
        //     url: "Dashboard/encuesta_salida.php"
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
        $('.modal').remove();
        $('#' + id).fadeOut(tiempo);
        $("#" + id).html(
          '<div class="w-100 h-100 text-center mt-5"><i class="fa fa-cog fa-spin fa-3x fa-fw"></i><span class="sr-only">Cargando...</span></div>'
        );
        $('#' + id).fadeOut(tiempo, function () {
          $('#' + id).load(pagina, function () {
            $('#' + id).fadeIn(tiempo);
            //Hacer que el modal se vaya al final del body para que aparezca de forma correcta
            $('.modal').appendTo(document.body);
            //Evitar enter en Form
            $('form').on('keyup keypress', function (e) {
              var keyCode = e.keyCode || e.which;
              if (keyCode === 13) {
                e.preventDefault();
                return false;
              }
            });
          });
        });

        return false
      }
      $(".btn-menu").click(function (e) {
        $(".a-active").removeClass("a-active");
        $(this).addClass("a-active");
        var dir = $(this).attr('id').split('-');
        console.log(dir);
        cargar(dir[0] + "/" + dir[1] + ".php", "slow", 'contenido-admin');

      });
    });
  </script>
</body>

</html>