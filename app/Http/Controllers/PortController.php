<?php

namespace App\Http\Controllers;

use App\Irc;
use App\Port;
use App\Utils\Util;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;

class PortController extends Controller
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

                $unit = Port::select([
                    'name', 'country_id', 'id','created_at'
                ]);

                return Datatables::of($unit)
                    ->addColumn(
                        'action',
                        '@can("terms.update")
                        <span data-href="{{action(\'App\Http\Controllers\TermsController@edit\', 
                        [$id])}}" data-id="{{ $id }}" class="btn btn-xs btn-primary edit_terms_button" id="edit_port_button"><i class="glyphicon glyphicon-edit"></i> 
                        
                        </span>
                        

                            &nbsp;
                        @endcan
                        @can("terms.delete")
                            <span data-href="{{action(\'App\Http\Controllers\TermsController@destroy\', 
                            [$id])}}"  data-id="{{ $id }}" class="btn btn-xs btn-danger delete_terms_button" id="delete_port_button"><i class="glyphicon glyphicon-trash"></i> 
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
                return view('bimport.partials.port');
        }
    public function store(Request $request)
        {
            if (request()->ajax()) {
                try {
                    $input = $request->only(['name', 'country_id']);
                    // $business_id = $request->session()->get('user.business_id');
                    //  $input['business_id'] = $business_id;
                    // $input['created_by'] = $request->session()->get('user.id');
                    $terms = new Port();
                    $terms->name = $input['name'];
                    $terms->country_id = $input['country_id'];
                    $terms->save();
                    $output = [
                        'success' => true,
                        'msg' => 'New Port Added Successfully',
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
    public function edit(Request $request)
    {
         if (request()->ajax()) {
             try {
                $id= $request->id;
                $terms = Port::where('id',$id)->first();
                 $output = [
                    'port'=> $terms,
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
    public function update(Request $request, $id)
    {
 
        if (request()->ajax()) {
            try {
                $input = $request->only(['name', 'country_id']);
                $business_id = $request->session()->get('user.business_id');
               
                $terms = Port::where('id',$id)->first();
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
    public function destroy($id)
    {
        if (request()->ajax()) {
            try {
                $business_id = request()->user()->business_id;

                $unit = Port::findOrFail($id);
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


