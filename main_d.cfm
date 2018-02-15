  <style>
    html, body, .container-h, .row-h {
      height: 100%;
    }
    body{
      background: linear-gradient(to top, #d5d4d0 0%, #d5d4d0 1%, #eeeeec 31%, #efeeec 75%, #e9e9e7 100%)  no-repeat center center fixed;
    }
    .fa{
      color: white;
    }
    .card{
      height: 250px;
      margin-bottom: 50px;
      background: transparent;
    }
    .card-body p{
      margin-top: 20px;
      color: #646464;
    }

    a.btn1:hover {
      background-color: rgba(198,40,40,0.62);
    }
    a.btn2:hover {
      background-color: rgba(0,105,92,0.62);
    }
    a.btn3:hover {
      background-color: rgba(69,39,160,0.62);
    }
    a.btn4:hover {
      background-color: rgba(21,101,192,0.62);
    }
    .btn-circle{
      width: 100px;
      padding: 20px;
      height: 100px;
      border-radius: 50%;
      background: rgba(0,0,0,0.2);
    }
    .tel-text{
      display: inline;
    }
  </style>
  <div class="container container-h">
    <div class="row row-h align-items-center text-center">
      <div class="col-lg-3 col-md-6 col-sm-12">
        <div class="card" style="border: 1px solid rgba(198,40,40,0.4);">
          <div class="card-header" style="background-color: rgba(198,40,40,0.03) ;">
            <a href="#" class="btn btn-lg btn-circle btn1"><i class="fa fa-home fa-3x"></i></a>
          </div>
          <div class="card-body text-center">
            <p>Administraci&oacute;n</p>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-6 col-sm-12">
        <div class="card" style="border: 1px solid rgba(0,105,92,0.4);">
          <div class="card-header" style="background-color: rgba(0,105,92,0.03) ;">
            <a href="#" class="btn btn-lg btn-circle btn2"><i class="fa fa-file-text fa-3x"></i></a>
          </div>
          <div class="card-body text-center">
            <p>Encuesta de Salida</p>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-6 col-sm-12">
        <div class="card" style="border: 1px solid rgba(69,39,160,0.4);">
          <div class="card-header" style="background-color: rgba(69,39,160,0.03) ;">
            <a href="#" class="btn btn-lg btn-circle btn3"><i class="fa fa-key fa-3x"></i></a>
          </div>
          <div class="card-body text-center">
            <p>Encuesta de Caja</p>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-6 col-sm-12">
        <div class="card" style="border: 1px solid rgba(21,101,192,0.4);">
          <div class="card-header" style="background-color: rgba(21,101,192,0.03);">
            <a href="#" class="btn btn-lg btn-circle btn4"><i class="fa fa-cogs fa-3x"></i></a>
          </div>
          <div class="card-body text-center">
            <p>Encuesta de Servicio</p>
          </div>
        </div>
      </div>
      <cfset  variable_main++/>
      <cfoutput>
        #variable_main#
      </cfoutput>
      <div class="container">
        <div class="row">
          <div class="col-lg-12">
            <p class="text-center">datacar 5.0 | <a href="http://www.avsys.mx" target="_blank">AVSYS DE M&Eacute;XICO</a> | <span class="d-none d-sm-none d-md-inline" href="tel: 30-70-77-44">Soporte&nbsp;</span> <span class="d-none d-sm-none d-md-inline">(33) 3070-7744 y 3330-9654</span></p>
            <a class="btn btn-outline-info d-block d-sm-block d-md-none mb-1" href="tel: 30-70-77-44">Soporte</a>
            <!--- <p class="text-center">dataCAR 5.0 | &nbsp;<a class="azul" href="http://www.avsys.mx" target="_blank">AVSYS DE M&Eacute;XICO</a> | <span class="contacto"><span class="fa fa-phone"></span><a class="tel-text d-none d-sm-none d-md-block" href="tel: 30-70-77-44">Soporte&nbsp;</a></span> <span class="tel-text d-none d-sm-none d-md-block">(33) 3070-7744 y 3330-9654</span></p>
            <a class="tel btn btn-primary d-block d-sm-block d-md-none" href="tel: 30-70-77-44">Soporte</a> --->
          </div>
        </div>
      </div>
    </div>

  </div>
