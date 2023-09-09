@extends('layouts.app')
@section('title', 'Vehicle Manufacture')
@push('custom-css')
@endpush
@section('content')

    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Vehicle Manufacture</h1>
    </section>

    <!-- Main content -->
    <section class="content">
        <livewire:vehicle.manufacture-component />

    </section>
    <!-- /.content -->

@endsection

@push('custom-js')
    <script></script>
@endpush
