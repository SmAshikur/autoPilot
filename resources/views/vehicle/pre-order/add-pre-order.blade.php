@extends('layouts.app')
@section('title', 'Add Vehicle Pre Order')
@push('custom-css')
@endpush
@section('content')

    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Add Vehicle Pre Order</h1>
    </section>

    <!-- Main content -->
    <section class="content">
        <livewire:vehicle.add-pre-order />
    </section>
    <!-- /.content -->

@endsection

@push('custom-js')
    <script></script>
@endpush
