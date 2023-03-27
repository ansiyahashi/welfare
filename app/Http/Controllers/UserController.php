<?php

namespace App\Http\Controllers;

use App\Models\Role;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{

    public function death()
    {
        $data['users'] = User::where('type','Death')->get();
        return view('users.death', ['data' => $data]);
    }

    public function general()
    {
        $data['users'] = User::where('type','General')->get();
        return view('users.general', ['data' => $data]);
    }

    public function medical()
    {
        $data['users'] = User::where('type','Medical')->get();
        return view('users.medical', ['data' => $data]);
    }

    public function blood_donation()
    {
        $data['users'] = User::where('type','Blood Donation')->get();
        return view('users.blood_donation', ['data' => $data]);
    }

    public function create()
    {  
        
        $roles = Role::all();
       return view('users.create', compact('roles'));
    }

    public 

    public function store(Request $request)
    {
            $user =  new User;
            $user->type = $request->type;
            $user->name = $request->name;
            $user->iqama_no = $request->iqama_no;
            $user->passport_no = $request->passport_no;
            $user->mobile_no = $request->mobile_no;
            $user->reported_by = $request->reported_by;
            $user->reported_date = $request->reported_date;
            $user->district = $request->district;
            $user->state = $request->state;
            $user->embassy_noc_or_author_status = $request->embassy_noc_or_author_status;
            $user->embassy_noc_or_author_ref = $request->embassy_noc_or_author_ref;
            $user->sponsor_or_employer_name = $request->sponsor_or_employer_name;
            $user->sponsor_or_employer_contactno = $request->sponsor_or_employer_contactno;
            $user->contact_in_india = $request->contact_in_india;
            $user->case_attended_by = $request->case_attended_by;
            $user->status = $request->status;
            $user->remarks = $request->remarks;

            if($request->type=="Death"){
            $user->religion = $request->religion;
            $user->attorney_name = $request->attorney_name;
            $user->iqama_no_or_national_id = $request->iqama_no_or_national_id;
            $user->mobile_no2 = $request->mobile_no2;
            $user->bur_or_disp_status = $request->bur_or_disp_status;
            $user->burial_or_dispatch_date = $request->burial_or_dispatch_date;
            $user->maqbara_or_dispatched = $request->maqbara_or_dispatched;
            }

            if($request->type=="General"){
            $user->case_type = $request->case_type;
            $user->value_of_the_case = $request->value_of_the_case;
            $user->income = $request->income;
            $user->expenses = $request->expenses;
            }

            if($request->type=="Medical"){
            $user->type_of_disease = $request->type_of_disease;
            $user->hospital = $request->hospital;
            $user->value_of_the_case = $request->value_of_the_case;
            $user->income = $request->income;
            $user->expenses = $request->expenses;
            }

            if($request->type=="Blood Donation"){
            $user->file = $request->file;
            $user->blood_type = $request->blood_type;
            $user->required_quantity = $request->required_quantity;
            $user->name_of_owner = $request->name_of_owner;
            $user->blood_owner = $request->blood_owner;
            $user->blood_bank = $request->blood_bank;
            $user->date_donation = $request->date_donation;
            $user->contact_no = $request->contact_no;
            $user->required_date = $request->required_date;
            }
            
            $user->save();
        
            return redirect()->route('users.create');
        
    }

    public function show(User $user)
    {
        //
    }

    public function edit(Request $request, $id)
    {
        $user = User::findOrFail($id);
        $roles = Roles::all();
        $departments = Department::all();
        $locations = Location::all();
        $designations = Designation::all();
        return view('backend.users.edit', compact('user', 'roles', 'departments','locations','designations'));
    }
    
    
    public function update_status()
    {
        $id = $_GET['id'];
        $user = User::findOrFail($id);
        $user->status = 1;

        if ($user->save()) {
            toast('User Info Updated Successfully', 'success');
            return redirect()->route('users.index');
        } else {
            toast('Something went wrong', 'error');
            return redirect()->route('users.index');
        }
    }


    public function update(Request $request, $id)
    {
        
        $user = User::findOrFail($id);
        $user->name = $request->first_name." ".$request->last_name;
        $user->email = $request->email;
        $user->department = $request->department_name;
        $user->location = $request->location_name;
        $user->designation = $request->designation_name;
        $user->job_role = $request->job_role;
        $user->status = $request->status;
        $user->joining_date = $request->joining_date;
        $user->dob = $request->dob;
        $user->gender = $request->gender;
        $user->marital_status = $request->marital_status;
        $user->blood_group = $request->blood_group;
        $user->adhaar_no = $request->aadhaar_no;
        $user->pan_no = $request->pan_no;
        $user->phone = $request->phone;
        $user->whatsapp_no = $request->whatsap_no;
        $user->residential_address = $request->present_address;
        $user->residential_city = $request->present_city;
        $user->residential_state = $request->present_state;
        $user->residential_country = $request->present_country;
        $user->residential_pincode = $request->present_pincode;
        $user->permanent_address = $request->permanent_address;
        $user->permanent_city = $request->permanent_city;
        $user->permanent_state = $request->permanent_state;
        $user->permanent_country = $request->permanent_country;
        $user->permanent_pincode = $request->permanent_pincode;
        $user->contract_starting_date = $request->contract_starting_date;
        $user->contract_ending_date = $request->contract_ending_date;
        $user->reason_for_leaving = $request->reason_for_leaving;
        $user->user_type = 'Employee';
        $user->save();

        if ($user->save()) {
            toast('User Info Updated Successfully', 'success');
            return redirect()->route('users.index');
        } else {
            toast('Something went wrong', 'error');
            return redirect()->route('users.index');
        }
    }

    public function destroy($id)
    {
       
        $user = User::find($id);
        //print_r($user);
        $user->delete();
        return response()->json(['success'=>'User Deleted successfully']);
    }
    
    public function present_employees()
    {
        $total_present_emp = Status::where('date', date('Y-m-d'))->get();
        $present_id = array();
        $i=0;
        foreach($total_present_emp as $row)
        {
            $present_id[$i] = $row->user_id;
            $i++;
        }
        
        $users = User::where('status',0)->with('departments')->whereIn('id',$present_id)->take(5)->get();
       
        return view('backend.users.present_employees', compact('users'));
    }
    
    public function absent_employees()
    {
        $total_present_emp = Status::where('date', date('Y-m-d'))->get();
        $present_id = array();
        $i=0;
        foreach($total_present_emp as $row)
        {
            $present_id[$i] = $row->user_id;
            $i++;
        }
        
        $data['present_employees'] = User::whereIn('id',$present_id)->get();
        
        $total_emp = User::where('user_type','Employee')->get();
        $total_emp_id = array();
        $i=0;
        foreach($total_emp as $row)
        {
            $total_emp_id[$i] = $row->id;
            $i++;
        }
        
        $users = User::where('status',0)->whereIn('id',$total_emp_id)->whereNotIn('id',$present_id)->groupBy('id')->get();
       
        return view('backend.users.present_employees', compact('users'));
    }
    
    public function employees()
    {
        
        $users = User::where('status',0)->with('departments')->where('user_type','Employee')->get();
       
        return view('backend.users.present_employees', compact('users'));
    }
    
    public function get_employee_code()
    {
        $role = $_GET['role'];
        
        $emp_code = User::where('user_type','Employee')->where('job_role',$role)->orderBy('id','DESC')->first();
        
        if(!empty($emp_code))
        $employee_code = $emp_code->employee_code;
    
        else
        $employee_code = 000;
        
        $newcode = substr($employee_code, -3);
        
        $new_code = str_pad(++$newcode, 3, "0", STR_PAD_LEFT);
        
        if($role=="Employee")
        $new_employee_code = "ANA ".$new_code;
        
        else if($role=="Trainee")
        $new_employee_code = "ANA TR ".$new_code;
        
        else if($role=="New Venture")
        $new_employee_code = "ANA NV ".$new_code;

        return $new_employee_code;
    }

}
