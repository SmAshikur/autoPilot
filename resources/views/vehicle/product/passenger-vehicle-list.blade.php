@extends('layouts.app')
@section('title', 'Passenger Vehicle List')
@push('custom-css')
@endpush
@section('content')

    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Passenger Vehicle List</h1>
    </section>

    <!-- Main content -->
    <section class="content">
        <livewire:vehicle.passenger-vehicle-list />
    </section>
    <!-- /.content -->

@endsection
