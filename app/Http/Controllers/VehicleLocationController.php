<?php

namespace App\Http\Controllers;

use App\VehicleLocation;
use App\Utils\Util;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;

class VehicleLocationController extends Controller
{
    /**
     * All Utils instance.
     */
    protected $commonUtil;

    /**
     * Constructor
     *
     * @param  ProductUtils  $product
     * @return void
     */
    public function __construct(Util $commonUtil)
    {
        $this->commonUtil = $commonUtil;
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if (request()->ajax()) {
            $business_id = request()->session()->get('user.business_id');

            $unit = VehicleLocation::select([
                'id','name'
            ]);

            return Datatables::of($unit)
                ->addColumn(
                    'action',
                    '@can("vehicle_location.update")
                    <span data-href="{{action(\'App\Http\Controllers\VehicleLocationController@edit\', 
                    [$id])}}" data-id="{{ $id }}"  class="btn btn-xs btn-primary edit_vehicle_location_button" id="edit_vehicle_location_button"><i class="glyphicon glyphicon-edit"></i> 
                     
                    </span>
                    

                        &nbsp;
                    @endcan
                    @can("vehicle_location.delete")
                        <span data-href="{{action(\'App\Http\Controllers\VehicleLocationController@destroy\', 
                        [$id])}}"  data-id="{{ $id }}" class="btn btn-xs btn-danger delete_vehicle_location_button" id="delete_vehicle_location_button"><i class="glyphicon glyphicon-trash"></i> 
                       </span>
                    @endcan'
                )
               // ->removeColumn('id')
                ->rawColumns(['action'])
                ->make(true);
        }
        return view('business.partials.vehicle_location');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
         if (request()->ajax()) {
            try {
                $input = $request->only(['name']);
                // $business_id = $request->session()->get('user.business_id');
                //  $input['business_id'] = $business_id;
                // $input['created_by'] = $request->session()->get('user.id');
                $vehileLocation = new VehicleLocation();
                $vehileLocation->name = $input['name'];
                $vehileLocation->save();
                $output = [
                    'success' => true,
                    'msg' => 'New Vehile Location Added Successfully',
                ];
            } catch (\Exception $e) {
                \Log::emergency('File:' . $e->getFile() . 'Line:' . $e->getLine() . 'Message:' . $e->getMessage());

                $output = [
                    'success' => false,
                    'msg' => __('messages.something_went_wrong'),
                ];
            }

            return $output;
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\VehicleLocation  $vehicleLocation
     * @return \Illuminate\Http\Response
     */
    public function show(VehicleLocation $vehicleLocation)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\VehicleLocation  $vehicleLocation
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        if (request()->ajax()) {
             try {
              //  $id= $request->id;
                $vehileLocation = VehicleLocation::where('id',$id)->first();
                 $output = [
                    'terms'=> $vehileLocation,
                    'success' => true,
                    //'msg' => 'New Terms & Condition Added Successfully',
                ];
            } catch (\Exception $e) {
                \Log::emergency('File:' . $e->getFile() . 'Line:' . $e->getLine() . 'Message:' . $e->getMessage());

                $output = [
                    'success' => false,
                    'msg' => __('messages.something_went_wrong'),
                ];
            }
             return $output;
         }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\VehicleLocation  $vehicleLocation
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        if (request()->ajax()) {
            try {
                $input = $request->only(['name']);
                $business_id = $request->session()->get('user.business_id');
               
                $terms = VehicleLocation::where('id',$id)->first();
               // return $terms;
                $terms->name = $input['name'];
                $terms->save();
                $output = [
                    'success' => true,
                    'msg' => 'Updated Successfully',
                ];
            } catch (\Exception $e) {
                \Log::emergency('File:' . $e->getFile() . 'Line:' . $e->getLine() . 'Message:' . $e->getMessage());

                $output = [
                    'success' => false,
                    'msg' => __('messages.something_went_wrong'),
                ];
            }

            return $output;
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\VehicleLocation  $vehicleLocation
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
          if (request()->ajax()) {
            try {
                $business_id = request()->user()->business_id;

                $unit = VehicleLocation::findOrFail($id);
                $unit->delete();
                $output = [
                        'success' => true,
                        'msg' => 'Deleted Successfully',
                    ];
                //check if any product associated with the unit
                // $exists = Product::where('unit_id', $unit->id)
                //     ->exists();
                // if (!$exists) {
                //     $unit->delete();
                //     $output = [
                //         'success' => true,
                //         'msg' => __('unit.deleted_success'),
                //     ];
                // } else {
                //     $output = [
                //         'success' => false,
                //         'msg' => __('lang_v1.unit_cannot_be_deleted'),
                //     ];
                // }
            } catch (\Exception $e) {
                \Log::emergency('File:' . $e->getFile() . 'Line:' . $e->getLine() . 'Message:' . $e->getMessage());

                $output = [
                    'success' => false,
                    'msg' => '__("messages.something_went_wrong")',
                ];
            }

            return $output;
        }
    }
}
