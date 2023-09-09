@extends('layouts.app')
@section('title', 'Add Vehicle Foreign Purchase')
@push('custom-css')
@endpush
@section('content')

    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Add Vehicle Foreign Purchase</h1>
    </section>

    <!-- Main content -->
    <section class="content">
        <livewire:vehicle.add-foreign-purchase />
    </section>
    <!-- /.content -->

@endsection

@push('custom-js')
    <script></script>
@endpush
