<div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">

        {!! Form::open(['url' => action([\App\Http\Controllers\BusinessLocationController::class, 'store']), 'method' => 'post', 'id' => 'business_location_add_form' ]) !!}

        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <!-- <h4 class="modal-title">@lang( 'business.add_business_location' )</h4> -->
            <h4 class="modal-title">Add a New Business Branch</h4>
        </div>

        <div class="modal-body">
            <div class="row">
                 <div class="col-sm-6"> 
                    <div class="form-group">
                        {!! Form::label('name','Business Code' . ':*') !!}
                        {!! Form::text('name', null, ['class' => 'form-control', 'required', 'placeholder' => 'Code' ]); !!}
                    </div>
                </div>
                <div class="col-sm-6"> 
                    <div class="form-group">
                        {!! Form::label('Business Name','Business Name' . ':*') !!}
                        {!! Form::text('name', null, ['class' => 'form-control', 'required', 'placeholder' => __( 'invoice.name' ) ]); !!}
                    </div>
                </div>
               
                <div class="clearfix"></div>
                <!-- <div class="col-sm-6">
                    <div class="form-group">
                        {!! Form::label('location_id', __( 'lang_v1.location_id' ) . ':') !!}
                        {!! Form::text('location_id', null, ['class' => 'form-control', 'placeholder' => __( 'lang_v1.location_id' ) ]); !!}
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="form-group">
                        {!! Form::label('landmark', __( 'business.landmark' ) . ':') !!}
                        {!! Form::text('landmark', null, ['class' => 'form-control', 'placeholder' => __( 'business.landmark' ) ]); !!}
                    </div>
                </div>
                <div class="clearfix"></div> -->
                 <div class="col-sm-6">
                    <div class="form-group">
                        {!! Form::label('mobile', 'Address' . ':') !!}
                        {!! Form::text('mobile', null, ['class' => 'form-control', 'placeholder' => 'Address']); !!}
                    </div>
                </div>
                 <div class="col-sm-6">
                    <div class="form-group">
                        {!! Form::label('country', __( 'business.country' ) . ':*') !!}
                        {!! Form::text('country', null, ['class' => 'form-control', 'placeholder' => __( 'business.country'), 'required' ]); !!}
                    </div>
                </div>

                <!-- <div class="col-sm-6">
                    <div class="form-group">
                        {!! Form::label('zip_code', __( 'business.zip_code' ) . ':*') !!}
                        {!! Form::text('zip_code', null, ['class' => 'form-control', 'placeholder' => __( 'business.zip_code'), 'required' ]); !!}
                    </div>
                </div>
                <div class="clearfix"></div>
                <div class="col-sm-6">
                    <div class="form-group">
                        {!! Form::label('state', __( 'business.state' ) . ':*') !!}
                        {!! Form::text('state', null, ['class' => 'form-control', 'placeholder' => __( 'business.state'), 'required' ]); !!}
                    </div>
                </div> -->
               
                <div class="clearfix"></div>
                <div class="col-sm-6">
                    <div class="form-group">
                        {!! Form::label('city', __( 'business.city' ) . ':*') !!}
                        {!! Form::text('city', null, ['class' => 'form-control', 'placeholder' => __( 'business.city'), 'required' ]); !!}
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="form-group">
                        {!! Form::label('Contact No', 'Contact No' . ':') !!}
                        {!! Form::text('mobile', null, ['class' => 'form-control', 'placeholder' => __( 'business.mobile')]); !!}
                    </div>
                </div>
                
               
                <!-- <div class="col-sm-6">
                    <div class="form-group">
                        {!! Form::label('alternate_number', __( 'business.alternate_number' ) . ':') !!}
                        {!! Form::text('alternate_number', null, ['class' => 'form-control', 'placeholder' => __( 'business.alternate_number')]); !!}
                    </div>
                </div> -->
                <div class="clearfix"></div>
                
                <div class="col-sm-6">
                    <div class="form-group">
                        {!! Form::label('email', __( 'business.email' ) . ':') !!}
                        {!! Form::email('email', null, ['class' => 'form-control', 'placeholder' => __( 'business.email')]); !!}
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="form-group">
                        {!! Form::label('Web Address', 'Web Address' . ':') !!}
                        {!! Form::text('website', null, ['class' => 'form-control', 'placeholder' => __( 'lang_v1.website')]); !!}
                    </div>
                </div>
                <div class="clearfix"></div>

                <div class="col-sm-6">
                    <div class="form-group">
                        {!! Form::label('currency', 'Currency' . ':') !!}
                        {!! Form::Text('currency', null, ['class' => 'form-control', 'placeholder' => 'Currency']); !!}
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="form-group">
                        {!! Form::label('logo','Logo'  . ':') !!}
                        {!! Form::file('logo', null, ['class' => 'form-control', 'placeholder' =>'Logo']); !!}
                    </div>
                </div>
                <div class="clearfix"></div>
               <!--  <div class="col-sm-6">
                    <div class="form-group">
                        {!! Form::label('status', 'Status' . ':') !!}
                        {!! Form::Text('status', null, ['class' => 'form-control', 'placeholder' => 'Status']); !!}
                    </div>
                </div> -->
                <!-- <div class="col-sm-6">
                    <div class="form-group">
                        {!! Form::label('invoice_scheme_id', __('invoice.invoice_scheme_for_pos') . ':*') !!} @show_tooltip(__('tooltip.invoice_scheme'))
                        {!! Form::select('invoice_scheme_id', $invoice_schemes, null, ['class' => 'form-control', 'required',
                        'placeholder' => __('messages.please_select')]); !!}
                    </div>
                </div>

                <div class="col-sm-6">
                    <div class="form-group">
                        {!! Form::label('sale_invoice_scheme_id', __('invoice.invoice_scheme_for_sale') . ':*') !!}
                        {!! Form::select('sale_invoice_scheme_id', $invoice_schemes, null, ['class' => 'form-control', 'required',
                        'placeholder' => __('messages.please_select')]); !!}
                    </div>
                </div> -->


                <!-- <div class="col-sm-6">
                    <div class="form-group">
                        {!! Form::label('invoice_layout_id', __('lang_v1.invoice_layout_for_pos') . ':*') !!} @show_tooltip(__('tooltip.invoice_layout'))
                        {!! Form::select('invoice_layout_id', $invoice_layouts, null, ['class' => 'form-control', 'required',
                        'placeholder' => __('messages.please_select')]); !!}
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="form-group">
                        {!! Form::label('sale_invoice_layout_id', __('lang_v1.invoice_layout_for_sale') . ':*') !!} @show_tooltip(__('lang_v1.invoice_layout_for_sale_tooltip'))
                        {!! Form::select('sale_invoice_layout_id', $invoice_layouts, null, ['class' => 'form-control', 'required',
                        'placeholder' => __('messages.please_select')]); !!}
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="form-group">
                        {!! Form::label('selling_price_group_id', __('lang_v1.default_selling_price_group') . ':') !!} @show_tooltip(__('lang_v1.location_price_group_help'))
                        {!! Form::select('selling_price_group_id', $price_groups, null, ['class' => 'form-control',
                        'placeholder' => __('messages.please_select')]); !!}
                    </div>
                </div>
                <div class="clearfix"></div>
                @php
                $custom_labels = json_decode(session('business.custom_labels'), true);
                $location_custom_field1 = !empty($custom_labels['location']['custom_field_1']) ? $custom_labels['location']['custom_field_1'] : __('lang_v1.location_custom_field1');
                $location_custom_field2 = !empty($custom_labels['location']['custom_field_2']) ? $custom_labels['location']['custom_field_2'] : __('lang_v1.location_custom_field2');
                $location_custom_field3 = !empty($custom_labels['location']['custom_field_3']) ? $custom_labels['location']['custom_field_3'] : __('lang_v1.location_custom_field3');
                $location_custom_field4 = !empty($custom_labels['location']['custom_field_4']) ? $custom_labels['location']['custom_field_4'] : __('lang_v1.location_custom_field4');
                @endphp -->
                <!-- <div class="col-sm-3">
                    <div class="form-group">
                        {!! Form::label('custom_field1', $location_custom_field1 . ':') !!}
                        {!! Form::text('custom_field1', null, ['class' => 'form-control',
                        'placeholder' => $location_custom_field1]); !!}
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="form-group">
                        {!! Form::label('custom_field2', $location_custom_field2 . ':') !!}
                        {!! Form::text('custom_field2', null, ['class' => 'form-control',
                        'placeholder' => $location_custom_field2]); !!}
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="form-group">
                        {!! Form::label('custom_field3', $location_custom_field3 . ':') !!}
                        {!! Form::text('custom_field3', null, ['class' => 'form-control',
                        'placeholder' => $location_custom_field3]); !!}
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="form-group">
                        {!! Form::label('custom_field4', $location_custom_field4 . ':') !!}
                        {!! Form::text('custom_field4', null, ['class' => 'form-control',
                        'placeholder' => $location_custom_field4]); !!}
                    </div>
                </div>
                <div class="clearfix"></div> -->
               
                <!-- <div class="col-sm-12">
                    <div class="form-group">
                        {!! Form::label('featured_products', __('lang_v1.pos_screen_featured_products') . ':') !!} @show_tooltip(__('lang_v1.featured_products_help'))
                        {!! Form::select('featured_products[]', [], null, ['class' => 'form-control',
                        'id' => 'featured_products', 'multiple']); !!}
                    </div>
                </div>
                <div class="clearfix"></div>
                <hr>
                <div class="col-sm-12">
                    <strong>@lang('lang_v1.payment_options'): @show_tooltip(__('lang_v1.payment_option_help'))</strong>
                    <div class="form-group">
                        <table class="table table-condensed table-striped">
                            <thead>
                                <tr>
                                    <th class="text-center">@lang('lang_v1.payment_method')</th>
                                    <th class="text-center">@lang('lang_v1.enable')</th>
                                    <th class="text-center @if(empty($accounts)) hide @endif">@lang('lang_v1.default_accounts') @show_tooltip(__('lang_v1.default_account_help'))</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($payment_types as $key => $value)
                                <tr>
                                    <td class="text-center">{{$value}}</td>
                                    <td class="text-center">{!! Form::checkbox('default_payment_accounts[' . $key . '][is_enabled]', 1, true); !!}</td>
                                    <td class="text-center @if(empty($accounts)) hide @endif">
                                        {!! Form::select('default_payment_accounts[' . $key . '][account]', $accounts, null, ['class' => 'form-control input-sm']); !!}
                                    </td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div> -->
            </div>
             <hr>
             <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Business hours</label>
                    <div class="col-sm-10">
                      <div class="row mb-2">
                          <div class="col-sm-3 select2-primary">
                            <div class="icheck-success d-inline col-sm-12">
                                {!! Form::checkbox('saturday', 'Saturday', false, ['id' => 'Saturday']) !!}
                                {!! Form::label('Saturday', 'Saturday') !!}
                            </div>
                          </div>
                            <div class="col-sm-3 select2-primary" id="open_hour">
                                {!! Form::select('saturday_opentime', ['08:00 AM' => '08:00 AM', '09:00 AM' => '09:00 AM', '10:00 AM' => '10:00 AM'], null, ['class' => 'select2 form-control', 'data-placeholder' => 'Select an Open Time', 'data-dropdown-css-class' => 'select2-purple']) !!}
                            </div>
                            <div class="col-sm-3 select2-primary" id="close_hour">
                                {!! Form::select('saturday_closetime', ['09:00 PM' => '09:00 PM', '10:00 PM' => '10:00 PM', '11:00 PM' => '11:00 PM'], null, ['class' => 'select2 form-control', 'data-placeholder' => 'Select a Closing Time', 'data-dropdown-css-class' => 'select2-purple']) !!}
                            </div>
                    </div>
                          <div class="row pt-2 mb-2">
                            <div class="col-sm-3 select2-primary">
                              <div class="icheck-success d-inline col-sm-12">
                                {!! Form::checkbox('Sunday', 'Sunday', false, ['id' => 'Sunday']) !!}
                                {!! Form::label('Sunday', 'Sunday') !!}
                              </div>
                            </div>
                            <div class="col-sm-3 select2-primary open_hour_sunday" id="open_hour_sunday">
                              <select class="select2 form-control " data-placeholder="Select a Open Time" data-dropdown-css-class="select2-purple" name="sunday_opentime">
                                <option>08:00 AM</option>
                                <option>09:00 AM</option>
                                <option>10:00 AM</option>                                
                              </select> 
                            </div>
                            <div class="col-sm-3 select2-primary close_hour_sunday" id="close_hour_sunday">
                              <select class="select2 form-control" data-placeholder="Select a Closing Time" data-dropdown-css-class="select2-purple" name="sunday_closetime">
                                <option>09:00 PM</option>
                                <option>10:00 PM</option>
                                <option>11:00 PM</option>                               
                              </select>
                            </div>
                          </div>
                          <div class="row pt-2 mb-2">
                            <div class="col-sm-3 select2-primary">
                              <div class="icheck-success d-inline col-sm-12 ">
                                <input type="checkbox" name="monday" value="Monday" id="Monday">
                                <label for="Monday">
                                  Monday
                                </label>
                                </div>
                            </div>
                            <div class="col-sm-3 select2-primary">
                              <select class="select2 form-control " data-placeholder="Select a Open Time" data-dropdown-css-class="select2-purple" name="monday_opentime">
                                <option>08:00 AM</option>
                                <option>09:00 AM</option>
                                <option>10:00 AM</option>                              
                              </select> 
                            </div>
                            <div class="col-sm-3 select2-primary">
                              <select class="select2 form-control" data-placeholder="Select a Closing Time" data-dropdown-css-class="select2-purple" name="monday_closetime">
                                <option>09:00 PM</option>
                                <option>10:00 PM</option>
                                <option>11:00 PM</option>                              
                              </select> 
                            </div>
                          </div>
                          <div class="row pt-2 mb-2">
                            <div class="col-sm-3 select2-primary">
                              <div class="icheck-success d-inline col-sm-12 ">
                                <input type="checkbox" name="tuesday" value="Tuesday" id="Tuesday">
                                <label for="Tuesday">
                                  Tuesday
                                </label>
                                </div>
                            </div>
                            <div class="col-sm-3 select2-primary">
                              <select class="select2 form-control " data-placeholder="Select a Open Time" data-dropdown-css-class="select2-purple" name="tuesday_opentime">
                                <option>08:00 AM</option>
                                <option>09:00 AM</option>
                                <option>10:00 AM</option>                               
                              </select> 
                            </div>
                            <div class="col-sm-3 select2-primary">
                              <select class="select2 form-control" data-placeholder="Select a Closing Time" data-dropdown-css-class="select2-purple" name="tuesday_closetime">
                                <option>09:00 PM</option>
                                <option>10:00 PM</option>
                                <option>11:00 PM</option>                               
                              </select> 
                            </div>
                          </div>
                          <div class="row pt-2 mb-2">
                            <div class="col-sm-3 select2-primary">
                              <div class="icheck-success d-inline col-sm-12 ">
                                <input type="checkbox" name="wednesday" value="Wednesday" id="Wednesday">
                                <label for="Wednesday">
                                  Wednesday
                                </label>
                                </div>
                            </div>
                            <div class="col-sm-3 select2-primary">
                              <select class="select2 form-control " data-placeholder="Select a Open Time" data-dropdown-css-class="select2-purple" name="wednesday_opentime">
                                <option>08:00 AM</option>
                                <option>09:00 AM</option>
                                <option>10:00 AM</option>                                
                              </select> 
                            </div>
                            <div class="col-sm-3 select2-primary">
                              <select class="select2 form-control" data-placeholder="Select a Closing Time" data-dropdown-css-class="select2-purple" name="wednesday_closetime">
                                <option>09:00 PM</option>
                                <option>10:00 PM</option>
                                <option>11:00 PM</option>                               
                              </select>
                            </div>
                          </div>
                          <div class="row pt-2 mb-2">
                            <div class="col-sm-3 select2-primary">
                              <div class="icheck-success d-inline col-sm-12 ">
                                <input type="checkbox" name="thursday" value="Thursday" id="Thursday">
                                <label for="Thursday">
                                  Thursday
                                </label>
                                </div>
                            </div>
                            <div class="col-sm-3 select2-primary">
                              <select class="select2 form-control " data-placeholder="Select a Open Time" data-dropdown-css-class="select2-purple" name="thursday_opentime">
                                <option>08:00 AM</option>
                                <option>09:00 AM</option>
                                <option>10:00 AM</option>                               
                              </select> 
                            </div>
                            <div class="col-sm-3 select2-primary">
                              <select class="select2 form-control" data-placeholder="Select a Closing Time" data-dropdown-css-class="select2-purple" name="thursday_closetime">
                                <option>09:00 PM</option>
                                <option>10:00 PM</option>
                                <option>11:00 PM</option>                                
                              </select> 
                            </div>
                          </div>
                          <div class="row pt-2 mb-2">
                            <div class="col-sm-3 select2-primary">
                              <div class="icheck-success d-inline col-sm-12 ">
                                <input type="checkbox" name="friday" value="Friday" id="Friday">
                                <label for="Friday">
                                  Friday
                                </label>
                                </div>
                            </div>
                            <div class="col-sm-3 select2-primary">
                              <select class="select2 form-control " data-placeholder="Select a Open Time" data-dropdown-css-class="select2-purple" name="friday_opentime">
                                <option>08:00 AM</option>
                                <option>09:00 AM</option>
                                <option>10:00 AM</option>                             
                              </select> 
                            </div>
                            <div class="col-sm-3 select2-primary">
                              <select class="select2 form-control" data-placeholder="Select a Closing Time" data-dropdown-css-class="select2-purple" name="friday_closetime">
                                <option>09:00 PM</option>
                                <option>10:00 PM</option>
                                <option>11:00 PM</option>                              
                              </select> 
                            </div>
                          </div>
                </div>
              </div>
        </div>

        <div class="modal-footer">
            <button type="submit" class="btn btn-primary">@lang( 'messages.save' )</button>
            <button type="button" class="btn btn-default" data-dismiss="modal">@lang( 'messages.close' )</button>
        </div>

        {!! Form::close() !!}

    </div><!-- /.modal-content -->
</div><!-- /.modal-dialog -->