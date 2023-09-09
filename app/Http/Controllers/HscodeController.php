<?php

namespace App\Http\Controllers;

use App\Hscode;
use App\Irc;
use App\Port;
use App\Utils\Util;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;

class HscodeController extends Controller
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

            $unit = Hscode::select([
                'name', 'country_id', 'id','created_at'
            ]);

            return Datatables::of($unit)
                ->addColumn(
                    'action',
                    '@can("terms.update")
                    <span data-href="{{action(\'App\Http\Controllers\TermsController@edit\', 
                    [$id])}}" data-id="{{ $id }}" class="btn btn-xs btn-primary edit_terms_button" id="edit_hscode_button"><i class="glyphicon glyphicon-edit"></i> 
                     
                    </span>
                    

                        &nbsp;
                    @endcan
                    @can("terms.delete")
                        <span data-href="{{action(\'App\Http\Controllers\TermsController@destroy\', 
                        [$id])}}"  data-id="{{ $id }}" class="btn btn-xs btn-danger delete_terms_button" id="delete_hscode_button"><i class="glyphicon glyphicon-trash"></i> 
                       </span>
                    @endcan'
                )
                ->editColumn('country_id', function ($row) {
                        return $row->country->name; 
                })
               // ->removeColumn('id')
                ->rawColumns(['action'])
                ->make(true);
            }
            return view('bimport.partials.hscode');
        
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
         {
            if (request()->ajax()) {
                try {
                    $input = $request->only(['name', 'country_id']);
                    // $business_id = $request->session()->get('user.business_id');
                    //  $input['business_id'] = $business_id;
                    // $input['created_by'] = $request->session()->get('user.id');
                    $terms = new Hscode();
                    $terms->name = $input['name'];
                    $terms->country_id = $input['country_id'];
                    $terms->save();
                    $output = [
                        'success' => true,
                        'msg' => 'New Hs Code Added Successfully',
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
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Hscode  $hscode
     * @return \Illuminate\Http\Response
     */
    public function show(Hscode $hscode)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Hscode  $hscode
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
         if (request()->ajax()) {
             try {
               // $id= $request->id;
                $terms = Hscode::where('id',$id)->first();
                 $output = [
                    'hscode'=> $terms,
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
     * @param  \App\Hscode  $hscode
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,$id)
    {
 
        if (request()->ajax()) {
            try {
                $input = $request->only(['name', 'country_id']);
                $business_id = $request->session()->get('user.business_id');
               
                $terms = Hscode::where('id',$id)->first();
                $terms->name = $input['name'];
                $terms->country_id = $input['country_id'];
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
     * @param  \App\Hscode  $hscode
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        if (request()->ajax()) {
            try {
                $business_id = request()->user()->business_id;

                $unit = Hscode::findOrFail($id);
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
