@extends('layouts.app')
@section('title', 'Bike List')
@push('custom-css')
@endpush
@section('content')

    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Bike List</h1>
    </section>

    <!-- Main content -->
    <section class="content">
        <livewire:vehicle.bike-list-component />
    </section>
    <!-- /.content -->

@endsection
