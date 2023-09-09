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
                <h4>Add Vehicle Manufacture</h4>
            </div>
            <div class="panel-body">
                <form wire:submit.prevent="submit" enctype="multipart/form-data">
                    <div class="form-group">
                        <label for="name">Manufacture Name <sup class="text-danger">*</sup></label>
                        <input type="text" wire:model.defer="name" class="form-control">
                        @error('name')
                            <p class="text-danger">{{ $message }}</p>
                        @enderror
                    </div>
                    <div class="form-group">
                        <label for="category">Category<sup class="text-danger">*</sup></label>
                        <select wire:model.defer="category" id="category" class="form-control">
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
                        <label for="country_id">Country Of Origin<sup class="text-danger">*</sup></label>
                        <div wire:ignore>
                            <select wire:model.defer="country_id" id="country_id" class="form-control">
                                <option value="">--Select One--</option>
                                @foreach ($countries as $country)
                                    <option value="{{ $country->id }}">{{ $country->nicename }}</option>
                                @endforeach
                            </select>
                        </div>
                        @error('country_id')
                            <p class="text-danger">{{ $message }}</p>
                        @enderror
                    </div>
                    <div class="form-group">
                        <label for="image">Image</label>
                        <input type="file" wire:model.defer="image" class="form-control">
                        @if ($image)
                            <img width="100px" class="mt-2" src="{{ $image->temporaryUrl() }}" alt="">
                        @endif
                        @error('image')
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
                    <h4 class="flex-item">List Of Vehicle Manufacture</h4>
                    <input type="text" class="form-control w-50 flex-item" wire:model.debounce.500ms="search"
                        placeholder="Search here...">
                </div>
            </div>
            <div class="panel-body">
                <div class="table-responsive">
                    <table class="table table-bordered">
                        <thead>
                            <th>SL</th>
                            <th>Vehicle Manufacture Name</th>
                            <th>Category</th>
                            <th>Country Of Origin</th>
                            <th>Image</th>
                            <th>Action</th>
                        </thead>
                        <tbody>
                            @php
                                $startingSerial = ($manufactures->currentPage() - 1) * $manufactures->perPage() + 1;
                            @endphp
                            @forelse ($manufactures as $item)
                                <tr>
                                    <td>{{ $startingSerial++ }}</td>
                                    <td>{{ $item->name }}</td>
                                    <td>{{ $item->category }}</td>
                                    <td>{{ $item->country->nicename }}</td>
                                    <td><img width="80px" src="{{ asset('storage/vehicle/' . $item->image) }}"
                                            alt="">
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
                                    <td colspan="5" class="text-center">No data found</td>
                                </tr>
                            @endforelse

                        </tbody>
                    </table>
                </div>
            </div>
            <div class="panel-footer">
                {{ $manufactures->links() }}
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
                    <h3 class="modal-title" id="model-8">Update Vehicle Manufacture</h3>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <!-- /modal header -->

                <!-- Modal Body -->
                <form wire:submit.prevent="update" enctype="multipart/form-data">
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="name">Manufacture Name <sup class="text-danger">*</sup></label>
                            <input type="text" wire:model.defer="name" class="form-control">
                            @error('name')
                                <p class="text-danger">{{ $message }}</p>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label for="category">Category<sup class="text-danger">*</sup></label>
                            <select wire:model.defer="category" id="category" class="form-control">
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
                            <label for="update_country_id">Country Of Origin<sup class="text-danger">*</sup></label>
                            <div wire:ignore>
                                <select wire:model.defer="country_id" id="update_country_id" class="form-control">
                                    <option value="">--Select One--</option>
                                    @foreach ($countries as $country)
                                        <option value="{{ $country->id }}">{{ $country->nicename }}</option>
                                    @endforeach
                                </select>
                            </div>
                            @error('country_id')
                                <p class="text-danger">{{ $message }}</p>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label for="image">Image</label>
                            <input type="file" wire:model.defer="image" class="form-control">
                            @if ($image)
                                <img width="100px" class="mt-2" src="{{ $image->temporaryUrl() }}"
                                    alt="">
                            @else
                                @if ($image_path)
                                    <img width="100px" class="mt-2"
                                        src="{{ asset('storage/vehicle/' . $image_path) }}" alt="">
                                @endif
                            @endif

                            @error('image')
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
@push('custom-js')
    <script>
        // $(document).ready(function() {
        //     $('#country_id').select2({
        //         width: '100%' // need to override the changed default
        //     }).on('change', function() {
        //         @this.set('country_id', $(this).val());
        //     });
        // });
        // $(document).ready(function() {
        //     $('#update_country_id').select2({
        //         width: '100%' // need to override the changed default
        //     }).on('change', function() {
        //         @this.set('update_country_id', $(this).val());
        //     });
        // });
    </script>
@endpush
