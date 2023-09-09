@extends('layouts.app')
@section('title', 'Add Passenger Vehicle')
@push('custom-css')
@endpush
@section('content')

    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Add Passenger Vehicle<a href="{{ route('vehicle.list.passenger.vehicle') }}"
                class="btn btn-primary pull-right">Passenger Vehicle List</a></h1>
    </section>

    <!-- Main content -->
    <section class="content">
        <livewire:vehicle.add-passenger-vehicle />
    </section>
    <!-- /.content -->

@endsection

@push('custom-js')
    <script></script>
@endpush
