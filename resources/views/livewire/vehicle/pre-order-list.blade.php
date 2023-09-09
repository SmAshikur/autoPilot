<div class="row">
    @push('custom-css')
        <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <style>
            .pagination {
                display: inline-flex;
            }
        </style>
    @endpush
    @include('components.loading-indecator')
    <div class="col-md-12 col-lg-12 col-xs-12 col-sm-12">
        <div class="panel">
            <div class="panel-header">
                <div class="row">
                    <div class="col-md-6">
                        <div class="row">
                            <div class="col-md-4">
                                <select wire:model="vehicle_category_search" id="vehicle_category_search"
                                    class="form-control">
                                    <option value="">All</option>
                                    <option value="In-progress">In-progress</option>
                                    <option value="Finalized">Finalized</option>
                                    <option value="Cancelled">Cancelled</option>

                                </select>
                            </div>
                            <div class="col-md-4">
                                <input type="month" class="form-control" wire:model="month">
                            </div>
                            <div class="col-md-4">
                                <input type="number" class="form-control" id="year" wire:model="year"
                                    min="1900" max="2099" placeholder="Select Year">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="row">
                            <div class="col-md-6">
                                <select wire:model="recived_by_search" id="recived_by_search" class="form-control">
                                    <option value="">--Recived By --</option>
                                    @foreach ($recived_users as $recived_user)
                                        <option value="{{ $recived_user->id }}">{{ $recived_user->username }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="col-md-6">
                                <input type="text" class="form-control" placeholder="eg:Customer Name, Vehicle Name"
                                    wire:model="vehicle_name_search">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="panel-body">
                <div class="table-responsive">
                    <table class="table table-bordered">
                        <thead>
                            <th>SL</th>
                            <th>Order Date</th>
                            <th>Vehicle</th>
                            <th>Customer</th>
                            <th>Pre Order Status</th>
                            <th>Expected Delivery Date</th>
                            <th>Budget</th>
                            <th>Purchase Status</th>
                            <th>Action</th>
                        </thead>
                        <tbody>
                            @php
                                $startingSerial = ($orders->currentPage() - 1) * $orders->perPage() + 1;
                            @endphp
                            @forelse ($orders as $item)
                                <tr>
                                    <td>{{ $startingSerial++ }}</td>
                                    <td>{{ $item->order_date }}</td>
                                    <td>
                                        {{ $item->product->manufacture->name ?? '' }} -
                                        {{ $item->product->model_origin->model ?? '' }}({{ $item->product->chassis_code->name ?? '' }},
                                        {{ $item->product->displacement_engine->cc ?? '' }}cc,
                                        {{ $item->product->transmission ?? '' }},
                                        {{ $item->product->drive_system ?? '' }},
                                        {{ $item->product->fuel_type ?? '' }}
                                        )
                                    </td>
                                    <td>{{ $item->customer->name ?? 'no name' }}</td>
                                    <td>{{ $item->status }}</td>
                                    <td>{{ $item->expected_delivery_date }}</td>
                                    <td>{{ $item->budget }}</td>
                                    <td>{{ $item->purchase_status }}</td>
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
                {{ $orders->links() }}
            </div>
        </div>
    </div>
    <div wire:ignore.self class="modal fade" id="update-modal" role="dialog" aria-labelledby="model-8"
        aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">

            <!-- Modal Content -->
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h3 class="modal-title" id="model-8">Update Pre Order</h3>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <!-- /modal header -->

                <!-- Modal Body -->
                <form wire:submit.prevent="update" enctype="multipart/form-data">
                    <div class="modal-body">
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
                                    <input type="radio" wire:model="vehicle_category" class=""
                                        value="Passenger">
                                    Passenger
                                    <input type="radio" wire:model="vehicle_category" class=""
                                        value="Commercial">
                                    Commercial
                                    <input type="radio" wire:model="vehicle_category" class=""
                                        value="Bike"> Bike
                                    @error('vehicle_category')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                                <div class="form-group">
                                    <label for="product_id">Vehicle</label>
                                    <select wire:model.defer="product_id" id="product_id" class="form-control"
                                        required>
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
                                    <input type="date" class="form-control"
                                        wire:model.defer="expected_delivery_date">
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
                                    <select wire:model.defer="terms_condition" id="terms_condition"
                                        class="form-control" required>
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
                    @this.set('year', dateText);
                }
            });
            $("#month").datepicker({
                dateFormat: "yy",
                changeYear: true,
                showButtonPanel: true,
                yearRange: "1900:2099",
                onSelect: function(dateText) {
                    @this.set('month', dateText);
                }
            });
        });
    </script>
@endpush
