<div class="modal-dialog" role="document">
  <div class="modal-content">

    {!! Form::open(['url' => action([\App\Http\Controllers\BrandController::class, 'update'], [$brand->id]), 'method' => 'PUT', 'id' => 'brand_edit_form' ]) !!}

    <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      {{-- <h4 class="modal-title">@lang( 'brand.edit_brand' )</h4> --}}
      <h4 class="modal-title">Spare Part Brand Edit</h4>
    </div>

    <div class="modal-body">
      <div class="form-group">
        {!! Form::label('name', __( 'brand.brand_name' ) . ':*') !!}
        {!! Form::text('name', $brand->name, ['class' => 'form-control', 'required', 'placeholder' => __( 'brand.brand_name' )]); !!}
      </div>

      <div class="form-group" style="display: none;">
        {!! Form::label('description', __( 'brand.short_description' ) . ':') !!}
        {!! Form::text('description', $brand->description, ['class' => 'form-control','placeholder' => __( 'brand.short_description' )]); !!}
      </div>
      <div class="form-group">
        <label>Country of Origin</label>
        <select name="country_id" class="form-control" required>
          <option value="">Select country</option>
          @foreach(App\country::get() as $country)
          <option value="{{$country->id}}" @if($country->id == $brand->country->id) selected @endif>{{$country->name}}</option>
          @endforeach

        </select>
      </div>

      @if($is_repair_installed)
      <div class="form-group" style="display: none;">
        <label>
          {!!Form::checkbox('use_for_repair', 1, $brand->use_for_repair, ['class' => 'input-icheck']) !!}
          {{ __( 'repair::lang.use_for_repair' )}}
        </label>
        @show_tooltip(__('repair::lang.use_for_repair_help_text'))
      </div>
      @endif

    </div>

    <div class="modal-footer">
      <button type="submit" class="btn btn-primary">@lang( 'messages.update' )</button>
      <button type="button" class="btn btn-default" data-dismiss="modal">@lang( 'messages.close' )</button>
    </div>

    {!! Form::close() !!}

  </div><!-- /.modal-content -->
</div><!-- /.modal-dialog -->