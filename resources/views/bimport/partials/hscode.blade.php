<div class="pos-tab-content">
  <div class="row" style="padding:0;margin:0;">
    <h3 class="">hscode & Conditions</h3>

    <div class="col-md-6  " id="addhscode_showHide">
      <h4 class="bg-info p-10">Add hscode & Conditions</h4>
      <div style="background-color: #f4f4f4; padding:0px 20px; margin-top:0; margin-bottom: 30px;">
        <form action="{{url('hscode')}}" method="post">@csrf
           <div class="form-group">
            <label for="">Hs Code </label>
            <input type="text" class="form-control" name="name" id="hsName" required>
          </div>
          <div class="form-group">
            <label for="">Country</label>
            <select class="form-control" name="country" id="hsCountry" required>
                <option >---select country---</option>
                @foreach(\App\Country::get() as $country)
                    <option value="{{ $country->id }}">{{ $country->name }}</option>
                 @endforeach
            </select>
          </div>
          
          <div style="width:100%; display:flex; justify-content:space-around; padding:20px">
            <span type="submit" class="btn btn-primary" id="add_new_hscode">save</span>
            <span class="btn btn-danger"  id="cancel_new_hscode">cancel</span>
          </div>
        </form>

      </div>

    </div>
     <div class="col-md-6  " id="edithscode_showHide">
      <h4 class="bg-info p-10">Edit hscode & Conditions</h4>
      <div style="background-color: #f4f4f4; padding:0px 20px; margin-top:0; margin-bottom: 30px;">
        <form action="{{url('hscode')}}" method="post">@csrf
          <div class="form-group">
            <label for="">Port Name</label>
            <input type="text" class="form-control" name="name" id="hsEditName" required>
          </div>
          <div class="form-group">
            <label for="">Country</label>
            <select class="form-control" name="country" id="hsEditCountry" required>
                <option >---select country---</option>
                @foreach(\App\Country::get() as $country)
                    <option value="{{ $country->id }}">{{ $country->name }}</option>
                 @endforeach
            </select>
          </div>
          <input type="hidden" id="hscodeEditId">
          <div style="width:100%; display:flex; justify-content:space-around; padding:20px">
            <span type="submit" class="btn btn-primary" id="update_new_hscode">Update</span>
            <span class="btn btn-danger"  id="cancel_edit_hscode">cancel</span>
          </div>
        </form>

      </div>

    </div>
    <div class="col-md-6 p-2 card">
       <div style="background-color: #f4f4f4; padding:30px 20px; margin-top:0; margin-bottom: 30px;">
              <div class="table-responsive">
                <table class="table table-bordered table-striped" id="hscode_table" style="width: 100%;">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Hs Code</th>
                            <th>Country</th>
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
  //alert('hi')
      var units_table = $('#unit_table').DataTable({
        processing: true,
        serverSide: true,
        ajax: '/units',
        columnDefs: [
            {
                targets: 3,
                orderable: false,
                searchable: false,
            },
        ],
        columns: [
            { data: 'actual_name', name: 'actual_name' },
            { data: 'short_name', name: 'short_name' },
            { data: 'allow_decimal', name: 'allow_decimal' },
            { data: 'action', name: 'action' },
        ],
    });
    var hscode_table = $('#hscode_table').DataTable({
        processing: true,
        serverSide: true,
        ajax: '/hscode',
        columnDefs: [
            {
                targets: 3,
                orderable: false,
                searchable: false,
            },
        ],
        columns: [

            {
                data: 'type', name: 'type', render: function (data, type, row) {
                    if (data) {
                        // Display only the first 10 characters of the title
                        return data.length > 10 ? data.substr(0, 10) + '...' : data;
                    } else {
                        return ''; // Or you can provide a default value for empty data
                    }
                }
            },
            {
                data: 'title', name: 'title', render: function (data, type, row) {
                    if (data) {
                        // Display only the first 10 characters of the title
                        return data.length > 10 ? data.substr(0, 10) + '...' : data;
                    } else {
                        return ''; // Or you can provide a default value for empty data
                    }
                }
            },
            {
                data: 'description', name: 'description', render: function (data, type, row) {
                    if (data) {
                        // Display only the first 10 characters of the title
                        return data.length > 20 ? data.substr(0, 20) + '...' : data;
                    } else {
                        return ''; // Or you can provide a default value for empty data
                    }
                }
            },

            { data: 'action', name: 'action' },
        ],
        lengthMenu: [[10, 25, 50, -1], [10, 25, 50, "All"]],
    });

    $(document).on('click', '#add_new_hscode', function () {
        addhscodefrom()
    })
    $(document).on('click', '#cancel_new_hscode', function () {
        $('#hscodeTitle').val('')
        $('#hscodeType').val('')
        $('#hscodeDes').val('')
    })
    function addhscodefrom() {
        //$(document).on('click', 'button.add_hscode_button', function () {
        // $('div.unit_modal').load($(this).data('href'), function () {
        //$(this).modal('show');
        // $('form#add_hscode_button').submit(function (e) {
        var title = $('#hscodeTitle').val()
        var type = $('#hscodeType').val()
        var des = $('#hscodeDes').val()

        $.ajax({
            method: 'POST',
            url: '/hscode',
            dataType: 'json',
            data: { title: title, type: type, des: des },
            beforeSend: function (xhr) {
                $('#something').hide()
                // __disable_submit_button('button[type="submit"]');
            },
            success: function (result) {
                if (result.success == true) {
                    //  $('div.unit_modal').modal('hide');
                    toastr.success(result.msg);
                    $('#hscodeTitle').val('')
                    $('#hscodeType').val('')
                    $('#hscodeDes').val('')
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
    $(document).on('click', '#edit_hscode_button', function () {
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
            data: { id: id },
            beforeSend: function (xhr) {
                $('#something').hide()
                // __disable_submit_button('button[type="submit"]');
            },
            success: function (result) {
                if (result.success == true) {
                    $('#addhscode_showHide').hide()
                    $('#edithscode_showHide').show()
                    //if(result.hscode.title){
                    // alert(result.hscode.title)
                    $('#hscodeEditTitle').val(result.hscode.title)
                    // }
                    // if(result.hscode.type){
                    $('#hscodeEditType').val(result.hscode.type)
                    // }
                    // if(result.hscode.des){
                    $('#hscodeEditDes').val(result.hscode.description)

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
    $(document).on('click', '#cancel_edit_hscode', function () {
        $('#addhscode_showHide').show()
        $('#edithscode_showHide').hide()
    })

    $(document).on('click', '#update_new_hscode', function () {
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
        var title = $('#hscodeEditTitle').val()
        var type = $('#hscodeEditType').val()
        var des = $('#hscodeEditDes').val()

        $.ajax({
            method: 'PUT',
            url: '/hscode/' + id,
            dataType: 'json',
            data: { title: title, type: type, des: des },
            beforeSend: function (xhr) {
                $('#something').hide()
                // __disable_submit_button('button[type="submit"]');
            },
            success: function (result) {
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
    $(document).on('click', '#delete_hscode_button', function () {
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
            url: '/hscode/' + id ,
            dataType: 'json',
            data: { id: id },
            beforeSend: function (xhr) {
               // $('#something').hide()
                // __disable_submit_button('button[type="submit"]');
            },
            success: function (result) {
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