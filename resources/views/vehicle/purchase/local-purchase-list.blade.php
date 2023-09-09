@extends('layouts.app')
@section('title', 'Vehicle Local Purchase List')
@push('custom-css')
@endpush
@section('content')

    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Vehicle Local Purchase List <a href="{{ route('vehicle.local.purchase') }}" class="btn btn-primary pull-right">Add
                Local Purchase</a></h1>

    </section>

    <!-- Main content -->
    <section class="content">
        <livewire:vehicle.local-purchase-list />
    </section>
    <!-- /.content -->

@endsection
