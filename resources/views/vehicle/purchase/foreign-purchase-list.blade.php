@extends('layouts.app')
@section('title', 'Vehicle Foreign Purchase List')
@push('custom-css')
@endpush
@section('content')

    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Vehicle Foreign Purchase List</h1>
    </section>

    <!-- Main content -->
    <section class="content">
        <livewire:vehicle.foreign-purchase-list />
    </section>
    <!-- /.content -->

@endsection
