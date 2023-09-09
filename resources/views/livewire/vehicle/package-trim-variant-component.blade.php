<div class="row">
    @push('custom-css')
        <style>
            .pagination {
                display: inline-flex;
            }
        </style>
    @endpush
    @include('components.loading-indecator')
    <div class="col-md-6 col-lg-6 col-xs-12 col-sm-12">
        <div class="panel panel-default p-10">
            <div class="panel-header">
                <h4>Add Package Trim Variant</h4>
            </div>
            <div class="panel-body">
                <form wire:submit.prevent="submit" enctype="multipart/form-data">
                    <div class="form-group">
                        <label for="name">Package/Trim/Variant<sup class="text-danger">*</sup></label>
                        <input type="text" wire:model.defer="name" class="form-control">
                        @error($name)
                            <p class="text-danger">{{ $message }}</p>
                        @enderror
                    </div>
                    <div class="form-group">
                        <label for="vehicle_manufacture_id">Vehicle Manufacture<sup class="text-danger">*</sup></label>
                        <select wire:model="vehicle_manufacture_id" id="vehicle_manufacture_id" class="form-control">
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
                        <select wire:model.defer="vehicle_model_id" id="vehicle_model_id" class="form-control">
                            <option value="">--Select One--</option>
                            @foreach ($models as $model)
                                <option value="{{ $model->id }}">{{ $model->name }}</option>
                            @endforeach
                        </select>
                        @error($vehicle_model_id)
                            <p class="text-danger">{{ $message }}</p>
                        @enderror
                    </div>
                    <button type="submit" class="btn btn-success">Save</button>
                    <button type="reset" class="btn btn-success float-end">Cancel</button>
                </form>
            </div>
        </div>
    </div>
    <div class="col-md-6 col-lg-6 col-xs-12 col-sm-12">
        <div class="panel panel-default p-10">
            <div class="panel-header">
                <div class="flex-container">
                    <h4 class="flex-item">List Of Package Trim Variant</h4>
                    <input type="text" wire:model.debounce.500ms="search" class="form-control w-50 flex-item"
                        placeholder="Search here...">
                </div>
            </div>
            <div class="panel-body">
                <div class="table-responsive">
                    <table class="table table-bordered">
                        <thead>
                            <th>SL</th>
                            <th>Package/Trim/Variant</th>
                            <th>Manufacture</th>
                            <th>Model</th>
                            <th>Action</th>
                        </thead>
                        <tbody>
                            @php
                                $startingSerial = ($variants->currentPage() - 1) * $variants->perPage() + 1;
                            @endphp
                            @forelse ($variants as $variant)
                                <tr>
                                    <td>{{ $startingSerial++ }}</td>
                                    <td>{{ $variant->name }}</td>
                                    <td>{{ $variant->manufacture->name }}</td>
                                    <td>{{ $variant->model->name }}</td>
                                    <td>
                                        <a wire:click.prevent="edit({{ $variant->id }})"
                                            class="btn btn-sm btn-warning"><i class="fas fa-edit"></i></a>
                                        <a wire:click.prevent="delete({{ $variant->id }})"
                                            class="btn btn-sm btn-danger"><i class="fas fa-trash-alt"></i></a>
                                    </td>
                                </tr>
                            @empty
                                <tr>
                                    <td colspan="5" class="text-center">No data found</td>
                                </tr>
                            @endforelse

                        </tbody>
                    </table>
                </div>
            </div>
            <div class="panel-footer">
                {{ $variants->links() }}
            </div>
        </div>
    </div>
    <div wire:ignore.self class="modal fade" id="update-modal" role="dialog" aria-labelledby="model-8"
        aria-hidden="true">
        <div class="modal-dialog" role="document">

            <!-- Modal Content -->
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h3 class="modal-title" id="model-8">Update Package Trim Variant</h3>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <!-- /modal header -->

                <!-- Modal Body -->
                <form wire:submit.prevent="update" enctype="multipart/form-data">
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="name">Package/Trim/Variant<sup class="text-danger">*</sup></label>
                            <input type="text" wire:model.defer="name" class="form-control">
                            @error($name)
                                <p class="text-danger">{{ $message }}</p>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label for="vehicle_manufacture_id">Vehicle Manufacture<sup
                                    class="text-danger">*</sup></label>
                            <select wire:model="vehicle_manufacture_id" id="vehicle_manufacture_id"
                                class="form-control">
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
                            <select wire:model.defer="vehicle_model_id" id="vehicle_model_id" class="form-control">
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
                        <button type="submit" class="btn btn-primary btn-sm">Update</button>
                    </div>
                </form>
                <!-- /modal footer -->

            </div>
            <!-- /modal content -->

        </div>
    </div>
</div>
