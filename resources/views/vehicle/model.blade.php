@extends('layouts.app')
@section('title', 'Vehicle Model')
@push('custom-css')
@endpush
@section('content')

    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Vehicle Model</h1>
    </section>

    <!-- Main content -->
    <section class="content">
        <livewire:vehicle.model-component />

    </section>
    <!-- /.content -->

@endsection

@push('custom-js')
    <script></script>
@endpush
