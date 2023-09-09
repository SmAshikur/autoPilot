@extends('layouts.app')
@section('title', 'Vehicle Chassis Code')
@push('custom-css')
@endpush
@section('content')

    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Vehicle Chassis Code</h1>
    </section>

    <!-- Main content -->
    <section class="content">
        <livewire:vehicle.chasis-code-component />

    </section>
    <!-- /.content -->

@endsection

@push('custom-js')
    <script></script>
@endpush
