<div class="row">
    @push('custom-css')
        <style>
            .pr-0 {
                padding-right: 0px;
            }

            .pl-0 {
                padding-left: 0px;
            }
        </style>
    @endpush
    @include('components.loading-indecator')
    <div class="col-md-12 col-lg-12 col-xs-12 col-sm-12">
        <div class="panel panel-default p-10">
            <div class="panel-header">
                <h4>Add Local Purchase</h4>
            </div>
            <form wire:submit.prevent="store" enctype="multipart/form-data">
                <div class="panel-body">
                    <div class="row">
                        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                            <div class="form-group">
                                <label for="purchase_date">Purchase Date <sup class="text-danger">*</sup></label>
                                <input type="date" required wire:model.defer="purchase_date" class="form-control">
                                @error('purchase_date')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                            <div class="form-group">
                                <label for="supplier">Supplier <sup class="text-danger">*</sup>
                                    {{-- <a
                                        class="btn btn-success btn-sm" href="#"><i
                                            class="fas fa-plus"></i></a> --}}
                                </label>
                                <div class="input-group">
                                    <select wire:model.defer="supplier" id="supplier" class="form-control" required>
                                        <option value="">--Select Supplier--</option>
                                        @foreach ($suppliers as $supplier)
                                            <option value="{{ $supplier->id }}">{{ $supplier->name }}</option>
                                        @endforeach
                                    </select>
                                    <a href="#" wire:click.prevent="addSupplier"
                                        style="background-color:green; color:white"
                                        class="input-group-addon cursor-pointer bg-success" id="basic-addon1"><i
                                            class="fas fa-plus"></i></a>
                                </div>
                                @error('supplier')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                            <div class="form-group">
                                <label for="lot_number">Lot Number <sup class="text-danger">*</sup></label>

                                <input type="text" wire:model.defer="lot_number" class="form-control"
                                    placeholder="Lot Number">


                                @error('lot_number')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                            <div class="form-group">
                                <label for="source_of_product">Source Of Product <sup
                                        class="text-danger">*</sup></label>
                                <br>
                                <input type="radio" name="source_of_product" wire:model="source_of_product"
                                    value="Pre Order"> Pre Order
                                <input type="radio" name="source_of_product" wire:model="source_of_product"
                                    value="Without Pre Order"> Without Pre Order
                                @error('source_of_product')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                            <div class="form-group">
                                <label for="vehicle_type">Vehicle Type <sup class="text-danger">*</sup></label>
                                <br>
                                <input type="radio" name="vehicle_type" wire:model="vehicle_type" value="Passenger">
                                Passenger
                                <input type="radio" name="vehicle_type" wire:model="vehicle_type" value="Commercial">
                                Commercial
                                <input type="radio" name="vehicle_type" wire:model="vehicle_type" value="Bike">
                                Bike
                                @error('vehicle_type')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                            <div class="form-group">
                                <label for="vehicle_condition">Vehicle Condition <sup
                                        class="text-danger">*</sup></label>
                                <br>
                                @if ($vehicle_type != 'Bike')
                                    <input type="radio" name="vehicle_condition" wire:model="vehicle_condition"
                                        value="Recondition">
                                    Recondition
                                @endif
                                <input type="radio" name="vehicle_condition" wire:model="vehicle_condition"
                                    value="Brand New"> Brand
                                New
                                @error('vehicle_condition')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>
                        @if ($pre_order_show == true)
                            <div class="col-md-12">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h5>Select A Pre Order</h5>
                                    </div>
                                    <div class="panel">
                                        <table class="table table-bordered">
                                            <thead>
                                                <tr>
                                                    <th>Order Date</th>
                                                    <th>Vehicle</th>
                                                    <th>Customer</th>
                                                    <th>Expected Delivery Date</th>
                                                    <th>Budget</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @forelse($pre_orders as $pre_order)
                                                    <tr>
                                                        <td>{{ $pre_order->order_date }}</td>
                                                        <td>{{ $pre_order->product->product_category ?? '' }}({{ $pre_order->product->manufacture->name ?? '' }},
                                                            {{ $pre_order->product->body_type->name ?? '' }},
                                                            {{ $pre_order->product->vehicle_model->name ?? '' }},
                                                            {{ $pre_order->product->model_origin->model ?? '' }},
                                                            {{ $pre_order->product->chassis_code->name ?? '' }})</td>
                                                        <td>{{ $pre_order->customer->name }}</td>
                                                        <td>{{ $pre_order->expected_delivery_date }}</td>
                                                        <td>{{ $pre_order->budget }}</td>
                                                        <td><input type="radio" name="pre_order_id"
                                                                wire:model="pre_order_id" value="{{ $pre_order->id }}">
                                                        </td>
                                                    </tr>
                                                @empty

                                                    <tr>

                                                    </tr>
                                                @endforelse
                                            </tbody>
                                        </table>
                                    </div>
                                </div>

                            </div>
                        @else
                            <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
                                <div class="form-group">
                                    <label for="vehicle_id">Vehicle <sup class="text-danger">*</sup></label>
                                    <select wire:model="vehicle_id" id="vehicle_id" class="form-control" required>
                                        <option value="">--Select Vehicle--</option>
                                        @foreach ($products as $product)
                                            <option value="{{ $product->id }}">
                                                {{ $product->product_category ?? '' }}({{ $product->manufacture->name ?? '' }},
                                                {{ $product->body_type->name ?? '' }},
                                                {{ $product->vehicle_model->name ?? '' }},
                                                {{ $product->model_origin->model ?? '' }},
                                                {{ $product->chassis_code->name ?? '' }})</option>
                                        @endforeach
                                    </select>
                                    @error('vehicle_id')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                                <div class="form-group">
                                    <label for="packge_trim_id">Package/Trim <a class="btn btn-success btn-sm"
                                            wire:click.prevent="addPackageTrim" href="#"><i
                                                class="fas fa-plus"></i></a></label>
                                    <select wire:model.defer="packge_trim_id" id="packge_trim_id"
                                        class="form-control">
                                        <option value="">--Select Package--</option>
                                        @foreach ($packages as $package)
                                            <option value="{{ $package->id }}">
                                                {{ $package->name }}</option>
                                        @endforeach
                                    </select>
                                    @error('packge_trim_id')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                                <div class="form-group">
                                    <label for="chassis_id">
                                        @if ($vehicle_condition == 'Used')
                                            <input type="radio" style="height:10px"
                                                wire:model.defer="tracking_field_name" value="chassis_no">
                                        @endif
                                        Vin/Chassis No
                                        <sup class="text-danger">*</sup>
                                    </label>
                                    <input type="text" required wire:model.defer="chassis_id" class="form-control"
                                        placeholder="Vin/Chassis No">
                                    @error('chassis_id')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                                <div class="form-group">
                                    <label for="engine_id">Engine No</label>
                                    <input type="text" wire:model.defer="engine_id" class="form-control"
                                        placeholder="Engine No">
                                    @error('engine_id')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                                <div class="form-group">
                                    <label for="year_of_manufacture">Year Of Manufacture <sup
                                            class="text-danger">*</sup></label>
                                    <select wire:model.defer="year_of_manufacture" id="year_of_manufacture"
                                        class="form-control" required>
                                        <option value="">--Select Year--</option>
                                        @foreach ($year_of_manufactures as $year_of_manufacture)
                                            <option value="{{ $year_of_manufacture }}">{{ $year_of_manufacture }}
                                            </option>
                                        @endforeach
                                    </select>
                                    @error('year_of_manufacture')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                                <div class="form-group">
                                    <label for="exterior_color_id">Exterior Color <a class="btn btn-success btn-sm"
                                            href="#" wire:click.prevent="addExteriorColor"><i
                                                class="fas fa-plus"></i></a></label>
                                    <select wire:model.defer="exterior_color_id" id="exterior_color_id"
                                        class="form-control">
                                        <option value="">--Select Color--</option>
                                        @foreach ($exterior_colors as $exterior_color)
                                            <option value="{{ $exterior_color->id }}">
                                                {{ $exterior_color->color }}</option>
                                        @endforeach
                                    </select>
                                    @error('exterior_color_id')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                            @if ($vehicle_type == 'Passenger')
                                <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                                    <div class="form-group">
                                        <label for="interior_color_id">Interior Color <a
                                                class="btn btn-success btn-sm" href="#"
                                                wire:click.prevent="addInteriorColor"><i
                                                    class="fas fa-plus"></i></a></label>
                                        <select wire:model.defer="interior_color_id" id="interior_color_id"
                                            class="form-control">
                                            <option value="">--Select Color--</option>
                                            @foreach ($interior_colors as $interior_color)
                                                <option value="{{ $interior_color->id }}">
                                                    {{ $interior_color->color }}</option>
                                            @endforeach
                                        </select>
                                        @error('interior_color_id')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                </div>
                            @endif
                            @if ($vehicle_type == 'Passenger' && $vehicle_condition == 'Used')
                                <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                                    <div class="form-group">
                                        <label for="interior_color_id">Interior Color <a
                                                class="btn btn-success btn-sm" href="#"><i
                                                    class="fas fa-plus"></i></a></label>
                                        <select wire:model.defer="interior_color_id" id="interior_color_id"
                                            class="form-control">
                                            <option value="">--Select Color--</option>
                                            @foreach ($interior_colors as $interior_color)
                                                <option value="{{ $interior_color->id }}">
                                                    {{ $interior_color->color }}</option>
                                            @endforeach
                                        </select>
                                        @error('interior_color_id')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                </div>
                            @endif
                            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                                <div class="form-group">
                                    <label for="millage">Millage</label>
                                    <input type="text" wire:model.defer="millage" class="form-control"
                                        placeholder="Millage">
                                    @error('millage')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                            @if ($vehicle_condition == 'Recondition')
                                <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                                    <div class="form-group">
                                        <label for="action_grade">Auction Grade</label>
                                        <input type="text" wire:model.defer="action_grade" class="form-control"
                                            placeholder="Auction Grade">
                                        @error('action_grade')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                </div>
                            @endif
                            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                                <div class="form-group">
                                    <label for="seating_capacity">Seating Capacity</label>
                                    <select wire:model.defer="seating_capacity" id="seating_capacity"
                                        class="form-control">
                                        <option value="">--Select Year--</option>
                                        @foreach ($seating_capacities as $item)
                                            <option value="{{ $item }}">{{ $item }}</option>
                                        @endforeach
                                    </select>
                                    @error('seating_capacity')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                                <div class="form-group">
                                    <label for="tyre_size_id">Tyre Size <a class="btn btn-success btn-sm"
                                            href="#" wire:click.prevent="addTyreSize"><i
                                                class="fas fa-plus"></i></a></label>
                                    <select wire:model.defer="tyre_size_id" id="tyre_size_id" class="form-control">
                                        <option value="">--Select Tyre Size--</option>
                                        @foreach ($tyre_sizes as $tyre_size)
                                            <option value="{{ $tyre_size->id }}">{{ $tyre_size->size }}</option>
                                        @endforeach
                                    </select>
                                    @error('tyre_size_id')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                                <div class="form-group">
                                    <label for="tracking_code">Tracking Code</label>
                                    <input type="text" wire:model.defer="tracking_code" class="form-control"
                                        placeholder="Tracking Code">
                                    @error('tracking_code')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                                <div class="form-group">
                                    <label for="vehicle_image">Vehicle Image</label>
                                    <input type="file" wire:model="vehicle_image" class="form-control">
                                    @error('vehicle_image')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                <div class="form-grou">
                                    <label for="vehicle_description">Vehicle Description</label>
                                    <textarea wire:model.defer="vehicle_description" id="vehicle_description" class="form-control" cols="30"
                                        rows="3"></textarea>
                                    @error('vehicle_description')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                        @endif
                    </div>
                    @if ($pre_order_show != true)
                        <div class="row">
                            <div class="col-md-12">
                                <h5 style="margin-top:5px;">Pricing Infomation</h5>
                            </div>
                            <div class="col-md-4 col-lg-4 col-xs-12 col-sm-12">
                                <input type="number" class="form-control mb-5" placeholder="Vehicle Price"
                                    wire:model.debounce.500ms="vehicle_price" required>
                                <div class="row" style="margin-bottom:10px">
                                    <div class="col-md-10">

                                        @for ($i = 0; $i < $count; $i++)
                                            <div class="row" style="margin-bottom:10px">
                                                <div class="col-md-5 pr-0">
                                                    <select wire:model="cost_type.{{ $i }}" id=""
                                                        class="form-control">
                                                        <option value="">Select Cost</option>
                                                        <option value="Duty">Duty</option>
                                                        <option value="C&F Bill">C&F Bill</option>
                                                        <option value="Wharf Rent">Wharf Rent</option>
                                                    </select>
                                                </div>
                                                <div class="col-md-5 pr-0">
                                                    <input type="number"
                                                        wire:model.debounce.500ms="amount.{{ $i }}"
                                                        class="form-control" placeholder="Amount">
                                                </div>
                                                @if ($i != 0)
                                                    <div class="col-md-2 pr-0"><button
                                                            wire:click.prevent="removeRow({{ $i }})"
                                                            class="btn btn-danger btn-sm"><i
                                                                class="fas fa-times fa-xs"></i></button></div>
                                                @endif
                                            </div>
                                        @endfor
                                    </div>
                                    <div class="col-md-2">
                                        <button wire:click.prevent="addRow" class="btn btn-success">Add</button>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-8 col-lg-8 col-xs-12 col-sm-12">
                                <div class="row" style="padding-left:10px;">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="">Vehicle Price</label>
                                            <input type="number" wire:model="vehicle_price" class="form-control"
                                                disabled>
                                            @error('vehicle_price')
                                                <span class="text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="total_estimated_cost">Total Extimated Cost</label>
                                            <input type="number" wire:model="total_estimated_cost"
                                                class="form-control" disabled>
                                            @error('total_estimated_cost')
                                                <span class="text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="total_cost">Total Cost</label>
                                            <input type="number" wire:model="total_cost" class="form-control"
                                                disabled>
                                            @error('total_cost')
                                                <span class="text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="col-md-4"></div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="margin">Margin</label>
                                            <input type="number" wire:model.debounce.500ms="margin"
                                                class="form-control">
                                            @error('margin')
                                                <span class="text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="sale_price" style="display: block">Retail Price <button
                                                    class="btn btn-sm btn-primary pull-right" type="button"
                                                    data-toggle="modal" data-target="#myModal">Note</button></label>
                                            <input type="number" wire:model.debounce.500ms="sale_price"
                                                class="form-control" required>
                                            @error('sale_price')
                                                <span class="text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="col-md-4"></div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="wholesale_discount">Wholesale Discount</label>
                                            <input type="number" wire:model.debounce.500ms="wholesale_discount"
                                                class="form-control">
                                            @error('wholesale_discount')
                                                <span class="text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="wholesale_price">Wholesale Price</label>
                                            <input type="number" wire:model="wholesale_price" class="form-control"
                                                disabled>
                                            @error('wholesale_price')
                                                <span class="text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                                    </div>
                                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                        <div class="form-group">
                                            <label for="vehicle_location_id">Vehicle Location</label>
                                            <br>
                                            <input type="radio" wire:model="vehicle_location_type" value="port"
                                                required>Port
                                            <input type="radio" wire:model="vehicle_location_type" value="showroom"
                                                required>Showroom
                                            <input type="radio" wire:model="vehicle_location_type" value="others"
                                                required>Others
                                        </div>
                                        <div class="form-group">
                                            @if ($vehicle_location_type == 'port')
                                                <div class="input-group">
                                                    <select wire:model.defer="vehicle_location_id"
                                                        id="vehicle_location_id" class="form-control" required>
                                                        <option value="">--Select Location--</option>
                                                        <option value="1">Location 1</option>
                                                        <option value="2">Location 2</option>
                                                    </select>
                                                    <a style="background-color:green; color:#fff;"
                                                        class="btn btn-success input-group-addon" href="#"><i
                                                            class="fas fa-plus"></i></a>
                                                </div>

                                                @error('vehicle_location_id')
                                                    <span class="text-danger">{{ $message }}</span>
                                                @enderror
                                            @else
                                                <input type="text" class="form-control"
                                                    wire:model.defer="vehicle_location_name"
                                                    placeholder="Enter Vehicle Location">
                                            @endif
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-success">Add</button>
                        <button type="reset" class="btn btn-success float-end">Cancel</button>
                    @endif
                    <div wire:ignore.self class="modal fade" id="myModal" role="dialog" aria-labelledby="model-8"
                        aria-hidden="true">
                        <div class="modal-dialog" role="document">

                            <!-- Modal Content -->
                            <div class="modal-content">

                                <!-- Modal Header -->
                                <div class="modal-header">
                                    <h5 class="modal-title" id="model-8">Retail Price Note<button type="button"
                                            class="close pull-right" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">×</span>
                                        </button></h5>

                                </div>
                                <!-- /modal header -->

                                <!-- Modal Body -->
                                <div class="modal-body">
                                    <div class="form-group">
                                        <textarea wire:model.defer="sale_price_note" class="form-control" cols="30" rows=5"></textarea>
                                    </div>

                                </div>
                                <!-- Modal Footer -->
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-success btn-sm"
                                        data-dismiss="modal">Close</button>
                                </div>
                                <!-- /modal footer -->
                            </div>
                            <!-- /modal content -->

                        </div>
                    </div>
            </form>
        </div>
    </div>
    <div wire:ignore.self class="modal fade" id="pre-order-modal" role="dialog" aria-labelledby="model-8"
        aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">

            <!-- Modal Content -->
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h3 class="modal-title" id="model-8">Select Pre Order</h3>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <!-- /modal header -->

                <!-- Modal Body -->
                <div class="modal-body">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Order Date</th>
                                <th>Vehicle</th>
                                <th>Customer</th>
                                <th>Expected Delivery Date</th>
                                <th>Budget</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @forelse($pre_orders as $pre_order)
                                <tr>
                                    <td>{{ $pre_order->order_date }}</td>
                                    <td>{{ $pre_order->product->product_category ?? '' }}({{ $pre_order->product->manufacture->name ?? '' }},
                                        {{ $pre_order->product->body_type->name ?? '' }},
                                        {{ $pre_order->product->vehicle_model->name ?? '' }},
                                        {{ $pre_order->product->model_origin->model ?? '' }},
                                        {{ $pre_order->product->chassis_code->name ?? '' }})</td>
                                    <td>{{ $pre_order->customer->username }}</td>
                                    <td>{{ $pre_order->expected_delivery_date }}</td>
                                    <td>{{ $pre_order->budget }}</td>
                                    <td><input type="radio" name="pre_order_id" wire:model="pre_order_id"
                                            value="{{ $pre_order->id }}"></td>
                                </tr>
                            @empty

                                <tr>

                                </tr>
                            @endforelse
                        </tbody>
                    </table>
                </div>
                <!-- Modal Footer -->
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary btn-sm" data-dismiss="modal">Close</button>
                </div>
                <!-- /modal footer -->

            </div>
            <!-- /modal content -->

        </div>
    </div>
    <div wire:ignore.self class="modal fade" id="package-trim-modal" role="dialog" aria-labelledby="model-8"
        aria-hidden="true">
        <div class="modal-dialog" role="document">

            <!-- Modal Content -->
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h3 class="modal-title" id="model-8">Package/Trim/Variant</h3>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <!-- /modal header -->

                <!-- Modal Body -->
                <form wire:submit.prevent="storePackageTrim" enctype="multipart/form-data">
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="name">Package/Trim/Variant<sup class="text-danger">*</sup></label>
                            <input type="text" wire:model.defer="name" class="form-control" required>
                            @error($name)
                                <p class="text-danger">{{ $message }}</p>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label for="vehicle_manufacture_id">Vehicle Manufacture<sup
                                    class="text-danger">*</sup></label>
                            <select wire:model="vehicle_manufacture_id" id="vehicle_manufacture_id"
                                class="form-control" required>
                                <option value="">--Select One--</option>
                                @foreach ($vehicle_manufactures as $manfacture)
                                    <option value="{{ $manfacture->id }}">{{ $manfacture->name }}</option>
                                @endforeach
                            </select>
                            @error($vehicle_manufacture_id)
                                <p class="text-danger">{{ $message }}</p>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label for="vehicle_model_id">Vehicle Model<sup class="text-danger">*</sup></label>
                            <select wire:model.defer="vehicle_model_id" id="vehicle_model_id" class="form-control"
                                required>
                                <option value="">--Select One--</option>
                                @foreach ($models as $model)
                                    <option value="{{ $model->id }}">{{ $model->name }}</option>
                                @endforeach
                            </select>
                            @error($vehicle_model_id)
                                <p class="text-danger">{{ $message }}</p>
                            @enderror
                        </div>

                    </div>
                    <!-- Modal Footer -->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary btn-sm" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-secondary btn-sm">Submit</button>
                    </div>
                    <!-- /modal footer -->
                </form>
            </div>
            <!-- /modal content -->

        </div>
    </div>
    <div wire:ignore.self class="modal fade" id="exterior-color-modal" role="dialog" aria-labelledby="model-8"
        aria-hidden="true">
        <div class="modal-dialog" role="document">

            <!-- Modal Content -->
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h3 class="modal-title" id="model-8">Exterior Color</h3>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <!-- /modal header -->

                <!-- Modal Body -->
                <form wire:submit.prevent="storeExteriorColor" enctype="multipart/form-data">
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="color">Color<sup class="text-danger">*</sup></label>
                            <input type="text" wire:model.defer="color" class="form-control">
                            @error('color')
                                <p class="text-danger">{{ $message }}</p>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label for="color_code">Color Code<sup class="text-danger">*</sup></label>
                            <input type="text" wire:model.defer="color_code" class="form-control">
                            @error('color_code')
                                <p class="text-danger">{{ $message }}</p>
                            @enderror
                        </div>

                    </div>
                    <!-- Modal Footer -->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary btn-sm" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-secondary btn-sm">Submit</button>
                    </div>
                    <!-- /modal footer -->
                </form>
            </div>
            <!-- /modal content -->

        </div>
    </div>
    <div wire:ignore.self class="modal fade" id="interior-color-modal" role="dialog" aria-labelledby="model-8"
        aria-hidden="true">
        <div class="modal-dialog" role="document">

            <!-- Modal Content -->
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h3 class="modal-title" id="model-8">Interior Color</h3>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <!-- /modal header -->

                <!-- Modal Body -->
                <form wire:submit.prevent="storeInteriorColor" enctype="multipart/form-data">
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="color">Color<sup class="text-danger">*</sup></label>
                            <input type="text" wire:model.defer="color" class="form-control">
                            @error('color')
                                <p class="text-danger">{{ $message }}</p>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label for="color_code">Color Code<sup class="text-danger">*</sup></label>
                            <input type="text" wire:model.defer="color_code" class="form-control">
                            @error('color_code')
                                <p class="text-danger">{{ $message }}</p>
                            @enderror
                        </div>

                    </div>
                    <!-- Modal Footer -->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary btn-sm" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-secondary btn-sm">Submit</button>
                    </div>
                    <!-- /modal footer -->
                </form>
            </div>
            <!-- /modal content -->

        </div>
    </div>
    <div wire:ignore.self class="modal fade" id="tyre-size-modal" role="dialog" aria-labelledby="model-8"
        aria-hidden="true">
        <div class="modal-dialog" role="document">

            <!-- Modal Content -->
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h3 class="modal-title" id="model-8">Tyre Size</h3>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <!-- /modal header -->

                <!-- Modal Body -->
                <form wire:submit.prevent="storeTyreSize" enctype="multipart/form-data">
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="size">Tyre Size<sup class="text-danger">*</sup></label>
                            <input type="text" wire:model.defer="size" class="form-control">
                            @error('size')
                                <p class="text-danger">{{ $message }}</p>
                            @enderror
                        </div>

                    </div>
                    <!-- Modal Footer -->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary btn-sm" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-secondary btn-sm">Submit</button>
                    </div>
                    <!-- /modal footer -->
                </form>
            </div>
            <!-- /modal content -->

        </div>
    </div>
    <div wire:ignore.self class="modal fade" id="supplier-modal" role="dialog" aria-labelledby="model-8"
        aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">Add Supplier</h4>
                </div>
                <form wire:submit.prevent="storeSupplier">
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
            $('#supplier').select2({
                width: '100%' // need to override the changed default
            }).on('change', function() {
                @this.set('supplier', $(this).val());
            });
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
