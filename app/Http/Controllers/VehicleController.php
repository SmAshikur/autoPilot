<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class VehicleController extends Controller
{
    public function manufacture()
    {
        return view('vehicle.manufacture');
    }
    public function model()
    {
        return view('vehicle.model');
    }
    public function bodyType()
    {
        return view('vehicle.body-type');
    }
    public function chassisCode()
    {
        return view('vehicle.chassis-code');
    }
    public function packageTrimVariant()
    {
        return view('vehicle.package-trim-variant');
    }
    public function displacementEngningCc()
    {
        return view('vehicle.displacement-engine-cc');
    }
    public function tyreSize()
    {
        return view('vehicle.tyre-size');
    }
    public function interiorColor()
    {
        return view('vehicle.interior-color');
    }
    public function exteriorColor()
    {
        return view('vehicle.exterior-color');
    }
    public function modelOrigin()
    {
        return view('vehicle.model-origin');
    }
    public function addBike()
    {
        return view('vehicle.product.add-bike');
    }
    public function bikeList()
    {
        return view('vehicle.product.bike-list');
    }
    public function addCommercialVehicle()
    {
        return view('vehicle.product.add-commercial-vehicle');
    }
    public function commercialVehicleList()
    {
        return view('vehicle.product.commercial-vehicle-list');
    }
    public function addPassengerVehicle()
    {
        return view('vehicle.product.add-passenger-vehicle');
    }
    public function passengerVehicleList()
    {
        return view('vehicle.product.passenger-vehicle-list');
    }
    public function vehiclePreOrder()
    {
        return view('vehicle.pre-order.add-pre-order');
    }
    public function vehiclePreOrderList()
    {
        return view('vehicle.pre-order.pre-order-list');
    }
    public function vehicleLocalPurchase()
    {
        return view('vehicle.purchase.add-local-purchase');
    }
    public function vehicleLocalPurchaseList()
    {
        return view('vehicle.purchase.local-purchase-list');
    }
    public function vehicleForeignPurchase()
    {
        return view('vehicle.purchase.add-foreign-purchase');
    }
    public function vehicleForeignPurchaseList()
    {
        return view('vehicle.purchase.foreign-purchase-list');
    }
}
