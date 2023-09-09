<div class="pos-tab-content">
  <div class="row" style="padding:0;margin:0;">
    <h3 class="">Vehicle Service & Warranty</h3>

    <div class="col-lg-6  " id="add_vehicle_service_showHide">
      <h4 class="bg-info p-10">Add Vehicle Service & Warranty</h4>
      <div style="background-color: #f4f4f4; padding:0px 20px; margin-top:0; margin-bottom: 30px;">
        <form action="{{url('vehicle_service')}}" method="post">@csrf
         
          <div class="form-group">
            <label for="">Title</label>
            <input type="text" class="form-control" name="title" id="vehicle_serviceTitle" required>
          </div>
          <div class="form-group">
            {!! Form::label('Details') !!}
            {!! Form::textarea('description', !empty($duplicate_product->description) ?
            $duplicate_product->description : null, ['class' => 'form-control','id'=>'vehicle_serviceDes']); !!}
          </div>
          <div class="form-group">
            <label for="">Validity</label>
            <div class="row">
              <div class="col-sm-4">
                  <div class="form-group">
                    <input type="text" placeholder="duration" class="form-control" name="duration" id="vehicle_serviceDuration" required>
                  </div>
              </div>
              <div class="col-sm-4">
               
                <div class="form-group">
                    <select class="form-control" name="country" id="vehicle_serviceCountry" required>
                      <option >---select ---</option>
                      <!-- @foreach(\App\Country::get() as $country)
                        <option value="{{ $country->id }}">{{ $country->name }}</option>
                      @endforeach -->
                      <option value="day">Day</option>
                      <option value="month">Month</option>
                      <option value="year">year</option>                     
                    </select>
                  </div>
              </div>
              <div class="col-sm-4">
                <div class="form-group">
                     
                    <input type="text" placeholder="warranty km" class="form-control" name="warranty_km" id="vehicle_serviceWarranty_km" required>
                  </div>
              </div>
            </div>
          </div>
          <div class="form-group">
            <label for="">Price</label>
            <input type="text" class="form-control" name="price" id="vehicle_servicePrice" required>
          </div>
          <div style="width:100%; display:flex; justify-content:space-around; padding:20px">
            <span type="submit" class="btn btn-primary" id="add_new_vehicle_service">save</span>
            <span class="btn btn-danger"  id="cancel_new_vehicle_service">cancel</span>
          </div>
        </form>

      </div>

    </div>
     <div class="col-lg-6  " id="edit_vehicle_service_showHide">
      <h4 class="bg-info p-10">Edit Vehicle Service & Warranty</h4>
      <div style="background-color: #f4f4f4; padding:0px 20px; margin-top:0; margin-bottom: 30px;">
        <form action="{{url('vehicle_service')}}" method="post">@csrf
          <div class="form-group">
            <label for="">Title</label>
            <input type="text" class="form-control" name="title" id="vehicle_serviceEditTitle" required>
          </div>
          <div class="form-group" style="display: none;">
            <label for="">Descriptions</label>
            <textarea type="text" class="form-control" rows="4" name="des" ></textarea>
          </div>
          <div class="form-group">
            {!! Form::label('description', __('lang_v1.description') . ':') !!}
            {!! Form::textarea('description', !empty($duplicate_product->description) ?
            $duplicate_product->description : null, ['class' => 'form-control','id'=>'vehicle_serviceEditDes']); !!}
          </div>
          <div class="form-group">
            <label for="">Validity</label>
            <div class="row">
              <div class="col-sm-4">
                  <div class="form-group">
                    <input type="text" placeholder="duration" class="form-control" name="duration" id="vehicle_serviceEditDuration" required>
                  </div>
              </div>
              <div class="col-sm-4">
               
                <div class="form-group">
                    <select class="form-control" name="country" id="vehicle_serviceEditCountry" required>
                      <option >---select ---</option>
                      <!-- @foreach(\App\Country::get() as $country)
                        <option value="{{ $country->id }}">{{ $country->name }}</option>
                      @endforeach -->
                      <option value="day">Day</option>
                      <option value="month">Month</option>
                      <option value="year">year</option>   
                      
                    </select>
                  </div>
              </div>
              <div class="col-sm-4">
                <div class="form-group">
                     
                    <input type="text" placeholder="warranty km" class="form-control" name="warranty_km" id="vehicle_serviceEditWarranty_km" required>
                  </div>
              </div>
            </div>
          </div>
          <div class="form-group">
            <label for="">Price</label>
            <input type="text" class="form-control" name="price" id="vehicle_serviceEditPrice" required>
          </div>
          <input type="hidden" id="vehicle_serviceEditId">
          <div style="width:100%; display:flex; justify-content:space-around; padding:20px">
            <span type="submit" class="btn btn-primary" id="update_new_vehicle_service">Update</span>
            <span class="btn btn-danger"  id="cancel_edit_vehicle_service">cancel</span>
          </div>
        </form>

      </div>

    </div>
    <div class="col-lg-6 p-2 card">
       <div style="background-color: #f4f4f4; padding:30px 20px; margin-top:0; margin-bottom: 30px;">
              <div class="table-responsive">
                <table class="table table-bordered table-striped" id="vehicle_service_table" style="width: 100%;">
                    <thead>
                        <tr>
                            <th>Type</th>
                            <th>Title</th>
                            <th>Description</th>
                            <th>Price</th>
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