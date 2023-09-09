<div class="pos-tab-content">
  <div class="row" style="padding:0;margin:0;">
    <h3 class="">Cost Type Vehicle Purchase & Sale</h3>

    <div class="col-lg-6  " id="add_cost_type_showHide">
      <h4 class="bg-info p-10">Add Cost Type </h4>
      <div style="background-color: #f4f4f4; padding:0px 20px; margin-top:0; margin-bottom: 30px;">
        <form action="{{url('cost_type')}}" method="post">@csrf
          <div class="form-group">
            <label for="">Cost Related To</label>
            <div class="form-group mt-5 pt-5">
                <input class="form-check-input" type="radio" name="related_to" id="cost_typeRelated_to" value="Purchase" >
                <label class="form-check-label" for="maleRadio">
                    Purchase
                </label>
                <input class="form-check-input" type="radio" name="related_to" id="cost_typeRelated_to" value="Sell">
                <label class="form-check-label" for="maleRadio">
                    Sell
                </label>
            </div>
          </div>
          <div class="form-group">
            <label for="">Cost Name</label>
            <input type="text" class="form-control" name="title" id="cost_typeName" required>
          </div>
          
         <div class="form-group">
            <label for="">Country</label>
            <select class="form-control" name="country" id="cost_typeCountry" required>
                <option >---select country---</option>
                @foreach(\App\Country::get() as $country)
                    <option value="{{ $country->id }}">{{ $country->name }}</option>
                 @endforeach
            </select>
        </div>
          
          <div style="width:100%; display:flex; justify-content:space-around; padding:20px">
            <span type="submit" class="btn btn-primary" id="add_new_cost_type">save</span>
            <span class="btn btn-danger"  id="cancel_new_cost_type">cancel</span>
          </div>
        </form>

      </div>

    </div>
     <div class="col-lg-6  " id="edit_cost_type_showHide">
      <h4 class="bg-info p-10">Edit Cost Type </h4>
      <div style="background-color: #f4f4f4; padding:0px 20px; margin-top:0; margin-bottom: 30px;">
        <form action="{{url('cost_type')}}" method="post">@csrf
          <div class="form-group">
            <label for="">Cost Related To</label>
            <div class="form-group mt-5 pt-5">
                <input class="form-check-input" type="radio" name="related_to" id="cost_typeEditRelated_to" value="Purchase" >
                <label class="form-check-label" for="maleRadio">
                    Purchase
                </label>
                <input class="form-check-input" type="radio" name="related_to" id="cost_typeEditRelated_to" value="Sell">
                <label class="form-check-label" for="maleRadio">
                    Sell
                </label>
            </div>
          </div>
          <div class="form-group">
            <label for="">Cost Name</label>
            <input type="text" class="form-control" name="title" id="cost_typeEditName" required>
          </div>
          
         <div class="form-group">
            <label for="">Country</label>
            <select class="form-control" name="country" id="cost_typeEditCountry" required>
                <option >---select country---</option>
                @foreach(\App\Country::get() as $country)
                    <option value="{{ $country->id }}">{{ $country->name }}</option>
                 @endforeach
            </select>
        </div>
          <input type="hidden" id="cost_typeEditId">
          <div style="width:100%; display:flex; justify-content:space-around; padding:20px">
            <span type="submit" class="btn btn-primary" id="update_new_cost_type">Update</span>
            <span class="btn btn-danger"  id="cancel_edit_cost_type">cancel</span>
          </div>
        </form>

      </div>

    </div>
    <div class="col-lg-6 p-2 card">
       <div style="background-color: #f4f4f4; padding:30px 20px; margin-top:0; margin-bottom: 30px;">
              <div class="table-responsive">
                <table class="table table-bordered table-striped" id="cost_type_table" style="width: 100%;">
                    <thead>
                        <tr>
                            <th>SL</th>
                            <th>Cost Name</th>
                            <th>Cost Related to</th>
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