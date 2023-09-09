@extends('layouts.app')
@section('title', 'Vehicle Body Type')
@push('custom-css')
@endpush
@section('content')

    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Vehicle Body Type</h1>
    </section>

    <!-- Main content -->
    <section class="content">
        <livewire:vehicle.body-type-component />

    </section>
    <!-- /.content -->

@endsection

@push('custom-js')
    <script></script>
@endpush
