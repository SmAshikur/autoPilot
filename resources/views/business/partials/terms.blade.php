<div class="pos-tab-content">
  <div class="row" style="padding:0;margin:0;">
    <h3 class="">Terms & Conditions</h3>

    <div class="col-md-6  " id="addTerms_showHide">
      <h4 class="bg-info p-10">Add Terms & Conditions</h4>
      <div style="background-color: #f4f4f4; padding:0px 20px; margin-top:0; margin-bottom: 30px;">
        <form action="{{url('terms')}}" method="post">@csrf
          <div class="form-group">
            <label for="">Type</label>
            <select class="form-control" name="description" id="termsType" required>
              <option >---select type---</option>
              <option value="Pre Oder">Pre Oder</option>
              <option value="Forgien Purchase">Forgien Purchase</option>
              <option value="Local Purchase">Local Purchase</option>
              <option value="Sell">Sell</option>
            </select>
          </div>
          <div class="form-group">
            <label for="">Title</label>
            <input type="text" class="form-control" name="title" id="termsTitle" required>
          </div>
          <div class="form-group" style="display: none;">
            <label for="">Descriptions</label>
            <textarea type="text" class="form-control" rows="4" name="des" ></textarea>
          </div>
          <div class="form-group">
            {!! Form::label('description', __('lang_v1.description') . ':') !!}
            {!! Form::textarea('description', !empty($duplicate_product->description) ?
            $duplicate_product->description : null, ['class' => 'form-control','id'=>'termsDes']); !!}
          </div>
          
          <div style="width:100%; display:flex; justify-content:space-around; padding:20px">
            <span type="submit" class="btn btn-primary" id="add_new_terms">save</span>
            <span class="btn btn-danger"  id="cancel_new_terms">cancel</span>
          </div>
        </form>

      </div>

    </div>
     <div class="col-md-6  " id="editTerms_showHide">
      <h4 class="bg-info p-10">Edit Terms & Conditions</h4>
      <div style="background-color: #f4f4f4; padding:0px 20px; margin-top:0; margin-bottom: 30px;">
        <form action="{{url('terms')}}" method="post">@csrf
          <div class="form-group">
            <label for="">Type</label>
            <select class="form-control" name="description" id="termsEditType" required>
              <option >---select type---</option>
              <option value="Pre Oder">Pre Oder</option>
              <option value="Forgien Purchase">Forgien Purchase</option>
              <option value="Local Purchase">Local Purchase</option>
              <option value="Sell">Sell</option>
            </select>
          </div>
          <div class="form-group">
            <label for="">Title</label>
            <input type="text" class="form-control" name="title" id="termsEditTitle" required>
          </div>
          <div class="form-group" style="display: none;">
            <label for="">Descriptions</label>
            <textarea type="text" class="form-control" rows="4" name="des" ></textarea>
          </div>
          <!-- <div class="form-group">
            {!! Form::label('description', __('lang_v1.description') . ':') !!}
            {!! Form::textarea('description', !empty($duplicate_product->description) ?
            $duplicate_product->description : null, ['class' => 'form-control','id'=>'termsEditDes']); !!}
          </div> -->
           <div class="form-group">
                {!! Form::label('product_description', __('lang_v1.product_description') . ':') !!}
                {!! Form::textarea('product_description', !empty($duplicate_product->product_description) ? $duplicate_product->product_description : null, 
                ['class' => 'form-control']); !!}
            </div>
          <input type="hidden" id="termsEditId">
          <div style="width:100%; display:flex; justify-content:space-around; padding:20px">
            <span type="submit" class="btn btn-primary" id="update_new_terms">Update</span>
            <span class="btn btn-danger"  id="cancel_edit_terms">cancel</span>
          </div>
        </form>

      </div>

    </div>
    <div class="col-md-6 p-2 card">
       <div style="background-color: #f4f4f4; padding:30px 20px; margin-top:0; margin-bottom: 30px;">
              <div class="table-responsive">
                <table class="table table-bordered table-striped" id="terms_table" style="width: 100%;">
                    <thead>
                        <tr>
                            <th>Type</th>
                            <th>Title</th>
                            <th>Description</th>
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
    var terms_table = $('#terms_table').DataTable({
        processing: true,
        serverSide: true,
        ajax: '/terms',
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

    $(document).on('click', '#add_new_terms', function () {
        addtermsfrom()
    })
    $(document).on('click', '#cancel_new_terms', function () {
        $('#termsTitle').val('')
        $('#termsType').val('')
        $('#termsDes').val('')
    })
    function addtermsfrom() {
        //$(document).on('click', 'button.add_terms_button', function () {
        // $('div.unit_modal').load($(this).data('href'), function () {
        //$(this).modal('show');
        // $('form#add_terms_button').submit(function (e) {
        var title = $('#termsTitle').val()
        var type = $('#termsType').val()
        var des = $('#termsDes').val()

        $.ajax({
            method: 'POST',
            url: '/terms',
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
                    $('#termsTitle').val('')
                    $('#termsType').val('')
                    $('#termsDes').val('')
                    $('#something').show()
                    terms_table.ajax.reload();
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
    $(document).on('click', '#edit_terms_button', function () {
        var id = $(this).attr('data-id')
        // alert(id)
        editTermsFrom(id)
    })
    $('#editTerms_showHide').hide()
    function editTermsFrom(id) {
        //$(document).on('click', 'button.add_terms_button', function () {
        // $('div.unit_modal').load($(this).data('href'), function () {
        //$(this).modal('show');
        // $('form#add_terms_button').submit(function (e) {

        $.ajax({
            method: 'GET',
            url: '/terms/' + id + '/edit',
            dataType: 'json',
            data: { id: id },
            beforeSend: function (xhr) {
                $('#something').hide()
                // __disable_submit_button('button[type="submit"]');
            },
            success: function (result) {
                if (result.success == true) {
                    $('#addTerms_showHide').hide()
                    $('#editTerms_showHide').show()
                    //if(result.terms.title){
                    // alert(result.terms.title)
                    $('#termsEditTitle').val(result.terms.title)
                    // }
                    // if(result.terms.type){
                    $('#termsEditType').val(result.terms.type)
                    // }
                    // if(result.terms.des){
                    $('#termsEditDes').val(result.terms.description)

                    $('#termsEditId').val(result.terms.id)
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
    $(document).on('click', '#cancel_edit_terms', function () {
        $('#addTerms_showHide').show()
        $('#editTerms_showHide').hide()
    })

    $(document).on('click', '#update_new_terms', function () {
        var id = $('#termsEditId').val()
        // alert(id)
        updateTermsFrom(id)
    })
    function updateTermsFrom(id) {
        // alert(id)
        //$(document).on('click', 'button.add_terms_button', function () {
        // $('div.unit_modal').load($(this).data('href'), function () {
        //$(this).modal('show');
        // $('form#add_terms_button').submit(function (e) {
        var title = $('#termsEditTitle').val()
        var type = $('#termsEditType').val()
        var des = $('#termsEditDes').val()

        $.ajax({
            method: 'PUT',
            url: '/terms/' + id,
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
                    terms_table.ajax.reload();
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
    $(document).on('click', '#delete_terms_button', function () {
        var id = $(this).attr('data-id')
        //alert(id)
        deleteTermsFrom(id)
    })
     function deleteTermsFrom(id) {
        //$(document).on('click', 'button.add_terms_button', function () {
        // $('div.unit_modal').load($(this).data('href'), function () {
        //$(this).modal('show');
        // $('form#add_terms_button').submit(function (e) {

        $.ajax({
            method: 'DELETE',
            url: '/terms/' + id ,
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
                    terms_table.ajax.reload();
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

    var vehicle_location_table = $('#vehicle_location_table').DataTable({
        processing: true,
        serverSide: true,
        ajax: '/vehicle_location',
        columnDefs: [
            {
                targets: 2,
                orderable: false,
                searchable: false,
            },
        ],
        columns: [

            {
                data: 'id', name: 'id'
            },
            {
                data: 'name', name: 'name', render: function (data, type, row) {
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

    $(document).on('click', '#add_new_vehicle_location', function () {
         
        addvehicle_locationfrom()
    })
    $(document).on('click', '#cancel_new_vehicle_location', function () {
         $('#vehicle_location_name').val('')
    })
    function addvehicle_locationfrom() {
        //$(document).on('click', 'button.add_vehicle_location_button', function () {
        // $('div.unit_modal').load($(this).data('href'), function () {
        //$(this).modal('show');
        // $('form#add_vehicle_location_button').submit(function (e) {
        var name = $('#vehicle_location_name').val()
        //alert(name)
        $.ajax({
            method: 'POST',
            url: '/vehicle_location',
            dataType: 'json',
            data: { name: name },
            beforeSend: function (xhr) {
                $('#something').hide()
                // __disable_submit_button('button[type="submit"]');
            },
            success: function (result) {
                if (result.success == true) {
                    //  $('div.unit_modal').modal('hide');
                    toastr.success(result.msg);
                    $('#vehicle_location_name').val('')
                    $('#something').show()
                    vehicle_location_table.ajax.reload();
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
    $(document).on('click', '#edit_vehicle_location_button', function () {
        var id = $(this).attr('data-id')
         //alert(id)
        editvehicle_locationFrom(id)
    })
    $('#edit_vehicle_location_showHide').hide()
    function editvehicle_locationFrom(id) {
        //$(document).on('click', 'button.add_vehicle_location_button', function () {
        // $('div.unit_modal').load($(this).data('href'), function () {
        //$(this).modal('show');
        // $('form#add_vehicle_location_button').submit(function (e) {

        $.ajax({
            method: 'GET',
            url: '/vehicle_location/' + id + '/edit',
            dataType: 'json',
            data: { id: id },
            beforeSend: function (xhr) {
                $('#something').hide()
                // __disable_submit_button('button[type="submit"]');
            },
            success: function (result) {
                if (result.success == true) {
                  ///alert(re)
                    $('#add_vehicle_location_showHide').hide()
                    $('#edit_vehicle_location_showHide').show()
                    //if(result.vehicle_location.title){
                    // alert(result.vehicle_location.title)
                    $('#vehicle_location_edit_name').val(result.terms.name)
                    $('#vehicle_locationEditId').val(result.terms.id)
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
    $(document).on('click', '#cancel_edit_vehicle_location', function () {
        $('#add_vehicle_location_showHide').show()
        $('#edit_vehicle_location_showHide').hide()
    })

    $(document).on('click', '#update_new_vehicle_location', function () {
        var id = $('#vehicle_locationEditId').val()
        // alert(id)
        updatevehicle_locationFrom(id)
    })
    function updatevehicle_locationFrom(id) {
        //alert(id)
        //$(document).on('click', 'button.add_vehicle_location_button', function () {
        // $('div.unit_modal').load($(this).data('href'), function () {
        //$(this).modal('show');
        // $('form#add_vehicle_location_button').submit(function (e) {
        var name = $('#vehicle_location_edit_name').val()

        $.ajax({
            method: 'PUT',
            url: '/vehicle_location/' + id,
            dataType: 'json',
            data: { name:name },
            beforeSend: function (xhr) {
                $('#something').hide()
                // __disable_submit_button('button[type="submit"]');
            },
            success: function (result) {
                if (result.success == true) {
                    //  $('div.unit_modal').modal('hide');
                    toastr.success(result.msg);
                    $('#something').show()
                    vehicle_location_table.ajax.reload();
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
    $(document).on('click', '#delete_vehicle_location_button', function () {
        var id = $(this).attr('data-id')
        //alert(id)
        deletevehicle_locationFrom(id)
    })
     function deletevehicle_locationFrom(id) {
        //$(document).on('click', 'button.add_vehicle_location_button', function () {
        // $('div.unit_modal').load($(this).data('href'), function () {
        //$(this).modal('show');
        // $('form#add_vehicle_location_button').submit(function (e) {

        $.ajax({
            method: 'DELETE',
            url: '/vehicle_location/' + id ,
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
                    vehicle_location_table.ajax.reload();
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
    var vehicle_service_table = $('#vehicle_service_table').DataTable({
        processing: true,
        serverSide: true,
        ajax: '/vehicle_service',
        columnDefs: [
            {
                targets: 4,
                orderable: false,
                searchable: false,
            },
        ],
        columns: [

            {
                data: 'id', name: 'id'
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
                data: 'details', name: 'details', render: function (data, type, row) {
                    if (data) {
                        // Display only the first 10 characters of the title
                        return data.length > 20 ? data.substr(0, 20) + '...' : data;
                    } else {
                        return ''; // Or you can provide a default value for empty data
                    }
                }
            },
            {
                data: 'price', name: 'price'
            },

            { data: 'action', name: 'action' },
        ],
        lengthMenu: [[10, 25, 50, -1], [10, 25, 50, "All"]],
    });

    $(document).on('click', '#add_new_vehicle_service', function () {
        addvehicle_servicefrom()
    })
    $(document).on('click', '#cancel_new_vehicle_service', function () {
        $('#vehicle_serviceTitle').val('')
        $('#vehicle_serviceDes').val('')
        $('#vehicle_serviceDuration').val('')
        $('#vehicle_serviceCountry').val('')
        $('#vehicle_serviceWarranty_km').val('')
        $('#vehicle_servicePrice').val('')
    })
    function addvehicle_servicefrom() {
        //$(document).on('click', 'button.add_vehicle_service_button', function () {
        // $('div.unit_modal').load($(this).data('href'), function () {
        //$(this).modal('show');
        // $('form#add_vehicle_service_button').submit(function (e) {
        var title = $('#vehicle_serviceTitle').val()
        var des = $('#vehicle_serviceDes').val()
        var duration = $('#vehicle_serviceDuration').val()
        var country_id = $('#vehicle_serviceCountry').val()
        var warranty = $('#vehicle_serviceWarranty_km').val()
        var price = $('#vehicle_servicePrice').val()

        $.ajax({
            method: 'POST',
            url: '/vehicle_service',
            dataType: 'json',
            data: { title: title, duration: duration, des: des ,country_id:country_id,warranty:warranty,price:price },
            beforeSend: function (xhr) {
                $('#something').hide()
                // __disable_submit_button('button[type="submit"]');
            },
            success: function (result) {
                if (result.success == true) {
                    //  $('div.unit_modal').modal('hide');
                    toastr.success(result.msg);
                    $('#something').show()
                    $('#vehicle_serviceTitle').val('')
                    $('#vehicle_serviceDes').val('')
                    $('#vehicle_serviceDuration').val('')
                    $('#vehicle_serviceCountry').val('')
                    $('#vehicle_serviceWarranty_km').val('')
                    $('#vehicle_servicePrice').val('')
                    vehicle_service_table.ajax.reload();
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
    $(document).on('click', '#edit_vehicle_service_button', function () {
        var id = $(this).attr('data-id')
         
        editvehicle_serviceFrom(id)
    })
    $('#edit_vehicle_service_showHide').hide()
    function editvehicle_serviceFrom(id) {
        //$(document).on('click', 'button.add_vehicle_service_button', function () {
        // $('div.unit_modal').load($(this).data('href'), function () {
        //$(this).modal('show');
        // $('form#add_vehicle_service_button').submit(function (e) {

        $.ajax({
            method: 'GET',
            url: '/vehicle_service/' + id + '/edit',
            dataType: 'json',
            data: { id: id },
            beforeSend: function (xhr) {
                $('#something').hide()
                // __disable_submit_button('button[type="submit"]');
            },
            success: function (result) {
                if (result.success == true) {
                    console.log(result)
                    $('#add_vehicle_service_showHide').hide()
                    $('#edit_vehicle_service_showHide').show()
                    $('#vehicle_serviceEditTitle').val(result.terms.title)
                    $('#vehicle_serviceEditDes').val(result.terms.details)
                    $('#vehicle_serviceEditDuration').val(result.terms.duration)
                    $('#vehicle_serviceEditCountry').val(result.terms.country_id)
                    $('#vehicle_serviceEditWarranty_km').val(result.terms.warranty)
                    $('#vehicle_serviceEditPrice').val(result.terms.price)
                    $('#vehicle_serviceEditId').val(result.terms.id)
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
    $(document).on('click', '#cancel_edit_vehicle_service', function () {
        $('#add_vehicle_service_showHide').show()
        $('#edit_vehicle_service_showHide').hide()
    })

    $(document).on('click', '#update_new_vehicle_service', function () {
        var id = $('#vehicle_serviceEditId').val()
        // alert(id)
        updatevehicle_serviceFrom(id)
    })
    function updatevehicle_serviceFrom(id) {
        // alert(id)
        //$(document).on('click', 'button.add_vehicle_service_button', function () {
        // $('div.unit_modal').load($(this).data('href'), function () {
        //$(this).modal('show');
        // $('form#add_vehicle_service_button').submit(function (e) {
        var title = $('#vehicle_serviceEditTitle').val()
        var des = $('#vehicle_serviceEditDes').val()
        var duration = $('#vehicle_serviceEditDuration').val()
        var country_id = $('#vehicle_serviceEditCountry').val()
        var warranty =  $('#vehicle_serviceEditWarranty_km').val()
        var price = $('#vehicle_serviceEditPrice').val()
            
        $.ajax({
            method: 'PUT',
            url: '/vehicle_service/' + id,
            dataType: 'json',
            data: { title: title, duration: duration, des: des,country_id:country_id,warranty:warranty,price:price },
            beforeSend: function (xhr) {
                $('#something').hide()
                // __disable_submit_button('button[type="submit"]');
            },
            success: function (result) {
                if (result.success == true) {
                    //  $('div.unit_modal').modal('hide');
                    toastr.success(result.msg);
                    $('#something').show()
                    vehicle_service_table.ajax.reload();
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
    $(document).on('click', '#delete_vehicle_service_button', function () {
        var id = $(this).attr('data-id')
       // alert(id)
        deletevehicle_serviceFrom(id)
    })
     function deletevehicle_serviceFrom(id) {
        //$(document).on('click', 'button.add_vehicle_service_button', function () {
        // $('div.unit_modal').load($(this).data('href'), function () {
        //$(this).modal('show');
        // $('form#add_vehicle_service_button').submit(function (e) {

        $.ajax({
            method: 'DELETE',
            url: '/vehicle_service/' + id ,
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
                    vehicle_service_table.ajax.reload();
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

    var cost_type_table = $('#cost_type_table').DataTable({
        processing: true,
        serverSide: true,
        ajax: '/cost_type',
        columnDefs: [
            {
                targets: 4,
                orderable: false,
                searchable: false,
            },
        ],
        columns: [
            {
                data: 'id', name: 'id'
            },

            {
                data: 'name', name: 'name', render: function (data, type, row) {
                    if (data) {
                        // Display only the first 10 characters of the title
                        return data.length > 10 ? data.substr(0, 10) + '...' : data;
                    } else {
                        return ''; // Or you can provide a default value for empty data
                    }
                }
            },
            {
                data: 'related_to', name: 'related_to', render: function (data, type, row) {
                    if (data) {
                        // Display only the first 10 characters of the title
                        return data.length > 10 ? data.substr(0, 10) + '...' : data;
                    } else {
                        return ''; // Or you can provide a default value for empty data
                    }
                }
            },
            {
                data: 'country_id', name: 'country_id'
            },

            { data: 'action', name: 'action' },
        ],
        lengthMenu: [[10, 25, 50, -1], [10, 25, 50, "All"]],
    });

    $(document).on('click', '#add_new_cost_type', function () {
        addcost_typefrom()
    })
    $(document).on('click', '#cancel_new_cost_type', function () {
        $('#cost_typeName').val('')
        $('#cost_typeRelated_to').val('')
        $('#cost_typeCountry').val('')
    })
    function addcost_typefrom() {
        //$(document).on('click', 'button.add_cost_type_button', function () {
        // $('div.unit_modal').load($(this).data('href'), function () {
        //$(this).modal('show');
        // $('form#add_cost_type_button').submit(function (e) {
        var name = $('#cost_typeName').val()
        var related_to = $("input[name='related_to']:checked").val()
        var country_id = $('#cost_typeCountry').val()

        $.ajax({
            method: 'POST',
            url: '/cost_type',
            dataType: 'json',
            data: { name: name, related_to: related_to, country_id: country_id },
            beforeSend: function (xhr) {
                $('#something').hide()
                // __disable_submit_button('button[type="submit"]');
            },
            success: function (result) {
                if (result.success == true) {
                    //  $('div.unit_modal').modal('hide');
                    toastr.success(result.msg);
                    $('#cost_typeName').val('')
                    $('#cost_typeRelated_to').val('')
                    $('#cost_typeCountry').val('')
                    $('#something').show()
                    cost_type_table.ajax.reload();
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
    $(document).on('click', '#edit_cost_type_button', function () {
        var id = $(this).attr('data-id')
         //alert(id)
        editcost_typeFrom(id)
    })
    $('#edit_cost_type_showHide').hide()
    function editcost_typeFrom(id) {
        //$(document).on('click', 'button.add_cost_type_button', function () {
        // $('div.unit_modal').load($(this).data('href'), function () {
        //$(this).modal('show');
        // $('form#add_cost_type_button').submit(function (e) {

        $.ajax({
            method: 'GET',
            url: '/cost_type/' + id + '/edit',
            dataType: 'json',
            data: { id: id },
            beforeSend: function (xhr) {
                $('#something').hide()
                // __disable_submit_button('button[type="submit"]');
            },
            success: function (result) {
                if (result.success == true) {
                    $('#add_cost_type_showHide').hide()
                    $('#edit_cost_type_showHide').show()
                    //if(result.cost_type.title){
                    // alert(result.cost_type.title)
                    //$('#cost_typeEditTitle').val(result.cost_type.title)
                    $('#cost_typeEditName').val(result.terms.name)
                    //$('#cost_typeEditRelated_to').val(result.terms.related_to)
                    $('input[name="related_to"]').filter('[value="' + result.terms.related_to + '"]').prop('checked', true);
                    $('#cost_typeEditCountry').val(result.terms.country_id)
                    $('#cost_typeEditId').val(result.terms.id)
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
    $(document).on('click', '#cancel_edit_cost_type', function () {
        $('#add_cost_type_showHide').show()
        $('#edit_cost_type_showHide').hide()
    })

    $(document).on('click', '#update_new_cost_type', function () {
        var id = $('#cost_typeEditId').val()
        // alert(id)
        updatecost_typeFrom(id)
    })
    function updatecost_typeFrom(id) {
        // alert(id)
        //$(document).on('click', 'button.add_cost_type_button', function () {
        // $('div.unit_modal').load($(this).data('href'), function () {
        //$(this).modal('show');
        // $('form#add_cost_type_button').submit(function (e) {
        var name = $('#cost_typeEditName').val()
        var related_to = $('#cost_typeEditRelated_to').val()
        var country_id = $('#cost_typeEditCountry').val()

        $.ajax({
            method: 'PUT',
            url: '/cost_type/' + id,
            dataType: 'json',
             data: { name: name, related_to: related_to, country_id: country_id },
            beforeSend: function (xhr) {
                $('#something').hide()
                // __disable_submit_button('button[type="submit"]');
            },
            success: function (result) {
                if (result.success == true) {
                    //  $('div.unit_modal').modal('hide');
                    toastr.success(result.msg);
                    $('#something').show()
                    cost_type_table.ajax.reload();
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
    $(document).on('click', '#delete_cost_type_button', function () {
        var id = $(this).attr('data-id')
       // alert(id)
        deletecost_typeFrom(id)
    })
     function deletecost_typeFrom(id) {
        //$(document).on('click', 'button.add_cost_type_button', function () {
        // $('div.unit_modal').load($(this).data('href'), function () {
        //$(this).modal('show');
        // $('form#add_cost_type_button').submit(function (e) {

        $.ajax({
            method: 'DELETE',
            url: '/cost_type/' + id ,
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
                    cost_type_table.ajax.reload();
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