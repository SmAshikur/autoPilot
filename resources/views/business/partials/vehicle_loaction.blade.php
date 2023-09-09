<div class="pos-tab-content">
  <div class="row" style="padding:0;margin:0;">
    <h3 class="">Vehicle Loaction</h3>
    <div class="col-lg-6  " id="add_vehicle_location_showHide">
      <h4 class="bg-info p-10">Add Vehicle Loaction</h4>
      <div style="background-color: #f4f4f4; padding:0px 20px; margin-top:0; margin-bottom: 30px;">
        <form action="{{url('vehicle_location')}}" method="post">@csrf
          <div class="form-group">
            <label for="">Location Name</label>
            <input type="text" class="form-control" name="name" id="vehicle_location_name" required>
          </div>
          <div style="width:100%; display:flex; justify-content:space-around; padding:20px">
            <span type="submit" class="btn btn-primary" id="add_new_vehicle_location">save</span>
            <span class="btn btn-danger"  id="cancel_new_vehicle_location">cancel</span>
          </div>
        </form>

      </div>

    </div>
     <div class="col-lg-6  " id="edit_vehicle_location_showHide">
      <h4 class="bg-info p-10">Edit Vehicle Loaction</h4>
      <div style="background-color: #f4f4f4; padding:0px 20px; margin-top:0; margin-bottom: 30px;">
        <form action="{{url('vehicle_location')}}" method="post">@csrf

          <div class="form-group">
            <label for="">Location Name</label>
            <input type="text" class="form-control" name="name" id="vehicle_location_edit_name" required>
          </div>

          <input type="hidden" id="vehicle_locationEditId">
          <div style="width:100%; display:flex; justify-content:space-around; padding:20px">
            <span type="submit" class="btn btn-primary" id="update_new_vehicle_location">Update</span>
            <span class="btn btn-danger"  id="cancel_edit_vehicle_location">cancel</span>
          </div>
        </form>

      </div>

    </div>
    <div class="col-lg-6 p-2 card">
       <div style="background-color: #f4f4f4; padding:30px 20px; margin-top:0; margin-bottom: 30px;">
              <div class="table-responsive">
                <table class="table table-bordered table-striped" id="vehicle_location_table" style="width: 100%;">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Name</th>
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

@endsection