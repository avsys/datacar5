<!--- Datos numericos --->
<style>
  .card{
    position: relative;
  }
</style>
<div class="card-deck mt-3">
  <div class="card border-warning">
    <div class="card-body text-center">
      <h5 class="card-title">Encuestas de hoy</h5>
      <p class="card-text estadistica">4</p>
    </div>
  </div>
  <div class="card border-warning">
    <div class="card-body text-center">
      <h5 class="card-title">Encuestas en total</h5>
      <p class="card-text estadistica">550</p>
    </div>
  </div>
  <div class="card border-warning">
    <div class="card-body text-center">
      <h5 class="card-title">Promedio General</h5>
      <p class="card-text estadistica">4.8</p>
    </div>
  </div>
</div>
<div class="row">
  <div class="col-lg-12">
    <div class="card border-secondary mt-3">
      <canvas id="myChart1"</canvas>
    </div>
  </div>
</div>
<div class="row mt-3">
  <div class="col-lg-12">
    <p class="h2"><i class="fa fa-gavel"> </i> Productividad</p>
    <hr/>
  </div>
</div>
<div class="row">
  <div class="col-lg-12">
    <div class="card border-secondary mt-3">
      <canvas id="myChart2"></canvas>
    </div>
  </div>
</div>
<div class="row mt-3">
  <div class="col-lg-12">
    <p class="h2"><i class="fa fa-car"> </i> Modelo</p>
    <hr/>
  </div>
</div>
<div class="row">
  <div class="col-lg-12">
    <div class="card border-secondary mt-3">
      <canvas id="myChart3"></canvas>
    </div>
  </div>
</div>
<div class="row">
  <div class="col-lg-12">
    <div class="card border-secondary mt-3">
      <canvas id="myChart4"></canvas>
    </div>
  </div>
</div>
<div class="row mt-3">
  <div class="col-lg-12">
    <p class="h2"><i class="fa fa-user"> </i> Asesores</p>
    <hr/>
  </div>
</div>
<div class="row">
  <div class="col-lg-12">
    <div class="card border-secondary mt-3">
      <canvas id="myChart5"></canvas>
    </div>
  </div>
</div>
<div class="row">
  <div class="col-lg-12">
    <div class="card border-secondary mt-3">
      <canvas id="myChart6"></canvas>
    </div>
  </div>
</div>
</div>
<script>
// Chart.defaults.global.animation({
//   duration: 3000,
//   easing : 'linear'
// )};
Chart.defaults.global.defaultFontFamilily = 'Roboto';
var ctx1 = document.getElementById("myChart1").getContext('2d');
var myChart = new Chart(ctx1, {
type: 'bar',
responsive: true,
data: {
labels: ["Lunes", "Martes", "Miercoles", "Jueves", "Viernes", "Sabado", "Domingo"],
datasets: [{
    label: '# de Encuestas',
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
      'rgba(54, 162, 235, 1)'
    ],
    borderWidth: 1
},{  data: [1, 2, 2, 1, 1, 2, 4, 3, 2 , 1, 0, 3, 1],
    backgroundColor: [
        'rgba(255, 99, 132, 0.2)'
    ],
    borderColor: [
        'rgba(255, 99, 132, 1)'
    ],
    borderWidth: 1}]
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
var ctx3= document.getElementById("myChart3").getContext('2d');
var myChart = new Chart(ctx3, {
type: 'line',
responsive: true,
data: {
labels: ["Figo Aspire", "Figo Sedan", "Figo HatchBack", "Focus", "Fiesta", "Mustang","Ecosport","Escape","Edge","Explorer","Expedition","Ranger","Lobo", "F-150", "F-250 Super Duty", "Super Duty Chasis"],
datasets: [{
    data: [12, 19, 3, 5, 2, 3, 5, 8, 3 , 1, 0, 10, 2, 5, 2, 20, 30, 10],
    backgroundColor: [
      'rgba(54, 162, 235, 0.2)'
    ],
    borderColor: [
      'rgba(54, 162, 235, 1)'
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
var ctx4= document.getElementById("myChart4").getContext('2d');
var myChart = new Chart(ctx4, {
type: 'line',
responsive: true,
data: {
labels: ["Excelente", "Bueno", "Regular", "Malo", "Muy malo"],
datasets: [{
    data: [15, 5, 2, 3, 5],
    backgroundColor: [
      'rgba(54, 162, 235, 0.2)'
    ],
    borderColor: [
      'rgba(54, 162, 235, 1)'
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
    text: 'Promedio de Calificación',
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
var ctx5= document.getElementById("myChart5").getContext('2d');
var myChart = new Chart(ctx5, {
type: 'line',
responsive: true,
data: {
labels: ["Luis", "Carlos", "Lorena", "Gaby", "Kevin"],
datasets: [{
    data: [23, 4, 7, 20, 10],
    backgroundColor: [
      'rgba(54, 162, 235, 0.2)'
    ],
    borderColor: [
      'rgba(54, 162, 235, 1)'
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
    text: 'Encuestas por Asesor',
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
var ctx6= document.getElementById("myChart6").getContext('2d');
var myChart = new Chart(ctx6, {
type: 'line',
responsive: true,
data: {
labels: ["Luis", "Carlos", "Lorena", "Gaby", "Kevin"],
datasets: [{
    data: [23, 4, 7, 20, 10],
    backgroundColor: [
      'rgba(54, 162, 235, 0.2)'
    ],
    borderColor: [
      'rgba(54, 162, 235, 1)'
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
    text: 'Calificaciones',
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

</script>
