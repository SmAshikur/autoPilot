@extends('layouts.app')
@section('title', 'Vehicle Pre Order List')
@push('custom-css')
@endpush
@section('content')

    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Vehicle Pre Order List</h1>
    </section>

    <!-- Main content -->
    <section class="content">
        <livewire:vehicle.pre-order-list />
    </section>
    <!-- /.content -->

@endsection
