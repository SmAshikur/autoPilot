@extends('layouts.app')
@section('title', 'Add Commercial Vehicle')
@push('custom-css')
@endpush
@section('content')

    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Add Commercial Vehicle<a href="{{ route('vehicle.list.commercial.vehicle') }}"
                class="btn btn-primary pull-right">Commercial Vehicle List</a></h1>
    </section>

    <!-- Main content -->
    <section class="content">
        <livewire:vehicle.add-commercial-vehicle />
    </section>
    <!-- /.content -->

@endsection
