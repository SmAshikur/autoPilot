<div class="row">
    @push('custom-css')
        <style>
            .pagination {
                display: inline-flex;
            }

            .mb-20 {
                margin-bottom: 25px !important;
            }

            .btn-sm {
                padding: 0px 3px;
            }

            .form-group {
                height: 70px;
            }
        </style>
    @endpush
    @include('components.loading-indecator')
    <div class="col-md-12 col-lg-12 col-xs-12 col-sm-12">
        <div class="panel panel-default p-10">
            <div class="panel-header">
                <h4 class="text-uppercase">{{ $header_manufacture_name }}-{{ $header_model_name }}
                    ({{ $header_chassis_name }}, {{ $header_engine_name }}, {{ $transmission }}, {{ $drive_system }},
                    {{ $fuel_type }})</h4>
            </div>
            <div class="panel-body">
                <form wire:submit.prevent="store" enctype="multipart/form-data">
                    <div class="row">
                        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                            <div class="form-group">
                                <label for="vehicle_manufacture_id">Manufacture<sup class="text-danger">*</sup> <a
                                        class="btn btn-success btn-sm" href="#"
                                        wire:click.prevent="addManufacture"><i class="fas fa-plus"></i></a></label>
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
                                <label for="vehicle_model_id">Model <sup class="text-danger">*</sup> <a
                                        class="btn btn-success btn-sm" href="#" wire:click.prevent="addModel"><i
                                            class="fas fa-plus"></i></a></label>
                                <select wire:model="vehicle_model_id" id="vehicle_model_id" class="form-control"
                                    required>
                                    <option value="">--Select One--</option>
                                    @foreach ($vehicle_models as $vehicle_model)
                                        <option value="{{ $vehicle_model->id }}">{{ $vehicle_model->name }}</option>
                                    @endforeach
                                </select>
                                @error('vehicle_model_id')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                            <div class="form-group">
                                <label for="displacement_engine_cc_id">Engine Cc <a class="btn btn-success btn-sm"
                                        href="#" wire:click.prevent="addEngine"><i
                                            class="fas fa-plus"></i></a></label>
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
                                        <option value="{{ $chassis_code->id }}">{{ $chassis_code->name }}</option>
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
                                <label for="model_origin_id">Model Origin <a class="btn btn-success btn-sm"
                                        href="#" wire:click.prevent="addModelOrigin"><i
                                            class="fas fa-plus"></i></a></label>
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
                                <select required wire:model="body_type_id" id="body_type_id" class="form-control">
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

                    <button type="submit" class="btn btn-success">Save</button>
                    <button type="reset" class="btn btn-success float-end">Cancel</button>
                </form>
            </div>
        </div>
    </div>
    {{-- Manufacture Modal --}}
    <div wire:ignore.self class="modal fade" id="manufacture-modal" role="dialog" aria-labelledby="model-8"
        aria-hidden="true">
        <div class="modal-dialog" role="document">

            <!-- Modal Content -->
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h3 class="modal-title" id="model-8">Add Manufacture</h3>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <!-- /modal header -->

                <!-- Modal Body -->
                <form wire:submit.prevent="storeManufacture" enctype="multipart/form-data">
                    <div class="modal-body">

                        <div class="form-group">
                            <label for="manufacture_name">Manufacture Name <sup class="text-danger">*</sup></label>
                            <input type="text" wire:model.defer="manufacture_name" class="form-control">
                            @error('manufacture_name')
                                <p class="text-danger">{{ $message }}</p>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label for="category">Category<sup class="text-danger">*</sup></label>
                            <select wire:model.defer="manufacture_category" id="category" class="form-control">
                                <option value="">--Select One--</option>
                                <option value="Passenger">Passenger</option>
                                <option value="Commercial">Commercial</option>
                                <option value="Bike">Bike</option>
                            </select>
                            @error('manufacture_category')
                                <p class="text-danger">{{ $message }}</p>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label for="country_id">Country Of Origin<sup class="text-danger">*</sup></label>
                            <div wire:ignore>
                                <select wire:model.defer="manufacture_country_id" id="country_id"
                                    class="form-control">
                                    <option value="">--Select One--</option>
                                    @foreach ($countries as $country)
                                        <option value="{{ $country->id }}">{{ $country->nicename }}</option>
                                    @endforeach
                                </select>
                            </div>
                            @error('manufacture_country_id')
                                <p class="text-danger">{{ $message }}</p>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label for="image">Image</label>
                            <input type="file" wire:model.defer="manufacture_image" class="form-control">
                            @if ($manufacture_image)
                                <img width="100px" class="mt-2" src="{{ $manufacture_image->temporaryUrl() }}"
                                    alt="">
                            @endif
                            @error('manufacture_image')
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
    {{-- Model Modal --}}
    <div wire:ignore.self class="modal fade" id="model-modal" role="dialog" aria-labelledby="model-8"
        aria-hidden="true">
        <div class="modal-dialog" role="document">

            <!-- Modal Content -->
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h3 class="modal-title" id="model-8">Add Model</h3>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <!-- /modal header -->

                <!-- Modal Body -->
                <form wire:submit.prevent="storeModel" enctype="multipart/form-data">
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="name">Model Name <sup class="text-danger">*</sup></label>
                            <input required type="text" wire:model.defer="model_name" class="form-control">
                            @error('name')
                                <p class="text-danger">{{ $message }}</p>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label for="category">Category<sup class="text-danger">*</sup></label>
                            <select required wire:model="model_category" id="category" class="form-control">
                                <option value="">--Select One--</option>
                                <option value="Passenger">Passenger</option>
                                <option value="Commercial">Commercial</option>
                                <option value="Bike">Bike</option>
                            </select>
                            @error('category')
                                <p class="text-danger">{{ $message }}</p>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label for="vehicle_manufacture_id">Vehicle Manufacture<sup
                                    class="text-danger">*</sup></label>
                            <select required wire:model.defer="model_vehicle_manufacture_id"
                                id="vehicle_manufacture_id" class="form-control">
                                <option value="">--Select One--</option>
                                @foreach ($model_vehicle_manufactures as $manfacture)
                                    <option value="{{ $manfacture->id }}">{{ $manfacture->name }}</option>
                                @endforeach
                            </select>
                            @error('vehicle_manufacture_id')
                                <p class="text-danger">{{ $message }}</p>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label for="image">Image</label>
                            <input type="file" wire:model.defer="model_image" class="form-control">
                            @if ($model_image)
                                <img width="100px" class="mt-2" src="{{ $image->temporaryUrl() }}"
                                    alt="">
                            @endif
                            @error('image')
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
    {{-- Chassis Modal --}}
    <div wire:ignore.self class="modal fade" id="chassis-modal" role="dialog" aria-labelledby="model-8"
        aria-hidden="true">
        <div class="modal-dialog" role="document">

            <!-- Modal Content -->
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h3 class="modal-title" id="model-8">Add Chassis Code</h3>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <!-- /modal header -->

                <!-- Modal Body -->
                <form wire:submit.prevent="storeChassis" enctype="multipart/form-data">
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="name">Code Name <sup class="text-danger">*</sup></label>
                            <input required type="text" wire:model.defer="chassis_name" class="form-control">
                            @error('name')
                                <p class="text-danger">{{ $message }}</p>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label for="category">Category<sup class="text-danger">*</sup></label>
                            <select required wire:model="chassis_category" id="category" class="form-control">
                                <option value="">--Select One--</option>
                                <option value="Passenger">Passenger</option>
                                <option value="Commercial">Commercial</option>
                                <option value="Bike">Bike</option>
                            </select>
                            @error('category')
                                <p class="text-danger">{{ $message }}</p>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label for="vehicle_manufacture_id">Vehicle Manufacture<sup
                                    class="text-danger">*</sup></label>
                            <select required wire:model.defer="chassis_vehicle_manufacture_id"
                                id="vehicle_manufacture_id" class="form-control">
                                <option value="">--Select One--</option>
                                @foreach ($chassis_vehicle_manufactures as $manfacture)
                                    <option value="{{ $manfacture->id }}">{{ $manfacture->name }}</option>
                                @endforeach
                            </select>
                            @error('vehicle_manufacture_id')
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
    {{-- Engine Modal --}}
    <div wire:ignore.self class="modal fade" id="engine-modal" role="dialog" aria-labelledby="model-8"
        aria-hidden="true">
        <div class="modal-dialog" role="document">

            <!-- Modal Content -->
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h3 class="modal-title" id="model-8">Add Engine CC</h3>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <!-- /modal header -->

                <!-- Modal Body -->
                <form wire:submit.prevent="storeEngine" enctype="multipart/form-data">
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="cc">Displacement Engine Cc<sup class="text-danger">*</sup></label>
                            <input type="text" required wire:model.defer="engine_cc" class="form-control">
                            @error('cc')
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
    {{-- Model Origin Modal --}}
    <div wire:ignore.self class="modal fade" id="model-origin-modal" role="dialog" aria-labelledby="model-8"
        aria-hidden="true">
        <div class="modal-dialog" role="document">

            <!-- Modal Content -->
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h3 class="modal-title" id="model-8">Add Model Origin</h3>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <!-- /modal header -->

                <!-- Modal Body -->
                <form wire:submit.prevent="storeModelOrigin" enctype="multipart/form-data">
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="model">Model<sup class="text-danger">*</sup></label>
                            <input type="text" required wire:model.defer="model" class="form-control">
                            @error('model')
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
</div>
