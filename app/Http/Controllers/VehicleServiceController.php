<?php

namespace App\Http\Controllers;

use App\VehicleService;
use App\Utils\Util;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;

class VehicleServiceController extends Controller
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

            $unit = VehicleService::select([
                'title', 'details', 'price', 'duration','id','country_id','warranty'
            ]);

            return Datatables::of($unit)
                ->addColumn(
                    'action',
                    '@can("terms.update")
                    <span data-href="{{action(\'App\Http\Controllers\TermsController@edit\', 
                    [$id])}}" data-id="{{ $id }}" class="btn btn-xs btn-primary edit_terms_button" id="edit_vehicle_service_button"><i class="glyphicon glyphicon-edit"></i> 
                     
                    </span>
                    

                        &nbsp;
                    @endcan
                    @can("terms.delete")
                        <span data-href="{{action(\'App\Http\Controllers\TermsController@destroy\', 
                        [$id])}}"  data-id="{{ $id }}" class="btn btn-xs btn-danger delete_terms_button" id="delete_vehicle_service_button"><i class="glyphicon glyphicon-trash"></i> 
                       </span>
                    @endcan'
                )
               ->editColumn('details', function ($row) {
                     
                        return $row->duration.'--'.$row->country_id.'--'.$row->warranty;
                    
                })
                ->rawColumns(['action'])
                ->make(true);
        }
        return view('business.partials.vehicle_service');
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
       // return $request;
        if (request()->ajax()) {
            try {
                $input = $request->only(['title', 'duration', 'price','warranty','country_id','des']);
                // $business_id = $request->session()->get('user.business_id');
                //  $input['business_id'] = $business_id;
                // $input['created_by'] = $request->session()->get('user.id');
                $terms = new VehicleService();
                $terms->title = $input['title'];
                $terms->country_id = $input['country_id'];
                $terms->details = $input['des'];
                $terms->warranty = $input['warranty'];
                $terms->duration = $input['duration'];
                $terms->price = $input['price'];
                $terms->save();
                $output = [
                    'success' => true,
                    'msg' => 'New Vehicle Service Added Successfully',
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
     * @param  \App\VehicleService  $vehicleService
     * @return \Illuminate\Http\Response
     */
    public function show(VehicleService $vehicleService)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\VehicleService  $vehicleService
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        if (request()->ajax()) {
             try {
                $terms = VehicleService::with('country')->where('id',$id)->first();
                 $output = [
                    'terms'=> $terms,
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
     * @param  \App\VehicleService  $vehicleService
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        if (request()->ajax()) {
            try {
                $input = $request->only(['title', 'duration', 'price','warranty','country_id','des']);
                $business_id = $request->session()->get('user.business_id');
               
                $terms = VehicleService::where('id',$id)->first();
               // return $terms;
                $terms->title = $input['title'];
                $terms->country_id = $input['country_id'];
                $terms->details = $input['des'];
                $terms->warranty = $input['warranty'];
                $terms->duration = $input['duration'];
                $terms->price = $input['price'];
                $terms->save();;
               
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
     * @param  \App\VehicleService  $vehicleService
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
          if (request()->ajax()) {
            try {
                $business_id = request()->user()->business_id;

                $unit = VehicleService::findOrFail($id);
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
