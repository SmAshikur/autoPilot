<div class="row">
    @push('custom-css')
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
                    <div class="col-md-4">
                        <select wire:model="vehicle_manufacture_id_search" id="vehicle_manufacture_id" class="form-control"
                            required>
                            <option value="">--Select Vehicle Manufacture--</option>
                            @foreach ($manufactures as $manufacture)
                                <option value="{{ $manufacture->id }}">{{ $manufacture->name }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="col-md-4">
                        <select wire:model="vehicle_model_id_search" id="vehicle_model_id" class="form-control"
                            required>
                            <option value="">--Select Vehicle Model --</option>
                            @foreach ($vehicle_models as $vehicle_model)
                                <option value="{{ $vehicle_model->id }}">{{ $vehicle_model->name }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="col-md-4">
                        <select wire:model="chassis_id_search" id="chassis_code_search" class="form-control" required>
                            <option value="">--Select Chassis Code--</option>
                            @foreach ($chassis_codes as $chassis_code)
                                <option value="{{ $chassis_code->id }}">{{ $chassis_code->name }}
                                </option>
                            @endforeach
                        </select>
                    </div>
                </div>
            </div>
            <div class="panel-body">
                <div class="table-responsive">
                    <table class="table table-bordered">
                        <thead>
                            <th>SL</th>
                            <th>Vehicle</th>
                            <th>Manufacture</th>
                            <th>Fuel Type</th>
                            <th>Loading Capacity</th>
                            <th>Origin</th>
                            <th>Action</th>
                        </thead>
                        <tbody>
                            @php
                                $startingSerial = ($vehicles->currentPage() - 1) * $vehicles->perPage() + 1;
                            @endphp
                            @forelse ($vehicles as $item)
                                <tr>
                                    <td>{{ $startingSerial++ }}</td>
                                    <td>{{ $item->manufacture->name ?? '' }}-{{ $item->vehicle_model->name ?? '' }}
                                        ({{ $item->chassis_code->name ?? '' }},
                                        {{ $item->displacement_engine->cc ?? '' }}cc, {{ $item->transmission ?? '' }},
                                        {{ $item->drive_system ?? '' }}, {{ $item->loading_capacity ?? '' }},
                                        {{ $item->fuel_type ?? '' }})
                                    </td>
                                    <td>{{ $item->manufacture->name ?? '' }}</td>
                                    <td>{{ $item->fuel_type ?? '' }}</td>
                                    <td>{{ $item->loading_capacity ?? '' }}</td>
                                    <td>{{ $item->model_origin->model ?? '' }}</td>

                                    </td>
                                    <td>
                                        <a wire:click.prevent="edit({{ $item->id }})"
                                            class="btn btn-sm btn-warning"><i class="fas fa-edit"></i></a>
                                        <a wire:click.prevent="delete({{ $item->id }})"
                                            class="btn btn-sm btn-danger"><i class="fas fa-trash-alt"></i></a>
                                    </td>
                                </tr>
                            @empty
                                <tr>
                                    <td colspan="12" class="text-center">No data found</td>
                                </tr>
                            @endforelse

                        </tbody>
                    </table>
                </div>
            </div>
            <div class="panel-footer">
                {{ $vehicles->links() }}
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
                    <h3 class="modal-title" id="model-8">Update Commercial Vehicle Product</h3>
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
                                    <label for="vehicle_manufacture_id">Manufacture<sup
                                            class="text-danger">*</sup></label>
                                    <select wire:model="vehicle_manufacture_id" id="vehicle_manufacture_id"
                                        class="form-control" required>
                                        <option value="">--Select One--</option>
                                        @foreach ($manufactures as $manufacture)
                                            <option value="{{ $manufacture->id }}">{{ $manufacture->name }}</option>
                                        @endforeach
                                    </select>
                                    @error('vehicle_manufacture_id')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                                <div class="form-group">
                                    <label for="fuel_type">Fuel Type</label>
                                    <select wire:model="fuel_type" id="fuel_type" class="form-control">
                                        <option value="">--Select One--</option>
                                        <option value="Octane">Octane</option>
                                        <option value="Petrol">Petrol</option>
                                        <option value="Diesel">Diesel</option>
                                        <option value="Gasoline">Gasoline</option>
                                        <option value="Hybrid">Hybrid</option>
                                        <option value="Plug-in Hybrid">Plug-in Hybrid</option>
                                        <option value="Electric">Electric</option>
                                        <option value="Hydorgen">Hydorgen</option>
                                        <option value="Leaded Gasoline">Leaded Gasoline</option>
                                        <option value="Unleaded Gasoline">Unleaded Gasoline</option>
                                        <option value="Biodiesel">Biodiesel</option>
                                        <option value="E85">E85</option>
                                        <option value="Propane">Propane</option>
                                        <option value="Ethanol">Ethanol</option>
                                        <option value="CNG">CNG</option>
                                        <option value="LPG">LPG</option>
                                    </select>
                                    @error('fuel_type')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                                <div class="form-group">
                                    <label for="loading_capacity">Loading Capacity</label>
                                    <input type="text" wire:model.defer="loading_capacity" class="form-control">
                                    @error('loading_capacity')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                                <div class="form-group">
                                    <label for="vehicle_model_id">Model <sup class="text-danger">*</sup></label>
                                    <select wire:model="vehicle_model_id" id="vehicle_model_id" class="form-control"
                                        required>
                                        <option value="">--Select One--</option>
                                        @foreach ($vehicle_models as $vehicle_model)
                                            <option value="{{ $vehicle_model->id }}">{{ $vehicle_model->name }}
                                            </option>
                                        @endforeach
                                    </select>
                                    @error('vehicle_model_id')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                                <div class="form-group">
                                    <label for="displacement_engine_cc_id">Engine Cc</label>
                                    <select wire:model="displacement_engine_cc_id" id="displacement_engine_cc_id"
                                        class="form-control">
                                        <option value="">--Select One--</option>
                                        @foreach ($displacement_engine_ccs as $displacement_engine_cc)
                                            <option value="{{ $displacement_engine_cc->id }}">
                                                {{ $displacement_engine_cc->cc }}</option>
                                        @endforeach
                                    </select>
                                    @error('displacement_engine_cc_id')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                                <div class="form-group">
                                    <label for="number_of_wheels">Number Of Wheels</label>
                                    <input type="number" wire:model.defer="number_of_wheels" class="form-control">
                                    @error('number_of_wheels')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                                <div class="form-group">
                                    <label for="chassis_code_id">Chassis Code</label>
                                    <select wire:model="chassis_code_id" id="chassis_code_id" class="form-control">
                                        <option value="">--Select One--</option>
                                        @foreach ($chassis_codes as $chassis_code)
                                            <option value="{{ $chassis_code->id }}">{{ $chassis_code->name }}
                                            </option>
                                        @endforeach
                                    </select>
                                    @error('chassis_code_id')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                                <div class="form-group">
                                    <label for="transmission">Transmission</label>
                                    <select wire:model="transmission" id="transmission" class="form-control">
                                        <option value="">--Select One--</option>
                                        <option value="Automatic">Automatic</option>
                                        <option value="Manual">Manual</option>
                                        <option value="Manual">Tiptronic Transmission</option>
                                    </select>
                                    @error('transmission')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                                <div class="form-group">
                                    <label for="model_origin_id">Model Origin</label>
                                    <select wire:model="model_origin_id" id="model_origin_id" class="form-control">
                                        <option value="">--Select One--</option>
                                        @foreach ($model_origins as $model_origin)
                                            <option value="{{ $model_origin->id }}">{{ $model_origin->model }}
                                            </option>
                                        @endforeach
                                    </select>
                                    @error('model_origin_id')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                                <div class="form-group">
                                    <label for="body_type_id">Body Type/Type <sup class="text-danger">*</sup></label>
                                    <select required wire:model="body_type_id" id="body_type_id"
                                        class="form-control">
                                        <option value="">--Select One--</option>
                                        @foreach ($body_types as $body_type)
                                            <option value="{{ $body_type->id }}">{{ $body_type->name }}</option>
                                        @endforeach
                                    </select>
                                    @error('body_type_id')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                                <div class="form-group">
                                    <label for="drive_system">Drive System/ Drive Train</label>
                                    <select wire:model="drive_system" id="drive_system" class="form-control">
                                        <option value="">--Select One--</option>
                                        <option value="FWD">FWD</option>
                                        <option value="RWD">RWD</option>
                                        <option value="2WD">2WD</option>
                                        <option value="4WD">4WD</option>
                                        <option value="AWD">AWD</option>
                                    </select>
                                    @error('drive_system')
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
