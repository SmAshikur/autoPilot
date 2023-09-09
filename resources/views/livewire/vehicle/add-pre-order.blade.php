<div class="row">
    @push('custom-css')
        <style>
            .pagination {
                display: inline-flex;
            }

            .mb-20 {
                margin-bottom: 25px !important;
            }
        </style>
    @endpush
    @include('components.loading-indecator')
    <div class="col-md-12 col-lg-12 col-xs-12 col-sm-12">
        <div class="panel panel-default p-10">
            <form wire:submit.prevent="store" enctype="multipart/form-data">
                <div class="panel-body">
                    <div class="row">
                        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                            <div class="form-group">
                                <label for="customer_id">Select Customer<sup class="text-danger">*</sup></label>
                                {{-- <div wire:ignore> --}}
                                <div class="input-group">
                                    <select wire:model.defer="customer_id" id="customer_id" class="form-control"
                                        required>
                                        <option value="">--Select One--</option>
                                        @foreach ($customers as $customer)
                                            <option value="{{ $customer->id }}">
                                                {{ $customer->name == '' ? 'no name' : $customer->name }}</option>
                                            </option>
                                        @endforeach
                                    </select>
                                    <a href="3" wire:click.prevent="addCustomer"
                                        style="background-color:green; color:white"
                                        class="input-group-addon cursor-pointer bg-success" id="basic-addon2"><i
                                            class="fas fa-plus"></i></a>
                                </div>

                                {{-- </div> --}}
                                @error('customer_id')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                            <div class="form-group">
                                <label for="pre_order_recived_by">Pre Order Recived By</label>
                                <div wire:ignore>
                                    <select wire:model.defer="pre_order_recived_by" id="pre_order_recived_by"
                                        class="form-control" required>
                                        <option value="">--Select One--</option>
                                        @foreach ($recived_users as $recived_user)
                                            <option value="{{ $recived_user->id }}">{{ $recived_user->username }}
                                            </option>
                                        @endforeach
                                    </select>
                                </div>
                                @error('pre_order_recived_by')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                            <div class="form-group">
                                <label for="order_date">Date</label>
                                <input type="date" wire:model.defer="order_date" class="form-control">
                                @error('order_date')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                            <div class="form-group">
                                <label for="vehicle_category">Primary Vehicle Category</label><br>
                                <input type="radio" wire:model="vehicle_category" class="" value="Passenger">
                                Passenger
                                <input type="radio" wire:model="vehicle_category" class="" value="Commercial">
                                Commercial
                                <input type="radio" wire:model="vehicle_category" class="" value="Bike"> Bike
                                @error('vehicle_category')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                            <div class="form-group">
                                <label for="product_id">Vehicle</label>
                                <select wire:model.defer="product_id" id="product_id" class="form-control" required>
                                    <option value="">--Select One--</option>
                                    @foreach ($products as $product)
                                        <option value="{{ $product->id }}">
                                            {{ $product->manufacture->name ?? '' }} -
                                            {{ $product->model_origin->model ?? '' }}({{ $product->chassis_code->name ?? '' }},
                                            {{ $product->displacement_engine->cc ?? '' }}cc,
                                            {{ $product->transmission ?? '' }},
                                            {{ $product->drive_system ?? '' }},
                                            {{ $product->fuel_type ?? '' }}
                                            )
                                        </option>
                                    @endforeach
                                </select>
                                @error('product_id')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                            <div class="form-group">
                                <label for="preferred_year">Preferred Year</label>
                                <input type="text" class="form-control" wire:model.defer="preferred_year"
                                    placeholder="Preferred Year">
                                @error('preferred_year')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                            <div class="form-group">
                                <label for="preferred_color">Preferred Color</label>
                                <input type="text" class="form-control" wire:model.defer="preferred_color"
                                    placeholder="Preferred Color">
                                @error('preferred_color')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                            <div class="form-group">
                                <label for="preferred_millage">Preferred Millage</label>
                                <input type="text" class="form-control" wire:model.defer="preferred_millage"
                                    placeholder="Preferred Millage">
                                @error('preferred_millage')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                            <div class="form-group">
                                <label for="preferred_grade">Preferred Grade</label>
                                <input type="text" class="form-control" wire:model.defer="preferred_grade"
                                    placeholder="Preferred Grade">
                                @error('preferred_grade')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                            <div class="form-group">
                                <label for="other_requirements">Other Requirements</label>
                                <textarea wire:model.defer="other_requirements" class="form-control"="other_requirements" cols="30"
                                    rows="5"></textarea>
                                @error('other_requirements')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                            <div class="form-group">
                                <label for="budget">Budget</label>
                                <input type="text" class="form-control" wire:model.defer="budget"
                                    placeholder="Budget">
                                @error('budget')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                            <div class="form-group">
                                <label for="expected_delivery_date">Expected Delivery Date</label>
                                <input type="date" class="form-control" wire:model.defer="expected_delivery_date">
                                @error('expected_delivery_date')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                            <div class="form-group">
                                <label for="booking_amount">Booking Amount</label>
                                <input type="number" class="form-control" wire:model.defer="booking_amount">
                                @error('booking_amount')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                            <div class="form-group">
                                <label for="additional_information">Additional Information</label>
                                <textarea wire:model.defer="additional_information" class="form-control"="additional_information" cols="30"
                                    rows="3"></textarea>
                                @error('additional_information')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                            <div class="form-group">
                                <label for="terms_condition">Terms & Condition</label>
                                <select wire:model.defer="terms_condition" id="terms_condition" class="form-control"
                                    required>
                                    <option value="">--Select One--</option>
                                    <option value="Terms & Condition 1">Terms & Condition 1</option>
                                    <option value="Terms & Condition 2">Terms & Condition 2</option>
                                    <option value="Terms & Condition 3">Terms & Condition 3</option>
                                    <option value="Terms & Condition 4">Terms & Condition 4</option>
                                </select>
                                @error('terms_condition')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>
                    </div>
                </div>

                <button type="submit" class="btn btn-success">Add Order</button>
                <button type="reset" class="btn btn-success float-end">Cancel</button>
            </form>
        </div>
    </div>
    {{-- Customer Modal --}}
    <div wire:ignore.self class="modal fade" id="customer-modal" role="dialog" aria-labelledby="model-8"
        aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">@lang('contact.add_contact')</h4>
                </div>
                <form wire:submit.prevent="storeCustomer">
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="contact_type">Contact Type</label>
                                    <select required wire:model.defer="contact_type" id=""
                                        class="form-control">
                                        @foreach ($types as $key => $type)
                                            <option value="{{ $key }}">{{ $type }}
                                            </option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="customer_name">Name</label>
                                    <input type="text" required class="form-control"
                                        wire:model.defer="customer_name">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="contact_id">Contact Id</label>
                                    <input type="text" class="form-control" wire:model.defer="contact_id">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="customer_group">Customer Group</label>
                                    <select wire:model.defer="customer_group" id="customer_group"
                                        class="form-control">
                                        @foreach ($customer_groups as $key => $type)
                                            <option value="{{ $key }}">{{ $type }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="mobile">Mobile <sup class="text-danger">*</sup></label>
                                    <input type="text" required class="form-control" wire:model.defer="mobile"
                                        placeholder="Enter Mobile Number">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="alernative_contact_no">Alternative Contact Number </label>
                                    <input type="text" class="form-control"
                                        wire:model.defer="alernative_contact_no"
                                        placeholder="Enter Alternative Contact Number">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="land_line">Land Line </label>
                                    <input type="text" class="form-control" wire:model.defer="land_line"
                                        placeholder="Enter LandLine Here">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="email">Email</label>
                                    <input type="email" class="form-control" wire:model.defer="email"
                                        placeholder="Enter Email Here">
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="modal-footer">
                        <button type="submit" class="btn btn-primary">@lang('messages.save')</button>
                        <button type="button" class="btn btn-default"
                            data-dismiss="modal">@lang('messages.close')</button>
                    </div>
                </form>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div>
</div>
@push('custom-js')
    <script>
        $(document).ready(function() {
            // $('#customer_id').select2({
            //     width: '100%' // need to override the changed default
            // }).on('change', function() {
            //     @this.set('customer_id', $(this).val());
            // });
        });
        // $(document).ready(function() {
        //     $('#pre_order_recived_by').select2({
        //         width: '100%' // need to override the changed default
        //     }).on('change', function() {
        //         @this.set('pre_order_recived_by', $(this).val());
        //     });
        // });
    </script>
@endpush
