@extends('layouts.app')
@section('title', 'Displacement Engine Cc')
@push('custom-css')
@endpush
@section('content')

    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Displacement Engine Cc</h1>
    </section>

    <!-- Main content -->
    <section class="content">
        <livewire:vehicle.displacement-engine-cc-component />

    </section>
    <!-- /.content -->

@endsection

@push('custom-js')
    <script></script>
@endpush
