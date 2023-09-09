<div class="pos-tab-content active">
  <div class="row" style="padding:0;margin:0;">
    <h3 class="">Import Registration Certificate</h3>

    <div class="col-md-6  " id="addirc_showHide">
      <h4 class="bg-info p-10">Add IRC</h4>
      <div style="background-color: #f4f4f4; padding:0px 20px; margin-top:0; margin-bottom: 30px;">
        <form action="{{url('irc')}}" method="post">@csrf

          <div class="form-group">
            <label for="">IRC Name</label>
            <input type="text" class="form-control" name="title" id="ircName" required>
          </div>
          <div class="form-group">
            <label for="">IRC Number</label>
            <input type="text" class="form-control" name="title" id="ircNumber" required>
          </div>


          <div style="width:100%; display:flex; justify-content:space-around; padding:20px">
            <span type="submit" class="btn btn-primary" id="add_new_irc">save</span>
            <span class="btn btn-danger" id="cancel_new_irc">cancel</span>
          </div>
        </form>

      </div>

    </div>
    <div class="col-md-6  " id="editirc_showHide">
      <h4 class="bg-info p-10">Edit irc & Conditions</h4>
      <div style="background-color: #f4f4f4; padding:0px 20px; margin-top:0; margin-bottom: 30px;">
        <form action="{{url('irc')}}" method="post">@csrf
          <div class="form-group">
            <label for="">IRC Name</label>
            <input type="text" class="form-control" name="title" id="ircEditName" required>
          </div>
          <div class="form-group">
            <label for="">IRC Number</label>
            <input type="text" class="form-control" name="title" id="ircEditNumber" required>
          </div>
          <input type="hidden" id="ircEditId">
          <div style="width:100%; display:flex; justify-content:space-around; padding:20px">
            <span type="submit" class="btn btn-primary" id="update_new_irc">Update</span>
            <span class="btn btn-danger" id="cancel_edit_irc">cancel</span>
          </div>
        </form>

      </div>

    </div>
    <div class="col-md-6 p-2 card">
      <div style="background-color: #f4f4f4; padding:30px 20px; margin-top:0; margin-bottom: 30px;">
        <div class="table-responsive">
          <table class="table table-bordered table-striped" id="irc_table" style="width: 100%;">
            <thead>
              <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Number</th>
                <th>Action</th>
              </tr>
            </thead>
          </table>
        </div>
      </div>
    </div>
  </div>
</div>
@section('javascript')
@php $asset_v = env('APP_VERSION'); @endphp
<script src="{{ asset('js/product.js?v=' . $asset_v) }}"></script>
<script>
  var irc_table = $('#irc_table').DataTable({
    processing: true,
    serverSide: true,
    ajax: '/irc',
    columnDefs: [{
      targets: 3,
      orderable: false,
      searchable: false,
    }, ],
    columns: [

      {
        data: 'id',
        name: 'id'
      },
      {
        data: 'name',
        name: 'name',
        render: function(data, type, row) {
          if (data) {
            // Display only the first 10 characters of the title
            return data.length > 10 ? data.substr(0, 10) + '...' : data;
          } else {
            return ''; // Or you can provide a default value for empty data
          }
        }
      },
      {
        data: 'number',
        name: 'number'
      },


      {
        data: 'action',
        name: 'action'
      },
    ],
    lengthMenu: [
      [10, 25, 50, -1],
      [10, 25, 50, "All"]
    ],
  });

  $(document).on('click', '#add_new_irc', function() {
    addircfrom()
   // alert('hi')
  })
  $(document).on('click', '#cancel_new_irc', function() {
    $('#ircName').val('')
    $('#ircNumber').val('')

  })

  function addircfrom() {
    //$(document).on('click', 'button.add_irc_button', function () {
    // $('div.unit_modal').load($(this).data('href'), function () {
    //$(this).modal('show');
    // $('form#add_irc_button').submit(function (e) {
    var name = $('#ircName').val()
    var number = $('#ircNumber').val()


    $.ajax({
      method: 'POST',
      url: '/irc',
      dataType: 'json',
      data: {
        name: name,
        number: number
      },
      beforeSend: function(xhr) {
        $('#something').hide()
        // __disable_submit_button('button[type="submit"]');
      },
      success: function(result) {
        if (result.success == true) {
          //  $('div.unit_modal').modal('hide');
          toastr.success(result.msg);
          $('#ircName').val('')
          $('#ircNumber').val('')

          $('#something').show()
          irc_table.ajax.reload();
        } else {
          toastr.error(result.msg);
          $('#something').show()
        }
      },
    });
    //  });
    // });
    // });
  }
  $(document).on('click', '#edit_irc_button', function() {
    var id = $(this).attr('data-id')
    // alert(id)
    editircFrom(id)
  })
  $('#editirc_showHide').hide()

  function editircFrom(id) {
    //$(document).on('click', 'button.add_irc_button', function () {
    // $('div.unit_modal').load($(this).data('href'), function () {
    //$(this).modal('show');
    // $('form#add_irc_button').submit(function (e) {

    $.ajax({
      method: 'GET',
      url: '/irc/' + id + '/edit',
      dataType: 'json',
      data: {
        id: id
      },
      beforeSend: function(xhr) {
        $('#something').hide()
        // __disable_submit_button('button[type="submit"]');
      },
      success: function(result) {
        if (result.success == true) {
          $('#addirc_showHide').hide()
          $('#editirc_showHide').show()
          //if(result.irc.title){
          // alert(result.irc.title)
          $('#ircEditName').val(result.terms.name)
          // }
          // if(result.irc.type){
          $('#ircEditNumber').val(result.terms.number)
          // }
          // if(result.irc.des){


          $('#ircEditId').val(result.terms.id)
          // }    
        } else {
          toastr.error(result.msg);
          $('#something').show()
        }
      },
    });
    //  });
    // });
    // });
  }
  $(document).on('click', '#cancel_edit_irc', function() {
    $('#addirc_showHide').show()
    $('#editirc_showHide').hide()
  })

  $(document).on('click', '#update_new_irc', function() {
    var id = $('#ircEditId').val()
   // alert(id)
    updateircFrom(id)
  })

  function updateircFrom(id) {
    // alert(id)
    //$(document).on('click', 'button.add_irc_button', function () {
    // $('div.unit_modal').load($(this).data('href'), function () {
    //$(this).modal('show');
    // $('form#add_irc_button').submit(function (e) {
    var name = $('#ircEditName').val()
    var number = $('#ircEditNumber').val()

    $.ajax({
      method: 'PUT',
      url: '/irc/' + id,
      dataType: 'json',
      data: {
        name: name,
        number: number
      },
      beforeSend: function(xhr) {
        $('#something').hide()
        // __disable_submit_button('button[type="submit"]');
      },
      success: function(result) {
        if (result.success == true) {
          //  $('div.unit_modal').modal('hide');
          toastr.success(result.msg);
          $('#something').show()
          irc_table.ajax.reload();
        } else {
          toastr.error(result.msg);
          $('#something').show()
        }
      },
    });
    //  });
    // });
    // });
  }
  $(document).on('click', '#delete_irc_button', function() {
    var id = $(this).attr('data-id')
    //alert(id)
    deleteircFrom(id)
  })

  function deleteircFrom(id) {
    //$(document).on('click', 'button.add_irc_button', function () {
    // $('div.unit_modal').load($(this).data('href'), function () {
    //$(this).modal('show');
    // $('form#add_irc_button').submit(function (e) {

    $.ajax({
      method: 'DELETE',
      url: '/irc/' + id,
      dataType: 'json',
      data: {
        id: id
      },
      beforeSend: function(xhr) {
        // $('#something').hide()
        // __disable_submit_button('button[type="submit"]');
      },
      success: function(result) {
        if (result.success == true) {
          toastr.success(result.msg);
          $('#something').show()
          irc_table.ajax.reload();
        } else {
          toastr.error(result.msg);
          $('#something').show()
        }
      },
    });
    //  });
    // });
    // });
  }
</script>

<script>
  //alert('hi')

  var port_table = $('#port_table').DataTable({
    processing: true,
    serverSide: true,
    ajax: '/port',
    columnDefs: [{
      targets: 3,
      orderable: false,
      searchable: false,
    }, ],
    columns: [

      {
        data: 'id',
        name: 'id'
      },
      {
        data: 'name',
        name: 'name',
        render: function(data, type, row) {
          if (data) {
            // Display only the first 10 characters of the title
            return data.length > 10 ? data.substr(0, 10) + '...' : data;
          } else {
            return ''; // Or you can provide a default value for empty data
          }
        }
      },
      {
        data: 'country_id',
        name: 'country_id'
      },

      {
        data: 'action',
        name: 'action'
      },
    ],
    lengthMenu: [
      [10, 25, 50, -1],
      [10, 25, 50, "All"]
    ],
  });

  $(document).on('click', '#add_new_port', function() {
    addportfrom()
  })
  $(document).on('click', '#cancel_new_port', function() {
    $('#portCountry').val('')
    $('#portname').val('')
  })

  function addportfrom() {
    //$(document).on('click', 'button.add_port_button', function () {
    // $('div.unit_modal').load($(this).data('href'), function () {
    //$(this).modal('show');
    // $('form#add_port_button').submit(function (e) {
    var name = $('#portName').val()
    var country_id = $('#portCountry').val()
    $.ajax({
      method: 'POST',
      url: '/port',
      dataType: 'json',
      data: {
        name: name,
        country_id: country_id,
      },
      beforeSend: function(xhr) {
        $('#something').hide()
        // __disable_submit_button('button[type="submit"]');
      },
      success: function(result) {
        if (result.success == true) {
          //  $('div.unit_modal').modal('hide');
          toastr.success(result.msg);
          $('#portCountry').val('')
          $('#portName').val('')

          $('#something').show()
          port_table.ajax.reload();
        } else {
          toastr.error(result.msg);
          $('#something').show()
        }
      },
    });
    //  });
    // });
    // });
  }
  $(document).on('click', '#edit_port_button', function() {
    var id = $(this).attr('data-id')
    //alert(id)
    editportFrom(id)
  })
  $('#editport_showHide').hide()

  function editportFrom(id) {
    //$(document).on('click', 'button.add_port_button', function () {
    // $('div.unit_modal').load($(this).data('href'), function () {
    //$(this).modal('show');
    // $('form#add_port_button').submit(function (e) {

    $.ajax({
      method: 'GET',
      url: '/port/' + id + '/edit',
      dataType: 'json',
      data: {
        id: id
      },
      beforeSend: function(xhr) {
        $('#something').hide()
        // __disable_submit_button('button[type="submit"]');
      },
      success: function(result) {
        if (result.success == true) {
          $('#addport_showHide').hide()
          $('#editport_showHide').show()
          //if(result.port.title){
          // alert(result.port.title)
          $('#portEditName').val(result.port.name)
          // }
          // if(result.port.type){
          $('#portEditCountry').val(result.port.country_id)
          // }
        
          $('#portEditId').val(result.port.id)
          // }    
        } else {
          toastr.error(result.msg);
          $('#something').show()
        }
      },
    });
    //  });
    // });
    // });
  }
  $(document).on('click', '#cancel_edit_port', function() {
    $('#addport_showHide').show()
    $('#editport_showHide').hide()
  })

  $(document).on('click', '#update_new_port', function() {
    var id = $('#portEditId').val()
    // alert(id)
    updateportFrom(id)
  })

  function updateportFrom(id) {
    // alert(id)
    //$(document).on('click', 'button.add_port_button', function () {
    // $('div.unit_modal').load($(this).data('href'), function () {
    //$(this).modal('show');
    // $('form#add_port_button').submit(function (e) {
    var name = $('#portEditName').val()
    var country_id = $('#portEditCountry').val()

  //alert(country_id)
    $.ajax({
      method: 'PUT',
      url: '/port/' + id,
      dataType: 'json',
      data: {
        name: name,
        country_id: country_id,
      },
      beforeSend: function(xhr) {
        $('#something').hide()
        // __disable_submit_button('button[type="submit"]');
      },
      success: function(result) {
        if (result.success == true) {
          //  $('div.unit_modal').modal('hide');
          toastr.success(result.msg);
          $('#something').show()
          port_table.ajax.reload();
        } else {
          toastr.error(result.msg);
          $('#something').show()
        }
      },
    });
    //  });
    // });
    // });
  }
  $(document).on('click', '#delete_port_button', function() {
    var id = $(this).attr('data-id')
    //alert(id)
    deleteportFrom(id)
  })

  function deleteportFrom(id) {
    //$(document).on('click', 'button.add_port_button', function () {
    // $('div.unit_modal').load($(this).data('href'), function () {
    //$(this).modal('show');
    // $('form#add_port_button').submit(function (e) {

    $.ajax({
      method: 'DELETE',
      url: '/port/' + id,
      dataType: 'json',
      data: {
        id: id
      },
      beforeSend: function(xhr) {
        // $('#something').hide()
        // __disable_submit_button('button[type="submit"]');
      },
      success: function(result) {
        if (result.success == true) {
          toastr.success(result.msg);
          $('#something').show()
          port_table.ajax.reload();
        } else {
          toastr.error(result.msg);
          $('#something').show()
        }
      },
    });
    //  });
    // });
    // });
  }
</script>

<script>
  //alert('hi')

  var hscode_table = $('#hscode_table').DataTable({
    processing: true,
    serverSide: true,
    ajax: '/hscode',
    columnDefs: [{
      targets: 3,
      orderable: false,
      searchable: false,
    }, ],
    columns: [

      {
        data: 'id',
        name: 'id'
      },
      {
        data: 'name',
        name: 'name',
        render: function(data, type, row) {
          if (data) {
            // Display only the first 10 characters of the title
            return data.length > 10 ? data.substr(0, 10) + '...' : data;
          } else {
            return ''; // Or you can provide a default value for empty data
          }
        }
      },
      {
        data: 'country_id',
        name: 'country_id'
      },

      {
        data: 'action',
        name: 'action'
      },
    ],
    lengthMenu: [
      [10, 25, 50, -1],
      [10, 25, 50, "All"]
    ],
  });

  $(document).on('click', '#add_new_hscode', function() {
    addhscodefrom()
  })
  $(document).on('click', '#cancel_new_hscode', function() {
    $('#hsName').val('')
    $('#hsCountry').val('')
  })

  function addhscodefrom() {
    //$(document).on('click', 'button.add_hscode_button', function () {
    // $('div.unit_modal').load($(this).data('href'), function () {
    //$(this).modal('show');
    // $('form#add_hscode_button').submit(function (e) {
    var name = $('#hsName').val()
    var country_id = $('#hsCountry').val()
    $.ajax({
      method: 'POST',
      url: '/hscode',
      dataType: 'json',
      data: {
        name: name,
        country_id: country_id,
      },
      beforeSend: function(xhr) {
        $('#something').hide()
        // __disable_submit_button('button[type="submit"]');
      },
      success: function(result) {
        if (result.success == true) {
          //  $('div.unit_modal').modal('hide');
          toastr.success(result.msg);
          $('#hsName').val('')
          $('#hsCountry').val('')
          $('#something').show()
          hscode_table.ajax.reload();
        } else {
          toastr.error(result.msg);
          $('#something').show()
        }
      },
    });
    //  });
    // });
    // });
  }
  $(document).on('click', '#edit_hscode_button', function() {
    var id = $(this).attr('data-id')
    // alert(id)
    edithscodeFrom(id)
  })
  $('#edithscode_showHide').hide()

  function edithscodeFrom(id) {
    //$(document).on('click', 'button.add_hscode_button', function () {
    // $('div.unit_modal').load($(this).data('href'), function () {
    //$(this).modal('show');
    // $('form#add_hscode_button').submit(function (e) {

    $.ajax({
      method: 'GET',
      url: '/hscode/' + id + '/edit',
      dataType: 'json',
      data: {
        id: id
      },
      beforeSend: function(xhr) {
        $('#something').hide()
        // __disable_submit_button('button[type="submit"]');
      },
      success: function(result) {
        if (result.success == true) {
          $('#addhscode_showHide').hide()
          $('#edithscode_showHide').show()
          //if(result.hscode.title){
          // alert(result.hscode.title)
          $('#hsEditName').val(result.hscode.name)
          // }
          // if(result.hscode.type){
          $('#hsEditCountry').val(result.hscode.country_id)
          // }
          // if(result.hscode.des){


          $('#hscodeEditId').val(result.hscode.id)
          // }    
        } else {
          toastr.error(result.msg);
          $('#something').show()
        }
      },
    });
    //  });
    // });
    // });
  }
  $(document).on('click', '#cancel_edit_hscode', function() {
    $('#addhscode_showHide').show()
    $('#edithscode_showHide').hide()
  })

  $(document).on('click', '#update_new_hscode', function() {
    var id = $('#hscodeEditId').val()
    // alert(id)
    updatehscodeFrom(id)
  })

  function updatehscodeFrom(id) {
    // alert(id)
    //$(document).on('click', 'button.add_hscode_button', function () {
    // $('div.unit_modal').load($(this).data('href'), function () {
    //$(this).modal('show');
    // $('form#add_hscode_button').submit(function (e) {
    var name = $('#hsEditName').val()
    var country_id = $('#hsEditCountry').val()

    $.ajax({
      method: 'PUT',
      url: '/hscode/' + id,
      dataType: 'json',
      data: {
        name: name,
        country_id: country_id,
      },
      beforeSend: function(xhr) {
        $('#something').hide()
        // __disable_submit_button('button[type="submit"]');
      },
      success: function(result) {
        if (result.success == true) {
          //  $('div.unit_modal').modal('hide');
          toastr.success(result.msg);
          $('#something').show()
          hscode_table.ajax.reload();
        } else {
          toastr.error(result.msg);
          $('#something').show()
        }
      },
    });
    //  });
    // });
    // });
  }
  $(document).on('click', '#delete_hscode_button', function() {
    var id = $(this).attr('data-id')
    //alert(id)
    deletehscodeFrom(id)
  })

  function deletehscodeFrom(id) {
    //$(document).on('click', 'button.add_hscode_button', function () {
    // $('div.unit_modal').load($(this).data('href'), function () {
    //$(this).modal('show');
    // $('form#add_hscode_button').submit(function (e) {

    $.ajax({
      method: 'DELETE',
      url: '/hscode/' + id,
      dataType: 'json',
      data: {
        id: id
      },
      beforeSend: function(xhr) {
        // $('#something').hide()
        // __disable_submit_button('button[type="submit"]');
      },
      success: function(result) {
        if (result.success == true) {
          toastr.success(result.msg);
          $('#something').show()
          hscode_table.ajax.reload();
        } else {
          toastr.error(result.msg);
          $('#something').show()
        }
      },
    });
    //  });
    // });
    // });
  }
</script>

@endsection