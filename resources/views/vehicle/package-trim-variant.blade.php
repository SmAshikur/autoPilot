@extends('layouts.app')
@section('title', 'Package Trim Variant')
@push('custom-css')
@endpush
@section('content')

    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Package Trim Variant</h1>
    </section>

    <!-- Main content -->
    <section class="content">
        <livewire:vehicle.package-trim-variant-component />

    </section>
    <!-- /.content -->

@endsection

@push('custom-js')
    <script></script>
@endpush
