@extends('layouts.app')
@section('title', 'Exterior Color')
@push('custom-css')
@endpush
@section('content')

    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Exterior Color</h1>
    </section>

    <!-- Main content -->
    <section class="content">
        <livewire:vehicle.exterior-color-component />
    </section>
    <!-- /.content -->

@endsection

@push('custom-js')
    <script></script>
@endpush
