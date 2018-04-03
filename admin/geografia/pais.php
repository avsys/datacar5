<div class="row mt-3">
  <div class="col">
    <h3>Paises</h3>
  </div>
</div>
<div class="row mt-3">
  <div class="col">
    <button type="button" class="btn btn-outline-primary" name="button" data-toggle="modal" data-target="#paisModal" id="btn_agregar">Agregar</button>
    <button type="button" class="btn btn-outline-danger disabled" name="button" id="btn_borrar">
      <i class="fa fa-trash"></i>
    </button>
  </div>
</div>
<div class="row mt-3">
  <div class="col-lg-12 table-responsive">
    <table id="pais" class="table hover table-striped table-bordered" cellspacing="0" width="100%">
      <thead>
        <tr>
          <th class="text-center">
            <input type="checkbox" id="select-all">
          </th>
          <th>Id</th>
          <th>País</th>
          <th>Acciones</th>
        </tr>
      </thead>
    </table>
  </div>
</div>

<!-- Modal -->
<div class="modal fade" id="paisModal" tabindex="-1" role="dialog" aria-labelledby="paisLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="paisLabel"></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form id="form-pais">
          <div class="form-group">
            <label for="paisNombre">Nombre:</label>
            <input type="text" class="form-control" id="paisNombre" name="paisNombre">
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
        <button type="button" class="btn btn-primary" id="btn_guardar">Guardar</button>
        <button type="button" class="btn btn-primary" id="btn_editar">Editar</button>
      </div>

    </div>
  </div>
</div>

<!-- Modal confirmar -->
<div class="modal fade" id="confirmarModal" tabindex="-1" role="dialog" aria-labelledby="confirmarModalTitulo" aria-hidden="true">
  <div class="modal-dialog modal-sm" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <p class="modal-title" id="confirmarModalTitulo" style="font-size:16px;"></p>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body" style="text-align:center;">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
        <button type="button" class="btn btn-danger" id="btn_confirmar">Borrar</button>
      </div>
    </div>
  </div>
</div>

<script>
  var id = 0;
  url_a = 'consultas.php?consulta=pais';

  //Configuracion de Validator
  var configV = Object.assign(configValidator,{      
  rules: {
    paisNombre: {
      required: true
    }
  }
  });
  // var configV = Object.assign(configValidator,{      
  // rules: {
  //       paisNombre: {
  //         required: true,
  //         minlength: 2
  //       }
  //     },
  //     messages: {
  //       paisNombre: {
  //         required: "Ingrese el nombre del país."
  //       }
  // }
  // });
  
  var validator = $("#form-pais").validate(configV);

  //Configuracion de DataTable
  var configD = Object.assign(configDataTables, {
    ajax: {
      url: url_a,
      dataSrc: ''
    },
    columns: [{
        "defaultContent": "",
        className: 'select-checkbox',
        orderable: false,
        width: '10%'
      },
      {
        data: 'id',
        width: '10%'
      },
      {
        data: 'pais',
        width: '60%'
      },
      {
        data: 'acciones',
        className: 'text-center',
        orderable: false,
        width: '20%'
      }
    ]
  });

  var table = $('#pais').DataTable(configD);

  function reset() {
    $('#paisModal').modal('hide');
    $('#paisNombre').val('');
    removerClasesV();
    validator.resetForm();
    id = 0;
  }

  function activar_botones(count) {
    if (count > 0) {
      $('#btn_borrar').removeClass('disabled');
    } else {
      $('#btn_borrar').addClass('disabled');
    }
  }

  //Botón de seleccionar todo
  $('#select-all').click(function () {
    if ($('#select-all').is(':checked')) {
      table.rows().select();
    } else {
      table.rows().deselect();
    }
  });

  $('#btn_agregar').click(function () {
    switch_btn('g');
  });

  $('#btn_borrar').click(function () {
    $('#confirmarModalTitulo').html('Desea eliminar ' + table.rows({
      selected: true
    }).data().length + ' registro(s)');
    $('#confirmarModal').modal('show');
  });

  $('#btn_confirmar').click(function () {
    $('#confirmarModal').modal('hide');
    var array = [];
    var data = table.rows({
      selected: true
    }).data();
    //console.log('length ' + data.length);
    for (var i = 0; i < data.length; i++) {
      array.push(data[i].id);
      //console.log(array);
    }
    $.ajax({
        method: 'POST',
        url: 'acciones.php',
        dataType: 'json',
        data: {
          accion: 'pais_delete',
          id: array
        }
      })
      .done(function (data) {
        if (data.accion == 1) {
          table.ajax.url(url_a).load();
        }
      }) ;
  });

  //Editar
  $(document).on('click', '.fa-pencil', function () {
    id = $(this).attr('id').split('-')[1];
    $.ajax({
        method: 'GET',
        url: 'consultas.php',
        dataType: 'json',
        data: {
          consulta: 'pais',
          id: id
        }
      })
      .done(function (data) {
        data = eval(data);
        $('#paisNombre').val(data[0].pais);
      });
    switch_btn('e');
    $('#paisModal').modal('show');
  });

  $('#btn_guardar').click(function (event) {
    if($("#form-pais").valid()){
      //if ($('#paisNombre').val()) {
      $.ajax({
          method: 'POST',
          url: 'acciones.php',
          dataType: 'json',
          data: {
            accion: 'pais_add',
            nombre: $('#paisNombre').val()
          }
        })
        .done(function (data) {
          if (data.accion == 1) {
            table.ajax.url(url_a).load();
            reset();
          }
        });
    }
  });

  $('#btn_editar').click(function (event) {
    if($("#form-pais").valid()){
      $.ajax({
          method: 'POST',
          url: 'acciones.php',
          dataType: 'json',
          data: {
            accion: 'pais_edit',
            nombre: $('#paisNombre').val(),
            id: id
          }
        })
        .done(function (data) {
          if (data.accion == 1) {
            table.ajax.url(url_a).load();
            reset();
          }
        });
    }
  });

  //Funcion para ocultar los botones en el modal dependiendo de la accion deseada
  function switch_btn(accion) {
    let str = '';
    if (accion == 'g') {
      str = 'Agregar';
      $('#btn_guardar').show();
      $('#btn_editar').hide();
    } else if (accion == 'e') {
      str = 'Editar';
      $('#btn_editar').show();
      $('#btn_guardar').hide();
    }
    $('#paisLabel').text(str + ' país');
  }

  //Necesarios
  table.on('select', function (e, dt, type, indexes) {
    activar_botones(table.rows({
      selected: true
    }).count());
  }).on('deselect', function (e, dt, type, indexes) {
    activar_botones(table.rows({
      selected: true
    }).count());
  });

  //Hacer que todos los input dentro del Form tengan un evento al dar enter
  $('form').each(function() {
    $(this).find('input').keypress(function(e) {
        if(e.which == 10 || e.which == 13) {
          if($('#btn_guardar').is(":visible")){
            $('#btn_guardar').click();
          }
          else{
            $('#btn_editar').click();              
          }
        }
    });
  });

  //Evento que se dispara cuando el modal se oculta o se cierra
  $('#paisModal').on('hidden.bs.modal', function (e) {
    reset();
  })
</script>