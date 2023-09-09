<div class="row">
    @push('custom-css')
        <style>
            .pagination {
                display: inline-flex;
            }

            .form-group {
                height: 70px !important;
            }

            .btn-sm {
                padding: 0px 3px;
            }

            .mb-5 {
                margin-bottom: 7px;
            }
        </style>
    @endpush
    @include('components.loading-indecator')
    <div class="col-md-12 col-lg-12 col-xs-12 col-sm-12">
        <div class="panel">
            <div class="panel-header" style="margin-top:5px">
                <div class="row">
                    <div class="col-md-2">
                        <div class="form-group">
                            <label for="month">Month</label>
                            <input type="month" class="form-control" wire:model="filter_month">
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <label for="year">Year</label>
                            <input type="number" class="form-control" id="year" wire:model="filter_year"
                                min="1900" max="2099" placeholder="Select Year">
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <label for="filter_supplier">Supplier</label>
                            <select wire:model="filter_supplier" id="filter_supplier" class="form-control">
                                <option value="">--Select Supplier --</option>
                                @foreach ($filter_suppliers as $filter_supplier)
                                    <option value="{{ $filter_supplier->id }}">{{ $filter_supplier->name }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="filter_condition">Condition</label>
                            <select wire:model="filter_condition" id="filter_condition" class="form-control">
                                <option value="">All</option>
                                <option value="Recondition">Recondition</option>
                                <option value="Brand New">Brand New</option>
                                <option value="Used">Used</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="filter_manufacture">Manufacture</label>
                            <select wire:model="filter_manufacture" id="filter_manufacture" class="form-control">
                                <option value="">--Select Manufacture --</option>
                                @foreach ($filter_manufactures as $filter_manu)
                                    <option value="{{ $filter_manu->id }}">{{ $filter_manu->name }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="filter_model">Model</label>
                            <select wire:model="filter_model" id="filter_model" class="form-control">
                                <option value="">--Select Model --</option>
                                @foreach ($filter_models as $filter_mode)
                                    <option value="{{ $filter_mode->id }}">{{ $filter_mode->name }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="filter_sale_status">Sale Status</label>
                            <select wire:model="filter_sale_status" id="filter_sale_status" class="form-control">
                                <option value="">All</option>
                                <option value="Unsold">Unsold</option>
                                <option value="Sold">Sold</option>
                                <option value="Booked">Booked</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="filter_payment_status">Payment Status</label>
                            <select wire:model="filter_payment_status" id="filter_payment_status" class="form-control">
                                <option value="">All</option>
                                <option value="Pending">Pending</option>
                                <option value="Approved">Approved</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label for="filter_quick_search">Quick Search</label>
                            <input type="text" class="form-control" wire:model="filter_quick_search"
                                placeholder="eg:Chassis, Reg, Condition">
                        </div>
                    </div>
                </div>
            </div>
            <div class="panel-body">
                <div class="table-responsive">
                    <table class="table table-bordered">
                        <thead>
                            <th>SL</th>
                            <th>Purchase Date</th>
                            <th>Vehicle</th>
                            <th>Vin/Chassis No</th>
                            <th>Reg No</th>
                            <th>Condition</th>
                            <th>Supplier</th>
                            <th>Purchase Price</th>
                            <th>Sale Status</th>
                            <th>Payment Status</th>
                            <th>Action</th>
                        </thead>
                        <tbody>
                            @php
                                $startingSerial = ($purchases->currentPage() - 1) * $purchases->perPage() + 1;
                            @endphp
                            @forelse ($purchases as $item)
                                <tr>
                                    <td>{{ $startingSerial++ }}</td>
                                    <td>{{ $item->purchase_date }}</td>
                                    <td>{{ $item->vehicle->product_category ?? '' }}({{ $item->vehicle->manufacture->name ?? '' }},
                                        {{ $item->vehicle->body_type->name ?? '' }},
                                        {{ $item->vehicle->vehicle_model->name ?? '' }},
                                        {{ $item->vehicle->model_origin->model ?? '' }},
                                        {{ $product->chassis_code->name ?? '' }})</td>
                                    <td>{{ $item->chassis_id }} @if ($item->source_of_product == 'Pre Order')
                                            <i class="fas fa-check-circle"></i>
                                        @endif
                                    </td>
                                    <td>{{ $item->registration_no }}</td>
                                    <td>{{ $item->vehicle_condition }}</td>
                                    <td>{{ $item->supplier_details->name }}</td>
                                    <td>{{ $item->sale_price }}</td>
                                    <td>{{ $item->sale_status }}</td>
                                    <td>{{ $item->payment_status }}</td>
                                    <td>
                                        <a wire:click.prevent="edit({{ $item->id }})"
                                            class="btn btn-sm btn-warning"><i class="fas fa-edit"></i></a>
                                        <a wire:click.prevent="delete({{ $item->id }})"
                                            class="btn btn-sm btn-danger"><i class="fas fa-trash-alt"></i></a>
                                    </td>
                                </tr>
                            @empty
                                <tr>
                                    <td colspan="11" class="text-center">No data found</td>
                                </tr>
                            @endforelse

                        </tbody>
                    </table>
                </div>
            </div>
            <div class="panel-footer">
                {{ $purchases->links() }}
            </div>
        </div>
    </div>
    <div wire:ignore.self class="modal fade" id="update-purchase-modal" role="dialog" aria-labelledby="model-8"
        aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">

            <!-- Modal Content -->
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h3 class="modal-title" id="model-8">Update Local Purchase<button type="button"
                            class="close pull-right" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button></h3>

                </div>
                <!-- /modal header -->

                <!-- Modal Body -->
                <form wire:submit.prevent="update" enctype="multipart/form-data">
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                                <div class="form-group">
                                    <label for="purchase_date">Purchase Date <sup class="text-danger">*</sup></label>
                                    <input type="date" required wire:model.defer="purchase_date"
                                        class="form-control">
                                    @error('purchase_date')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                                <div class="form-group">
                                    <label for="purchase_form">Purchase Form <sup class="text-danger">*</sup></label>
                                    <br>
                                    <input type="radio" name="purchase_form" wire:model="purchase_form"
                                        value="Supplier">
                                    Supplier
                                    <input type="radio" name="purchase_form" wire:model="purchase_form"
                                        value="Customer(Part Exchange)"> Customer(Part Exchange)
                                    @error('purchase_form')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                            @if ($purchase_form == 'Supplier')
                                <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                                    <div class="form-group">
                                        <label for="supplier">Supplier <sup class="text-danger">*</sup>
                                        </label>
                                        <div class="input-group">
                                            <select wire:model.defer="supplier" id="supplier" class="form-control"
                                                required>
                                                <option value="">--Select Supplier--</option>
                                                @foreach ($suppliers as $supplier)
                                                    <option value="{{ $supplier->id }}">{{ $supplier->name }}
                                                    </option>
                                                @endforeach
                                            </select>
                                            <a href="#" wire:click.prevent="addSupplier"
                                                style="background-color:green; color:white"
                                                class="input-group-addon cursor-pointer bg-success"
                                                id="basic-addon1"><i class="fas fa-plus"></i></a>
                                        </div>
                                        @error('supplier')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                </div>
                            @endif
                            @if ($purchase_form == 'Customer(Part Exchange)')
                                <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                                    <div class="form-group">
                                        <label for="customer">Customer <sup class="text-danger">*</sup>
                                        </label>
                                        <div class="input-group">
                                            <select wire:model.defer="customer" id="customer" class="form-control"
                                                required>
                                                <option value="">--Select customer--</option>
                                                @foreach ($customers as $customer)
                                                    <option value="{{ $customer->id }}">{{ $customer->name }}
                                                    </option>
                                                @endforeach
                                            </select>
                                            <a href="#" wire:click.prevent="addCustomer"
                                                style="background-color:green; color:white"
                                                class="input-group-addon cursor-pointer bg-success"
                                                id="basic-addon3"><i class="fas fa-plus"></i></a>
                                        </div>
                                        @error('customer')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                </div>
                            @endif
                            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                                <div class="form-group">
                                    <label for="invoice_number">Invoice Number <sup
                                            class="text-danger">*</sup></label>
                                    <div class="input-group">
                                        <input type="text" wire:model.defer="invoice_number" class="form-control"
                                            placeholder="Invoice Number" aria-describedby="basic-addon2">
                                        <span class="input-group-addon cursor-pointer" id="basic-addon2"
                                            wire:click.prevent="generateInvoiceNumber"><i
                                                class="fas fa-file-invoice"></i></span>
                                    </div>
                                    @error('invoice_number')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                                <div class="form-group">
                                    <label for="purchase_mode">Purchase Mode <sup class="text-danger">*</sup></label>
                                    <br>
                                    <input type="radio" name="purchase_mode" wire:model.defer="purchase_mode"
                                        value="Purchase"> Purchase
                                    <input type="radio" name="purchase_mode" wire:model.defer="purchase_mode"
                                        value="Document Only"> Document
                                    Only
                                    <input type="radio" name="purchase_mode" wire:model.defer="purchase_mode"
                                        value="Number Only"> Number Only
                                    @error('purchase_mode')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                                <div class="form-group">
                                    <label for="remarks">Remarks</label>
                                    <input type="text" wire:model.defer="remarks" class="form-control"
                                        placeholder="Remarks">
                                    @error('remarks')
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
                                    <input type="radio" name="vehicle_type" wire:model="vehicle_type"
                                        value="Passenger">
                                    Passenger
                                    <input type="radio" name="vehicle_type" wire:model="vehicle_type"
                                        value="Commercial"> Commercial
                                    <input type="radio" name="vehicle_type" wire:model="vehicle_type"
                                        value="Bike">
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
                                    <input type="radio" name="vehicle_condition" wire:model="vehicle_condition"
                                        value="Used"> Used
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
                                                                {{ $pre_order->product->chassis_code->name ?? '' }})
                                                            </td>
                                                            <td>{{ $pre_order->customer->name }}</td>
                                                            <td>{{ $pre_order->expected_delivery_date }}</td>
                                                            <td>{{ $pre_order->budget }}</td>
                                                            <td><input type="radio" name="pre_order_id"
                                                                    wire:model="pre_order_id"
                                                                    value="{{ $pre_order->id }}"></td>
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
                                        <select wire:model="vehicle_id" id="vehicle_id" class="form-control"
                                            required>
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
                                        <input type="text" required wire:model.defer="chassis_id"
                                            class="form-control" placeholder="Vin/Chassis No">
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
                                @if ($vehicle_condition == 'Used')
                                    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                                        <div class="form-group">
                                            <label for="registration_no"><input type="radio" style="height:10px"
                                                    wire:model.defer="tracking_field_name" value="registration_no">
                                                Registration No</label>
                                            <input type="text" wire:model.defer="registration_no"
                                                class="form-control" placeholder="Registration No">
                                            @error('registration_no')
                                                <span class="text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                                        <div class="form-group">
                                            <label for="registration_year">Registration Year</label>
                                            <select wire:model.defer="registration_year" id="registration_year"
                                                class="form-control">
                                                <option value="">--Select Year--</option>
                                                <option value="2015">2009</option>
                                                <option value="2015">2010</option>
                                                <option value="2015">2011</option>
                                                <option value="2015">2012</option>
                                                <option value="2015">2013</option>
                                                <option value="2015">2014</option>
                                                <option value="2015">2015</option>
                                                <option value="2016">2016</option>
                                                <option value="2017">2017</option>
                                                <option value="2018">2018</option>
                                                <option value="2019">2019</option>
                                                <option value="2020">2020</option>
                                                <option value="2021">2021</option>
                                                <option value="2022">2022</option>
                                                <option value="2023">2023</option>
                                                <option value="2024">2024</option>
                                                <option value="2025">2025</option>
                                                <option value="2026">2026</option>
                                                <option value="2027">2027</option>
                                                <option value="2028">2028</option>
                                                <option value="2029">2029</option>
                                                <option value="2030">2030</option>
                                            </select>
                                            @error('registration_year')
                                                <span class="text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>
                                    </div>
                                @endif
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
                                        <label for="exterior_color_id">Exterior Color <a
                                                class="btn btn-success btn-sm" href="#"
                                                wire:click.prevent="addExteriorColor"><i
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
                                            <input type="text" wire:model.defer="action_grade"
                                                class="form-control" placeholder="Auction Grade">
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
                                        <select wire:model.defer="tyre_size_id" id="tyre_size_id"
                                            class="form-control">
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
                                                        <select wire:model="cost_type.{{ $i }}"
                                                            id="" class="form-control">
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
                                                        data-toggle="modal"
                                                        data-target="#myModal">Note</button></label>
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
                                                <input type="number" wire:model="wholesale_price"
                                                    class="form-control" disabled>
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
                                                <input type="radio" wire:model="vehicle_location_type"
                                                    value="port" required>Port
                                                <input type="radio" wire:model="vehicle_location_type"
                                                    value="showroom" required>Showroom
                                                <input type="radio" wire:model="vehicle_location_type"
                                                    value="others" required>Others
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
                                                            class="btn btn-success input-group-addon"
                                                            href="#"><i class="fas fa-plus"></i></a>
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
                        <div wire:ignore.self class="modal fade" id="myModal" role="dialog"
                            aria-labelledby="model-8" aria-hidden="true">
                            <div class="modal-dialog" role="document">

                                <!-- Modal Content -->
                                <div class="modal-content">

                                    <!-- Modal Header -->
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="model-8">Retail Price Note<button
                                                type="button" class="close pull-right" data-dismiss="modal"
                                                aria-label="Close">
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
                    </div>
                    <!-- Modal Footer -->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary btn-sm" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary btn-sm">Update</button>
                    </div>
                </form>
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
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
        $(function() {
            $("#year").datepicker({
                dateFormat: "yy",
                changeYear: true,
                showButtonPanel: true,
                yearRange: "1900:2099",
                onSelect: function(dateText) {
                    @this.set('filter_year', dateText);
                }
            });
            $("#month").datepicker({
                dateFormat: "yy",
                changeYear: true,
                showButtonPanel: true,
                yearRange: "1900:2099",
                onSelect: function(dateText) {
                    @this.set('filter_month', dateText);
                }
            });
        });
    </script>
@endpush
