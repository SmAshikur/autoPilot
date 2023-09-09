@extends('layouts.app')
@section('title', 'Add Vehicle Local Purchase')
@push('custom-css')
@endpush
@section('content')

    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Add Vehicle Local Purchase<a href="{{ route('vehicle.local.purchase.list') }}"
                class="btn btn-primary pull-right">Add
                Local Purchase List</a></h1>
    </section>

    <!-- Main content -->
    <section class="content">
        <livewire:vehicle.add-local-purchase />
    </section>
    <!-- /.content -->

@endsection

@push('custom-js')
    <script></script>
@endpush
