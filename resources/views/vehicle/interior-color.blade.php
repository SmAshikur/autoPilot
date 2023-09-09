@extends('layouts.app')
@section('title', 'Interior Color')
@push('custom-css')
@endpush
@section('content')

    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Interior Color</h1>
    </section>

    <!-- Main content -->
    <section class="content">
        <livewire:vehicle.interior-color-component />
    </section>
    <!-- /.content -->

@endsection

@push('custom-js')
    <script></script>
@endpush
