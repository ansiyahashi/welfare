<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Auth;
use DB;

class HomeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $user =  Auth::user();
        $login_type = $user->login_type;
        $user_id = $user->id;

        if($login_type == "Admin")
        {
    
            $data['count_users'] = User::where('name','!=','Admin')->count();
            $data['count_death'] = User::where('type','=','Death')->count();
            $data['count_general'] = User::where('type','=','General')->count();
            $data['count_medical'] = User::where('type','=','Medical')->count();
            $data['count_blood_donation'] = User::where('type','=','Blood Donation')->count();

            $data['new_users'] = User::where('name','!=','Admin')->orderBy('id','DESC')->take(6)->get();
            $data['new_death'] = User::where('type','=','Death')->orderBy('id','DESC')->take(6)->get();
            $data['new_general'] = User::where('type','=','General')->orderBy('id','DESC')->take(6)->get();
            $data['new_medical'] = User::where('type','=','Medical')->orderBy('id','DESC')->take(6)->get();
            $data['new_blood_donation'] = User::where('type','=','Blood Donation')->orderBy('id','DESC')->take(6)->get();

            return view('Dashboard/dashboardv1',['data'=>$data]);
        }
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
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
