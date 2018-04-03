<!--- Datos numericos --->
<style>
  .card{
    position: relative;
  }
</style>
<div class="card-deck mt-3">
  <div class="card border-primary">
    <div class="card-body text-center">
      <h5 class="card-title">Encuestas de hoy</h5>
      <p class="card-text estadistica">4</p>
    </div>
  </div>
  <div class="card border-primary">
    <div class="card-body text-center">
      <h5 class="card-title">Encuestas del mes</h5>
      <p class="card-text estadistica">550</p>
    </div>
  </div>
  <div class="card border-primary">
    <div class="card-body text-center">
      <h5 class="card-title">Promedio</h5>
      <p class="card-text estadistica">4.8</p>
    </div>
  </div>
  <div class="card border-primary">
    <div class="card-body text-center">
      <h5 class="card-title">Edad promedio</h5>
      <p class="card-text estadistica">35</p>
    </div>
  </div>
</div>
<div class="row mt-3">
  <div class="col-lg-12">
    <p class="h2"><i class="fa fa-user"> </i> Cliente</p>
    <hr/>
  </div>
</div>
<div class="row">
  <div class="col-lg-12">
    <div class="card border-secondary mt-3">
      <canvas id="myChart1"</canvas>
    </div>
  </div>
</div>
<div class="row">
  <div class="col-lg-12">
    <div class="card border-secondary mt-3">
      <canvas id="myChart2"></canvas>
    </div>
  </div>
</div>
<div class="row">
  <div class="col-lg-6">
    <div class="card border-secondary mt-3">
      <canvas id="myChart3"></canvas>
    </div>
  </div>
  <div class="col-lg-6">
    <div class="card border-secondary mt-3">
      <canvas id="myChart4"></canvas>
    </div>
  </div>
</div>
<div class="row mt-3">
  <div class="col-lg-12">
    <p class="h2"><i class="fa fa-bullhorn"> </i> Medio</p>
    <hr/>
  </div>
</div>
<div class="row">
  <div class="col-lg-3">
    <div class="card border-secondary mt-3">
      <canvas id="myChart17" style="width:17em;height:20em"></canvas>
    </div>
  </div>
  <div class="col-lg-3">
    <div class="card border-secondary mt-3">
      <canvas id="myChart18" style="width:17em;height:20em"></canvas>
    </div>
  </div>
  <div class="col-lg-3">
    <div class="card border-secondary mt-3">
      <canvas id="myChart19" style="width:17em;height:20em"></canvas>
    </div>
  </div>
  <div class="col-lg-3">
    <div class="card border-secondary mt-3">
      <canvas id="myChart20" style="width:17em;height:20em"></canvas>
    </div>
  </div>
</div>
<div class="row">
  <div class="col-lg-12">
    <div class="card border-secondary mt-3">
      <canvas id="myChart5" style="width:60em;height:35.1em"></canvas>
    </div>
  </div>
</div>
<div class="row">
  <div class="col-lg-6">
    <div class="card border-secondary mt-3">
      <canvas id="myChart6" style="width:34em;height:35.1em"></canvas>
    </div>
  </div>
  <div class="col-lg-6">
    <div class="card border-secondary mt-3">
      <canvas id="myChart7" style="width:34em;height:35.1em"></canvas>
    </div>
  </div>
</div>
<div class="row">
  <div class="col-lg-6">
    <div class="card border-secondary mt-3">
      <canvas id="myChart8"></canvas>
    </div>
  </div>
  <div class="col-lg-6">
    <div class="card border-secondary mt-3">
      <canvas id="myChart9"></canvas>
    </div>
  </div>
</div>
<div class="row mt-3">
  <div class="col-lg-12">
    <p class="h2"><i class="fa fa-car"> </i> Auto</p>
    <hr/>
  </div>
</div>
<div class="row">
  <div class="col-lg-6">
    <div class="card border-secondary mt-3 align-self-center">
      <canvas id="myChart10" style="width:34em;height:35.1em"></canvas>
    </div>
  </div>
  <div class="col-lg-6">
    <div class="row">
      <div class="col">
        <div class="card border-secondary mt-3">
          <canvas id="myChart11"></canvas>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col">
        <div class="card border-secondary mt-3">
          <canvas id="myChart12"></canvas>
        </div>
      </div>
    </div>
  </div>
</div>
<!--- <div class="row mt-1">
  <div class="col">
    vs <span class="badge badge-primary mr-1">Grand i10</span><span class="badge badge-primary mr-1">Polo</span><span class="badge badge-primary mr-1">Rio</span>
  </div>
</div> --->
<div class="row mt-1">
  <div class="col">
  	<div id="myChart"></div>
  </div>
</div>
<div class="row">
  <div class="col-lg-6">
    <div class="card border-secondary mt-3">
      <canvas id="myChart13" style="width:34em;height:23em"></canvas>
    </div>
  </div>
  <div class="col-lg-6">
    <div class="card border-secondary mt-3">
      <canvas id="myChart14" style="width:34em;height:23em"></canvas>
    </div>
  </div>
</div>
<div class="row">
  <div class="col-lg-6">
    <div class="card border-secondary mt-3">
      <canvas id="myChart15" style="width:34em;height:23em"></canvas>
    </div>
  </div>
  <div class="col-lg-6">
    <div class="card border-secondary mt-3">
      <canvas id="myChart16" style="width:34em;height:23em"></canvas>
    </div>
  </div>
</div>
<div class="row">
  <div class="col-lg-6">
    <ul class="list-group mt-3">
      <li class="list-group-item d-flex justify-content-between align-items-center">
        <h5>Recepcionistas</h5>
      </li>
      <li class="list-group-item d-flex justify-content-between align-items-center">
        Luis Fernando Martinez
        <span class="badge badge-primary badge-pill">14</span>
      </li>
      <li class="list-group-item d-flex justify-content-between align-items-center">
        Carlos Alberto Magallon <p class="text-muted">Encargado</p>
        <span class="badge badge-warning badge-pill">2</span>
      </li>
      <li class="list-group-item d-flex justify-content-between align-items-center">
        Victor Jesus Gallardo
        <span class="badge badge-success badge-pill">1</span>
      </li>
      <li class="list-group-item d-flex justify-content-between align-items-center">
        Lorena Diaz
        <span class="badge badge-danger badge-pill">1</span>
      </li>
    </ul>
  </div>
  <div class="col-lg-6">
    <ul class="list-group mt-3">
      <li class="list-group-item d-flex justify-content-between align-items-center">
        <h5>Vendedores</h5>
      </li>
      <li class="list-group-item d-flex justify-content-between align-items-center">
        Luis Fernando Martinez
        <span class="badge badge-primary badge-pill">14</span>
      </li>
      <li class="list-group-item d-flex justify-content-between align-items-center">
        Carlos Alberto Magallon <p class="text-muted">Encargado</p>
        <span class="badge badge-warning badge-pill">2</span>
      </li>
      <li class="list-group-item d-flex justify-content-between align-items-center">
        Victor Jesus Gallardo
        <span class="badge badge-success badge-pill">1</span>
      </li>
      <li class="list-group-item d-flex justify-content-between align-items-center">
        Lorena Diaz
        <span class="badge badge-danger badge-pill">1</span>
      </li>
    </ul>
  </div>
</div>

<script>
var valores_d = [], valores_l = [];
var valores_c = [];


var resizeTimerChart;
// Chart.defaults.global.responsive = true;
var ctx1 = document.getElementById("myChart1").getContext('2d');
var myChart = new Chart(ctx1, {
type: 'bar',
data: {
labels: ["Lunes", "Martes", "Miercoles", "Jueves", "Viernes", "Sabado", "Domingo"],
datasets: [{
    data: [12, 19, 3, 5, 10, 3, 1],
    backgroundColor: [
        'rgba(255, 99, 132, 0.2)',
        'rgba(54, 162, 235, 0.2)',
        'rgba(255, 206, 86, 0.2)',
        'rgba(75, 192, 192, 0.2)',
        'rgba(153, 102, 255, 0.2)',
        'rgba(255, 159, 64, 0.2)',
        'rgba(255, 99, 132, 0.2)'
    ],
    borderColor: [
        'rgba(255,99,132,1)',
        'rgba(54, 162, 235, 1)',
        'rgba(255, 206, 86, 1)',
        'rgba(75, 192, 192, 1)',
        'rgba(153, 102, 255, 1)',
        'rgba(255, 159, 64, 1)',
        'rgba(255,99,132,1)'
    ],
    borderWidth: 1
}]
},
options: {
  // onResize: function(chart){
  //   clearTimeout(resizeTimerChart);
  //   resizeTimerChart = setTimeout(function(){
  //     var id = Number(chart.canvas.id.replace("myChart", "")-1);
  //     if(typeof valores_d[id] == 'undefined'){
  //       //En caso de que el arreglo no tenga los calores de esta grafica
  //       // valores_c[id][0] = chart.data.datasets[0].data;
  //       // valores_c[id][1] = chart.data.labels;
  //       valores_d[id] = chart.data.datasets[0].data;
  //       valores_l[id] = chart.data.labels;
  //       console.log(valores_l);
  //     }
  //     //En caso de que sea tamaño celular, se recortará la información que se muestra
  //     if ($(window).width() < 768) {
  //       chart.data.datasets[0].data = chart.data.datasets[0].data.slice(0,5);
  //       chart.data.labels = chart.data.labels.slice(0,5);
  //     }
  //     else if($(window).width() >= 768){
  //       console.log("Entro a restaurarse");
  //       console.log(valores_l[id]);
  //       chart.data.datasets[0].data = valores_d[id];
  //       chart.data.labels = valores_l[id];
  //       // chart.data.datasets[0].data = valores_c[id][0];
  //       // chart.data.labels = valores_c[id][1];
  //     }
  //     console.log(valores_d[id]);
  //     chart.update();
  //
  //   }, 250);
  // },
  responsive: true,
  legend: {
    display : false
  },
  tooltips: {
     mode: "point"
  },
  hover: {
    animationDuration: 0
   },
  animation: animationBar,
  title: {
    text: 'Encuestas por día',
    fontSize: 20,
  },
  scales: {
      yAxes: [{
          ticks: {
              beginAtZero:true
          }
      }]
  }
}
});
var ctx2 = document.getElementById("myChart2").getContext('2d');
var myChart = new Chart(ctx2, {
type: 'line',
responsive: true,
data: {
labels: ["8", "9", "10", "11", "12", "13","14","15","16","17","18","19","20"],
datasets: [{
    data: [12, 19, 3, 5, 2, 3, 5, 8, 3 , 1, 0, 1, 1],
    backgroundColor: [
        'rgba(54, 162, 235, 0.2)'
    ],
    borderColor: [
        'rgba(54, 162, 235, 1)',
        'rgba(240, 98, 146, 1)'
    ],
    borderWidth: 1
}]
},
options:{
  legend: {
    display : false
  },
  tooltips: {
     mode: "point"
  },
  hover: {
    animationDuration: 0
   },
  animation: animationBar,
  title: {
    text: 'Encuestas por hora',
    fontSize: 20,
  },
  scales: {
    yAxes: [{
        ticks: {
            beginAtZero:true
        }
    }]
  }
}
});
var ctx3 = document.getElementById("myChart3").getContext('2d');
var myChart = new Chart(ctx3, {
type: 'pie',
responsive: true,
data: {
labels: ["Masculino", "Femenino"],
datasets: [{
    label: '# de Encuestas',
    data: [20,15],
    backgroundColor: [
        'rgba(54, 162, 235, 0.2)',
        'rgba(240, 98, 146, 0.2)'
    ],
    borderColor: [
        'rgba(54, 162, 235, 1)',
        'rgba(240, 98, 146, 1)'
    ],
    borderWidth: 1
}]
},
options:{
  legend:legendPie,
  tooltips: tooltipPie,
  pieceLabel: {
    render: 'percentage',
    overlap: true
  },
  title: {
    text: 'Sexo',
    fontSize: 20,
  }
}
});
var ctx4 = document.getElementById("myChart4").getContext('2d');
var myChart = new Chart(ctx4, {
type: 'bar',
responsive: true,
data: {
labels: ["<18","18-24","25-30","31-35","36-40","41-45","46-50","51-55","56-60",">60"],
datasets: [{
    data: [10, 5, 3, 6, 6, 8, 10, 4, 2, 1],
    backgroundColor: [
      'rgba(255, 99, 132, 0.2)',
      'rgba(54, 162, 235, 0.2)',
      'rgba(255, 206, 86, 0.2)',
      'rgba(75, 192, 192, 0.2)',
      'rgba(153, 102, 255, 0.2)',
      'rgba(255, 99, 132, 0.2)',
      'rgba(54, 162, 235, 0.2)',
      'rgba(255, 206, 86, 0.2)',
      'rgba(75, 192, 192, 0.2)',
      'rgba(153, 102, 255, 0.2)'
    ],
    borderColor: [
      'rgba(255, 99, 132, 1)',
      'rgba(54, 162, 235, 1)',
      'rgba(255, 206, 86, 1)',
      'rgba(75, 192, 192, 1)',
      'rgba(153, 102, 255, 1)',
      'rgba(255, 99, 132, 1)',
      'rgba(54, 162, 235, 1)',
      'rgba(255, 206, 86, 1)',
      'rgba(75, 192, 192, 1)',
      'rgba(153, 102, 255, 1)'
    ],
    borderWidth: 1
}]
},
options:{
  legend: {
    display : false
  },
  tooltips: {
     mode: "point"
  },
  animation: animationBar,
  title: {
    text: 'Edad',
    fontSize: 20,
  },
  scales: {
    yAxes: [{
        ticks: {
            beginAtZero:true
        }
    }]
  }
}
});
var ctx5 = document.getElementById("myChart5").getContext('2d');
var myChart = new Chart(ctx5, {
  type: 'horizontalBar',
  // responsive: true,
  data: {
  labels: ["Cine", "Cliente", "Correo Directo", "Internet", "Prensa", "Radio", "Recomendó un amigo", "Redes Sociales",
   "Servicio", "Televisión", "Vió vehiculo en la calle", "Vió en centro comercial", "Vio publicidad en la Agencia", "Vive en la zona"],
  datasets: [{
      data: [80, 75, 72, 70, 60, 55 , 54, 52, 51, 50, 25, 22, 20, 15],
      backgroundColor: [
        'rgba(255, 99, 132, 0.2)',
        'rgba(54, 162, 235, 0.2)',
        'rgba(255, 206, 86, 0.2)',
        'rgba(75, 192, 192, 0.2)',
        'rgba(153, 102, 255, 0.2)',
        'rgba(255, 99, 132, 0.2)',
        'rgba(54, 162, 235, 0.2)',
        'rgba(255, 206, 86, 0.2)',
        'rgba(75, 192, 192, 0.2)',
        'rgba(153, 102, 255, 0.2)',
        'rgba(255, 99, 132, 0.2)',
        'rgba(54, 162, 235, 0.2)',
        'rgba(255, 206, 86, 0.2)',
        'rgba(75, 192, 192, 0.2)'
      ],
      borderColor: [
        'rgba(255, 99, 132, 1)',
        'rgba(54, 162, 235, 1)',
        'rgba(255, 206, 86, 1)',
        'rgba(75, 192, 192, 1)',
        'rgba(153, 102, 255, 1)',
        'rgba(255, 99, 132, 1)',
        'rgba(54, 162, 235, 1)',
        'rgba(255, 206, 86, 1)',
        'rgba(75, 192, 192, 1)',
        'rgba(153, 102, 255, 1)',
        'rgba(255, 99, 132, 1)',
        'rgba(54, 162, 235, 1)',
        'rgba(255, 206, 86, 1)',
        'rgba(75, 192, 192, 1)'
      ],
      borderWidth: 1
  }]
  },
  options:{
    legend: {
      display : false
    },
    tooltips: {
       mode: "point"
    },
    hover: {
      animationDuration: 0
     },
    animation: animationHorizontalBar,
    title: {
      text: 'Medio',
      fontSize: 20,
    },
    scales: {
      yAxes: [{
          ticks: {
              beginAtZero: true
          }
      }]
    }
  }
});
var ctx6 = document.getElementById("myChart6").getContext('2d');
var myChart = new Chart(ctx6, {
  type: 'horizontalBar',
  responsive: false,
  data: {
  labels: ["Máxima FM","Magia 89.9","Señal 90","Factor 91","Amor","Imagen Guadalajara","Planeta 94.7","La Mejor","Ke Buena","Fiesta Mexicana","Fórmula Melódica","Estereo 99","Romance","RMX","Exa FM",
  "La Buena Onda","Los 40 Principales","Radio UdeG","Milenium Bella Música","Sistema Jaliscience","Radiante 106.7","La Z","La Tapatía","Extasis Digital","Exa Vallarta","Ninguno"],
  datasets: [{
      data: [55, 52, 51, 49, 47, 45, 44, 42, 41, 40, 36, 35, 30, 28, 27, 25, 21, 19, 19, 15, 14, 12, 10, 9, 6, 4],
      backgroundColor: [
        'rgba(255, 99, 132, 0.2)',
        'rgba(54, 162, 235, 0.2)',
        'rgba(255, 206, 86, 0.2)',
        'rgba(75, 192, 192, 0.2)',
        'rgba(153, 102, 255, 0.2)',
        'rgba(255, 99, 132, 0.2)',
        'rgba(54, 162, 235, 0.2)',
        'rgba(255, 206, 86, 0.2)',
        'rgba(75, 192, 192, 0.2)',
        'rgba(153, 102, 255, 0.2)',
        'rgba(255, 99, 132, 0.2)',
        'rgba(54, 162, 235, 0.2)',
        'rgba(255, 206, 86, 0.2)',
        'rgba(75, 192, 192, 0.2)',
        'rgba(153, 102, 255, 0.2)',
        'rgba(255, 99, 132, 0.2)',
        'rgba(54, 162, 235, 0.2)',
        'rgba(255, 206, 86, 0.2)',
        'rgba(75, 192, 192, 0.2)',
        'rgba(153, 102, 255, 0.2)',
        'rgba(255, 99, 132, 0.2)',
        'rgba(54, 162, 235, 0.2)',
        'rgba(255, 206, 86, 0.2)',
        'rgba(75, 192, 192, 0.2)',
        'rgba(153, 102, 255, 0.2)',
        'rgba(255, 99, 132, 0.2)'
      ],
      borderColor: [
        'rgba(255, 99, 132, 1)',
        'rgba(54, 162, 235, 1)',
        'rgba(255, 206, 86, 1)',
        'rgba(75, 192, 192, 1)',
        'rgba(153, 102, 255, 1)',
        'rgba(255, 99, 132, 1)',
        'rgba(54, 162, 235, 1)',
        'rgba(255, 206, 86, 1)',
        'rgba(75, 192, 192, 1)',
        'rgba(153, 102, 255, 1)',
        'rgba(255, 99, 132, 1)',
        'rgba(54, 162, 235, 1)',
        'rgba(255, 206, 86, 1)',
        'rgba(75, 192, 192, 1)',
        'rgba(153, 102, 255, 1)',
        'rgba(255, 99, 132, 1)',
        'rgba(54, 162, 235, 1)',
        'rgba(255, 206, 86, 1)',
        'rgba(75, 192, 192, 1)',
        'rgba(153, 102, 255, 1)',
        'rgba(255, 99, 132, 1)',
        'rgba(54, 162, 235, 1)',
        'rgba(255, 206, 86, 1)',
        'rgba(75, 192, 192, 1)',
        'rgba(153, 102, 255, 1)',
        'rgba(255, 99, 132, 1)'
      ],
      borderWidth: 1
  }]
  },
  options:{
    legend: {
      display : false
    },
    tooltips: {
       mode: "point"
    },
    hover: {
      animationDuration: 0
     },
    animation:  animationHorizontalBar,
    title: {
      text: 'Radio',
      fontSize: 20,
    },
    scales: {
      yAxes: [{
          ticks: {
              beginAtZero: true
          }
      }]
    }
  }
});
var ctx7 = document.getElementById("myChart7").getContext('2d');
var myChart = new Chart(ctx7, {
  type: 'horizontalBar',
  responsive: false,
  data: {
  labels: ["Animal Planet", "Azteca 13", "Azteka 7", "Azteka Noticias", "C7 Jalisco", "Canal 4", "Canal 8", "Canal de las estrellas",
   "Cinecanal", "Cnn", "Discovery Kids", "Discovery", "Discovery Home And Health", "Disney Channel", "ESPN", "Fox", "Fox Noticias",
    "Fx", "HBO", "History Channel", "MTV", "Netflix", "Sony", "TDN Deportes", "Teleformula", "Televisa 2", "Televisa 5", "Televisa Noticias",
     "Tnt", "Travel Channel", "Universal", "Utilisima", "Warner"],
  datasets: [{
      data: [56, 52, 52, 52, 49, 47, 45, 44, 42, 41, 40, 38, 37, 36, 35, 34, 31, 30, 25, 24, 23, 22, 20, 18, 15, 14, 14, 13, 12, 10, 9, 7, 2],
      backgroundColor: [
        'rgba(255, 99, 132, 0.2)',
        'rgba(54, 162, 235, 0.2)',
        'rgba(255, 206, 86, 0.2)',
        'rgba(75, 192, 192, 0.2)',
        'rgba(153, 102, 255, 0.2)',
        'rgba(255, 99, 132, 0.2)',
        'rgba(54, 162, 235, 0.2)',
        'rgba(255, 206, 86, 0.2)',
        'rgba(75, 192, 192, 0.2)',
        'rgba(153, 102, 255, 0.2)',
        'rgba(255, 99, 132, 0.2)',
        'rgba(54, 162, 235, 0.2)',
        'rgba(255, 206, 86, 0.2)',
        'rgba(75, 192, 192, 0.2)',
        'rgba(153, 102, 255, 0.2)',
        'rgba(255, 99, 132, 0.2)',
        'rgba(54, 162, 235, 0.2)',
        'rgba(255, 206, 86, 0.2)',
        'rgba(75, 192, 192, 0.2)',
        'rgba(153, 102, 255, 0.2)',
        'rgba(255, 99, 132, 0.2)',
        'rgba(54, 162, 235, 0.2)',
        'rgba(255, 206, 86, 0.2)',
        'rgba(75, 192, 192, 0.2)',
        'rgba(153, 102, 255, 0.2)',
        'rgba(255, 99, 132, 0.2)',
        'rgba(54, 162, 235, 0.2)',
        'rgba(255, 206, 86, 0.2)',
        'rgba(75, 192, 192, 0.2)',
        'rgba(153, 102, 255, 0.2)',
        'rgba(255, 99, 132, 0.2)',
        'rgba(54, 162, 235, 0.2)',
        'rgba(255, 206, 86, 0.2)'
      ],
      borderColor: [
        'rgba(255, 99, 132, 1)',
        'rgba(54, 162, 235, 1)',
        'rgba(255, 206, 86, 1)',
        'rgba(75, 192, 192, 1)',
        'rgba(153, 102, 255, 1)',
        'rgba(255, 99, 132, 1)',
        'rgba(54, 162, 235, 1)',
        'rgba(255, 206, 86, 1)',
        'rgba(75, 192, 192, 1)',
        'rgba(153, 102, 255, 1)',
        'rgba(255, 99, 132, 1)',
        'rgba(54, 162, 235, 1)',
        'rgba(255, 206, 86, 1)',
        'rgba(75, 192, 192, 1)',
        'rgba(153, 102, 255, 1)',
        'rgba(255, 99, 132, 1)',
        'rgba(54, 162, 235, 1)',
        'rgba(255, 206, 86, 1)',
        'rgba(75, 192, 192, 1)',
        'rgba(153, 102, 255, 1)',
        'rgba(255, 99, 132, 1)',
        'rgba(54, 162, 235, 1)',
        'rgba(255, 206, 86, 1)',
        'rgba(75, 192, 192, 1)',
        'rgba(153, 102, 255, 1)',
        'rgba(255, 99, 132, 1)',
        'rgba(54, 162, 235, 1)',
        'rgba(255, 206, 86, 1)',
        'rgba(75, 192, 192, 1)',
        'rgba(153, 102, 255, 1)',
        'rgba(255, 99, 132, 1)',
        'rgba(54, 162, 235, 1)',
        'rgba(255, 206, 86, 1)'
      ],
      borderWidth: 1
  }]
  },
  options:{
    legend: {
      display : false
    },
    tooltips: {
       mode: "point"
    },
    hover: {
      animationDuration: 0
     },
    animation:animationHorizontalBar,
    title: {
      text: 'TV',
      fontSize: 20,
    },
    scales: {
      yAxes: [{
          ticks: {
              beginAtZero: true
          }
      }]
    }
  }
});
var ctx8 = document.getElementById("myChart8").getContext('2d');
var myChart = new Chart(ctx8, {
  type: 'bar',
  responsive: true,
  data: {
  labels: ["El Financiero", "Informador", "Milenio", "Mural", "Ninguno", "Occidental"],
  datasets: [{
      data: [40, 38, 34, 30, 20, 15],
      backgroundColor: [
          'rgba(51, 102, 153, 0.2)',
          'rgba(255, 51, 51, 0.2)',
          'rgba(51, 153, 204, 0.2)',
          'rgba(153, 153, 153, 0.2)',
          'rgba(51, 102, 153, 0.2)',
          'rgba(255, 51, 51, 0.2)'
      ],
      borderColor: [
          'rgba(51, 102, 153, 1)',
          'rgba(255, 51, 51, 1)',
          'rgba(51, 153, 204, 1)',
          'rgba(153, 153, 153, 1)',
          'rgba(51, 102, 153, 1)',
          'rgba(255, 51, 51, 1)'
      ],
      borderWidth: 1
  }]
  },
  options:{
    legend: {
      display : false
    },
    tooltips: {
       mode: "point"
    },
    hover: {
      animationDuration: 0
     },
    animation: animationBar,
    title: {
      text: 'Prensa',
      fontSize: 20,
    },
    scales: {
      yAxes: [{
          ticks: {
              beginAtZero: true
          }
      }]
    }
  }
});
var ctx9 = document.getElementById("myChart9").getContext('2d');
var myChart = new Chart(ctx9, {
  type: 'bar',
  responsive: true,
  data: {
  labels: ["Facebook", "Google", "Twiter", "Espectacular"],
  datasets: [{
      data: [50,25,19,10],
      backgroundColor: [
          'rgba(51, 102, 153, 0.2)',
          'rgba(255, 51, 51, 0.2)',
          'rgba(51, 153, 204, 0.2)',
          'rgba(153, 153, 153, 0.2)'
      ],
      borderColor: [
          'rgba(51, 102, 153, 1)',
          'rgba(255, 51, 51, 1)',
          'rgba(51, 153, 204, 1)',
          'rgba(153, 153, 153, 1)'
      ],
      borderWidth: 1
  }]
  },
  options:{
    legend: {
      display : false
    },
    tooltips: {
       mode: "point"
    },
    hover: {
      animationDuration: 0
     },
    animation:animationBar,
    title: {
      text: 'Sitio',
      fontSize: 20,
    },
    scales: {
      yAxes: [{
          ticks: {
              beginAtZero: true
          }
      }]
    }
  }
});
var ctx10 = document.getElementById("myChart10").getContext('2d');
var myChart = new Chart(ctx10, {
  type: 'pie',
  responsive: false,
  data: {
  labels: ["Figo", "Fiesta", "Focus", "Fusion"],
  datasets: [{
      label: '# de Encuestas',
      data: [20,4,10,11],
      backgroundColor: [
          'rgba(51, 102, 153, 0.2)',
          'rgba(255, 51, 51, 0.2)',
          'rgba(51, 153, 204, 0.2)',
          'rgba(153, 153, 153, 0.2)'
      ],
      borderColor: [
          'rgba(51, 102, 153, 1)',
          'rgba(255, 51, 51, 1)',
          'rgba(51, 153, 204, 1)',
          'rgba(153, 153, 153, 1)'
      ],
      borderWidth: 1
  }]
  },
  options:{
    tooltips: tooltipPie,
    pieceLabel: {
      render: 'percentage',
      overlap: true
    },
    title: {
      text: 'Modelos',
      fontSize: 20,
    }
  }
});
var ctx11 = document.getElementById("myChart11").getContext('2d');
var myChart = new Chart(ctx11, {
  type: 'pie',
  responsive: true,
  data: {
  labels: ["Y5D IMPULSE", "Y5A IMPULSE", "Y5B IMPULSE"],
  datasets: [{
      label: '# de Encuestas',
      data: [20, 4, 10],
      backgroundColor: [
          'rgba(51, 102, 153, 0.2)',
          'rgba(255, 51, 51, 0.2)',
          'rgba(51, 153, 204, 0.2)',
          'rgba(153, 153, 153, 0.2)'
      ],
      borderColor: [
          'rgba(51, 102, 153, 1)',
          'rgba(255, 51, 51, 1)',
          'rgba(51, 153, 204, 1)',
          'rgba(153, 153, 153, 1)'
      ],
      borderWidth: 1
  }]
  },
  options:{
    legend:legendPie,
    tooltips: tooltipPie,
    pieceLabel: {
      render: 'percentage',
      overlap: true,
    },
    title: {
      text: 'Catalogo',
      fontSize: 20,
    }
  }
});
var ctx12 = document.getElementById("myChart12").getContext('2d');
var myChart = new Chart(ctx12, {
  type: 'pie',
  responsive: true,
  data: {
  labels: ["Azul Impacto", "Blanco Oxford", "Gris Hierro", "Negro Brillante", "Plata Estelar"],
  datasets: [{
      label: '# de Encuestas',
      data: [18,4,3,10,5],
      backgroundColor: [
          'rgba(51, 102, 153, 0.2)',
          'rgba(255, 51, 51, 0.2)',
          'rgba(51, 153, 204, 0.2)',
          'rgba(153, 153, 153, 0.2)',
          'rgba(51, 102, 153, 0.2)'
      ],
      borderColor: [
          'rgba(51, 102, 153, 1)',
          'rgba(255, 51, 51, 1)',
          'rgba(51, 153, 204, 1)',
          'rgba(153, 153, 153, 1)',
          'rgba(51, 102, 153, 1)'
      ],
      borderWidth: 1
  }]
  },
  options:{
    legend:legendPie,
    tooltips: tooltipPie,
    pieceLabel: {
      render: 'percentage',
      overlap: true,
    },
    title: {
      text: 'Color',
      fontSize: 20,
    }
  }
});
var ctx13 = document.getElementById("myChart13").getContext('2d');
var myChart = new Chart(ctx13, {
  type: 'pie',
  responsive: false,
  data: {
  labels: ["Sí", "No"],
  datasets: [{
      label: '# de Encuestas',
      data: [18,4],
      backgroundColor: [
          'rgba(51, 102, 153, 0.2)',
          'rgba(255, 51, 51, 0.2)',
          'rgba(51, 153, 204, 0.2)',
          'rgba(153, 153, 153, 0.2)',
          'rgba(51, 102, 153, 0.2)'
      ],
      borderColor: [
          'rgba(51, 102, 153, 1)',
          'rgba(255, 51, 51, 1)',
          'rgba(51, 153, 204, 1)',
          'rgba(153, 153, 153, 1)',
          'rgba(51, 102, 153, 1)'
      ],
      borderWidth: 1
  }]
  },
  options:{
    legend:legendPie,
    tooltips: tooltipPie,
    pieceLabel: {
      render: 'percentage',
      overlap: true
    },
    title: {
      text: 'Interesa prueba de manejo',
      fontSize: 20,
    }
  }
});
var ctx14 = document.getElementById("myChart14").getContext('2d');
var myChart = new Chart(ctx14, {
  type: 'pie',
  responsive: false,
  data: {
  labels: ["Sí","No"],
  datasets: [{
      label: '# de Encuestas',
      data: [10,5],
      backgroundColor: [
          'rgba(51, 102, 153, 0.2)',
          'rgba(255, 51, 51, 0.2)',
          'rgba(51, 153, 204, 0.2)',
          'rgba(153, 153, 153, 0.2)',
          'rgba(51, 102, 153, 0.2)'
      ],
      borderColor: [
          'rgba(51, 102, 153, 1)',
          'rgba(255, 51, 51, 1)',
          'rgba(51, 153, 204, 1)',
          'rgba(153, 153, 153, 1)',
          'rgba(51, 102, 153, 1)'
      ],
      borderWidth: 1
  }]
  },
  options:{
    legend:legendPie,
    tooltips: tooltipPie,
    pieceLabel: {
      render: 'percentage',
      overlap: true
    },
    title: {
      text: 'Hizo prueba',
      fontSize: 20,
    }
  }
});
var ctx15 = document.getElementById("myChart15").getContext('2d');
var myChart = new Chart(ctx15, {
  type: 'bar',
  responsive: false,
  data: {
  labels: ["No quiso", "No se la ofrecieron", "Agendar cita para el demo", "No había vehiculo disponible", "No tenía tiempo libre", "Ya lo manejó", "Cliente UBER"],
  datasets: [{
      label: '# de Encuestas',
      data: [18,4,3,10,5,8,10],
      backgroundColor: [
          'rgba(51, 102, 153, 0.2)',
          'rgba(255, 51, 51, 0.2)',
          'rgba(51, 153, 204, 0.2)',
          'rgba(153, 153, 153, 0.2)',
          'rgba(51, 102, 153, 0.2)',
          'rgba(51, 102, 153, 0.2)',
          'rgba(255, 51, 51, 0.2)'
      ],
      borderColor: [
          'rgba(51, 102, 153, 1)',
          'rgba(255, 51, 51, 1)',
          'rgba(51, 153, 204, 1)',
          'rgba(153, 153, 153, 1)',
          'rgba(51, 102, 153, 1)',
          'rgba(51, 102, 153, 1)',
          'rgba(255, 51, 51, 1)'
      ],
      borderWidth: 1
  }]
  },
  options:{
    legend: {
      display : false
    },
    tooltips: {
       mode: "point"
    },
    hover: {
      animationDuration: 0
     },
    animation:animationBar,
    title: {
      text: 'Motivo',
      fontSize: 20,
    },
    scales: {
      yAxes: [{
          ticks: {
              beginAtZero: true
          }
      }]
    }
  }
});
var ctx16 = document.getElementById("myChart16").getContext('2d');
var myChart = new Chart(ctx16, {
  type: 'bar',
  responsive: false,
  data: {
  labels: ["Excelente", "Muy bueno", "Bueno", "Regular", "Malo"],
  datasets: [{
      label: '# de Encuestas',
      data: [18,4,3,10,5],
      backgroundColor: [
          'rgba(51, 102, 153, 0.2)',
          'rgba(255, 51, 51, 0.2)',
          'rgba(51, 153, 204, 0.2)',
          'rgba(153, 153, 153, 0.2)',
          'rgba(51, 102, 153, 0.2)'
      ],
      borderColor: [
          'rgba(51, 102, 153, 1)',
          'rgba(255, 51, 51, 1)',
          'rgba(51, 153, 204, 1)',
          'rgba(153, 153, 153, 1)',
          'rgba(51, 102, 153, 1)'
      ],
      borderWidth: 1
  }]
  },
  options:{
    legend: {
      display : false
    },
    tooltips: {
       mode: "point"
    },
    hover: {
      animationDuration: 0
     },
    animation:animationBar,
    title: {
      text: 'Nivel de Atención',
      fontSize: 20,
    },
    scales: {
      yAxes: [{
          ticks: {
              beginAtZero: true
          }
      }]
    }
  }
});
var ctx17 = document.getElementById("myChart17").getContext('2d');
var myChart = new Chart(ctx17, {
  type: 'pie',
  responsive: false,
  data: {
  labels: ["Sí", "No"],
  datasets: [{
      label: '# de Encuestas',
      data: [10,20],
      backgroundColor: [
          'rgba(54, 162, 235, 0.2)',
          'rgba(240, 98, 146, 0.2)'
      ],
      borderColor: [
          'rgba(54, 162, 235, 1)',
          'rgba(240, 98, 146, 1)'
      ],
      borderWidth: 1
  }]
  },
  options:{
    legend:legendPie,
    tooltips: tooltipPie,
    pieceLabel: {
      render: 'percentage',
      overlap: true
    },
    title: {
      text: 'Primera visita',
      fontSize: 15,
    }
  }
});
var ctx18 = document.getElementById("myChart18").getContext('2d');
var myChart = new Chart(ctx18, {
  type: 'pie',
  responsive: false,
  data: {
  labels: ["Sí", "No"],
  datasets: [{
      label: '# de Encuestas',
      data: [5,10],
      backgroundColor: [
          'rgba(54, 162, 235, 0.2)',
          'rgba(240, 98, 146, 0.2)'
      ],
      borderColor: [
          'rgba(54, 162, 235, 1)',
          'rgba(240, 98, 146, 1)'
      ],
      borderWidth: 1
  }]
  },
  options:{
    legend:legendPie,
    tooltips: tooltipPie,
    pieceLabel: {
      render: 'percentage',
      overlap: true
    },
    title: {
      text: 'Otro Concesionario',
      fontSize: 15,
    }
  }
});
var ctx19 = document.getElementById("myChart19").getContext('2d');
var myChart = new Chart(ctx19, {
  type: 'pie',
  responsive: false,
  data: {
  labels: ["Celular", "Tablet", "PC"],
  datasets: [{
      label: '# de Encuestas',
      data: [50,20,25],
      backgroundColor: [
          'rgba(54, 162, 235, 0.2)',
          'rgba(240, 98, 146, 0.2)',
          'rgba(255, 206, 86, 0.2)'
      ],
      borderColor: [
          'rgba(54, 162, 235, 1)',
          'rgba(240, 98, 146, 1)',
          'rgba(255, 206, 86, 1)'
      ],
      borderWidth: 1
  }]
  },
  options:{
    legend:legendPie,
    tooltips: tooltipPie,
    pieceLabel: {
      render: 'percentage',
      overlap: true
    },
    title: {
      text: 'Dispositivo',
      fontSize: 15,
    }
  }
});

var ctx20 = document.getElementById("myChart20").getContext('2d');
var myChart = new Chart(ctx20, {
  type: 'pie',
  responsive: false,
  data: {
  labels: ["Sí", "No"],
  datasets: [{
      label: '# de Encuestas',
      data: [40,60],
      backgroundColor: [
          'rgba(54, 162, 235, 0.2)',
          'rgba(240, 98, 146, 0.2)'
      ],
      borderColor: [
          'rgba(54, 162, 235, 1)',
          'rgba(240, 98, 146, 1)'
      ],
      borderWidth: 1
  }]
  },
  options:{
    legend:legendPie,
    tooltips: tooltipPie,
    pieceLabel: {
      render: 'percentage',
      overlap: true
    },
    title: {
      text: 'Conoce página de Facebook?',
      fontSize: 15,
    }
  }
});

// var ctx21 = document.getElementById("myChart21").getContext('2d');
// var myChart = new Chart(ctx21, {
//
// });
var myConfig = {
"graphset":[
{
"type":"wordcloud",
globals:{
  fontFamily: 'Roboto'
},
"options":{
  "style":{
    "tooltip":{
      visible: true,
      text: '%text: %hits'
    }
  },
  "max-items":200,
"min-length":5,
"words":[
{
"text":"Grandi10",
"count":"342"
},
{
"text":"Polo",
"count":"300"
},
{
"text":"Sonic",
"count":"200"
},
{
"text":"Chevy",
"count":"100"
}
]
},

}
]
};

zingchart.render({
	id: 'myChart',
	data: myConfig,
	height: '300',
	width: '100%'
});
</script>
