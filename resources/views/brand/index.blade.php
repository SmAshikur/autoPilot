@extends('layouts.app')
@section('title', 'Spare Part Brand Add')

@section('content')

<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>Spare Part Brand
        {{-- <small>@lang( 'brand.manage_your_brands' )</small> --}}
        <small>Spare Part Brand Add</small>
    </h1>
    <!-- <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
        <li class="active">Here</li>
    </ol> -->
</section>

<!-- Main content -->
<section class="content">
    @component('components.widget', ['class' => 'box-primary', 'title' => __( 'brand.all_your_brands' )])
    @can('brand.create')
    @slot('tool')
    <div class="box-tools">
        <button type="button" class="btn btn-block btn-primary btn-modal" data-href="{{action([\App\Http\Controllers\BrandController::class, 'create'])}}" data-container=".brands_modal">
            <i class="fa fa-plus"></i> @lang( 'messages.add' )</button>
    </div>
    @endslot
    @endcan
    @can('brand.view')
    <div class="table-responsive">
        <table class="table table-bordered table-striped" id="brands_table">
            <thead>
                <tr>
                    <th>@lang( 'brand.brands' )</th>
                    <th>Country</th>
                    <th>@lang( 'messages.action' )</th>
                </tr>
            </thead>
        </table>
    </div>
    @endcan
    @endcomponent

    <div class="modal fade brands_modal" tabindex="-1" role="dialog" aria-labelledby="gridSystemModalLabel">
    </div>

</section>
<!-- /.content -->

@endsection