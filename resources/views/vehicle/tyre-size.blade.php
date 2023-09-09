@extends('layouts.app')
@section('title', 'Tyre Size')
@push('custom-css')
@endpush
@section('content')

    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Tyre Size</h1>
    </section>

    <!-- Main content -->
    <section class="content">
        <livewire:vehicle.tyre-size-component />

    </section>
    <!-- /.content -->

@endsection

@push('custom-js')
    <script></script>
@endpush
