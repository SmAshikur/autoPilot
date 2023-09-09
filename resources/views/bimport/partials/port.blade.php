<div class="pos-tab-content">
  <div class="row" style="padding:0;margin:0;">
    <h3 class="">Port Information</h3>

    <div class="col-md-6  " id="addport_showHide">
      <h4 class="bg-info p-10">Add port</h4>
      <div style="background-color: #f4f4f4; padding:0px 20px; margin-top:0; margin-bottom: 30px;">
        <form action="{{url('port')}}" method="post">@csrf
         
          <div class="form-group">
            <label for="">Port Name</label>
            <input type="text" class="form-control" name="name" id="portName" required>
          </div>
          <div class="form-group">
            <label for="">Country</label>
            <select class="form-control" name="country" id="portCountry" required>
                <option >---select country---</option>
                @foreach(\App\Country::get() as $country)
                    <option value="{{ $country->id }}">{{ $country->name }}</option>
                 @endforeach
            </select>
          </div>
         
          
          <div style="width:100%; display:flex; justify-content:space-around; padding:20px">
            <span type="submit" class="btn btn-primary" id="add_new_port">save</span>
            <span class="btn btn-danger"  id="cancel_new_port">cancel</span>
          </div>
        </form>

      </div>

    </div>
     <div class="col-md-6  " id="editport_showHide">
      <h4 class="bg-info p-10">Edit port & Conditions</h4>
      <div style="background-color: #f4f4f4; padding:0px 20px; margin-top:0; margin-bottom: 30px;">
        <form action="{{url('port')}}" method="post">@csrf
          
          <div class="form-group">
            <label for="">Port Name</label>
            <input type="text" class="form-control" name="name" id="portEditName" required>
          </div>
          <div class="form-group">
            <label for="">Country</label>
            <select class="form-control" name="country" id="portEditCountry" required>
                <option >---select country---</option>
                @foreach(\App\Country::get() as $country)
                    <option value="{{ $country->id }}">{{ $country->name }}</option>
                 @endforeach
            </select>
          </div>

          <input type="hidden" id="portEditId">
          <div style="width:100%; display:flex; justify-content:space-around; padding:20px">
            <span type="submit" class="btn btn-primary" id="update_new_port">Update</span>
            <span class="btn btn-danger"  id="cancel_edit_port">cancel</span>
          </div>
        </form>

      </div>

    </div>
    <div class="col-md-6 p-2 card">
       <div style="background-color: #f4f4f4; padding:30px 20px; margin-top:0; margin-bottom: 30px;">
              <div class="table-responsive">
                <table class="table table-bordered table-striped" id="port_table" style="width: 100%;">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Port Name</th>
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


@endsection