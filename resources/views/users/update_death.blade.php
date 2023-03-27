@extends('layouts.master')
<link href="https://gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="https://code.jquery.com/ui/1.12.0/themes/smoothness/jquery-ui.css">
<style type="text/css">
	
	.toggle
	{
		width: 83px !important; 
	}
	
</style>
@section('main-content')
    <div class="breadcrumb">
        <h1>edit Information</h1>
    </div>
    <div class="separator-breadcrumb border-top"></div>
    <section class="basic-action-bar">
        <div class="row mb-12">
            
            <div class="col-lg-12 mb-3">

            <form action="" method="POST" class="needs-validation">
                    @csrf
                    <div class="col-lg-12">
                        <div class="row">
                            <div class="col-lg-12 mb-3">
                                <div class="card">
                                    
                                    <div class="card-body">

                                    <div style="margin-bottom:20px;margin-top:20px;">
<h6 style="font-size:15px;" class="card-title"><b>Common Information</b></h6>
</div>
                                    
                                        <div class="form-row col-md-12">

                                        <div class="form-group col-md-6">
                                        <label for="inputEmail1" class="ul-form__label">
                                                    Type:</label> <span class="text-danger">*</span>
                                            <select class="form-control" name="type" id="type">
                                                    <option value="">Select</option>
                                                    
                                                    <option value="Death">Death</option>
                                                    <option value="General">General</option>
                                                    <option value="Medical">Medical</option>
                                                    <option value="Blood Donation">Blood Donation</option>
                                                    
                                            </select>
                                        </div>
                                        
                                            <div class="form-group col-md-6">
                                                <label for="inputEmail1" class="ul-form__label">
                                                    Name:</label> <span class="text-danger">*</span>
                                                    <input type="text" class="form-control" id="name" placeholder="Enter Name"
                                        name="name" required>
                                            </div>

                                            
                                            
                                        </div>

                                        <div class="form-row col-md-12">

                                            <div class="form-group col-md-6">
                                                <label for="inputEmail1" class="ul-form__label">
                                                    Iqama No:</label> <span class="text-danger">*</span>
                                                    <input type="text" class="form-control" id="iqama_no" placeholder="Enter Iqama No"
                                        name="iqama_no" required>
                                            </div>


                                           <div class="form-group col-md-6">
                                            <label for="inputEmail1" class="ul-form__label">
                                                    Passport No:</label> <span class="text-danger">*</span>
                                                    <input type="text" class="form-control" id="passport_no" placeholder="Enter  Passport No"
                                        name="passport_no" required>
                                            </div>
                                            
                                        </div>

                                   
                                        <div class="form-row col-md-12">
                                        
                                        <div class="form-group col-md-6">
                                            <label for="inputEmail1" class="ul-form__label">
                                            Mobile Number/ Whats app:</label> <span class="text-danger">*</span>
                                                    <input type="text" class="form-control" id="mobile_no" placeholder="Enter Mobile Number/ Whats app"
                                        name="mobile_no" required>
                                            </div>

                                            <div class="form-group col-md-6">
                                            <label for="inputEmail1" class="ul-form__label">
                                                    Reported By:</label> <span class="text-danger">*</span>
                                                    <input type="text" class="form-control" id="reported_by" placeholder="Enter Reported By"
                                        name="reported_by" required>
                                            </div>
                                           
                                            
                                        </div>

                                        <div class="form-row col-md-12">
                                        
                                        <div class="form-group col-md-6">
                                                <label for="inputEmail1" class="ul-form__label">
                                                    Reported Date:</label> <span class="text-danger">*</span>
                                                    <input type="text" class="form-control" id="reported_date"
                                        placeholder="Enter Reported Date" name="reported_date">
                                            </div>

                                            <div class="form-group col-md-6">
                                                <label for="inputEmail1" class="ul-form__label">
                                                    District:</label> <span class="text-danger">*</span>
                                                    <input type="text" class="form-control" id="district"
                                        placeholder="Enter District" name="district">
                                            </div>

                                            
                                        </div>

                                        <div class="form-row col-md-12">
                                        
                                        <div class="form-group col-md-6">
                                                <label for="inputEmail1" class="ul-form__label">
                                                    State:</label> <span class="text-danger">*</span>
                                                    <input type="text" class="form-control" id="state"
                                        placeholder="Enter State" name="state">
                                            </div>

                                            <div class="form-group col-md-6">
                                                <label for="inputEmail1" class="ul-form__label">
                                                Embassy Noc/Author. Status:</label> <span class="text-danger">*</span>
                                                    <input type="text" class="form-control" id="embassy_noc_or_author_status"
                                        placeholder="Enter Embassy Noc/Author. Status" name="embassy_noc_or_author_status">
                                            </div>
                                            
                                        </div>

                                        <div class="form-row col-md-12">

                                        <div class="form-group col-md-6">
                                                <label for="inputEmail1" class="ul-form__label">
                                                Embassy Noc/Author. Ref#:</label> <span class="text-danger">*</span>
                                                    <input type="text" class="form-control" id="embassy_noc_or_author_ref"
                                        placeholder="Enter Embassy Noc/Author. Ref#" name="embassy_noc_or_author_ref">
                                            </div>
                                        
                                        <div class="form-group col-md-6">
                                                <label for="inputEmail1" class="ul-form__label">
                                                Sponsor / Employer Name:</label> <span class="text-danger">*</span>
                                                    <input type="text" class="form-control" id="sponsor_or_employer_name"
                                        placeholder="Enter Sponsor / Employer Name" name="sponsor_or_employer_name">
                                            </div>
                                            

                                        </div>

                                        <div class="form-row col-md-12">

                                        <div class="form-group col-md-6">
                                                <label for="inputEmail1" class="ul-form__label">
                                                Sponsor/Employer Contact Number:</label> <span class="text-danger">*</span>
                                                    <input type="text" class="form-control" id="sponsor_or_employer_contactno"
                                        placeholder="Enter Sponsor/Employer Contact Number" name="sponsor_or_employer_contactno">
                                            </div>
                                        
                                        <div class="form-group col-md-6">
                                                <label for="inputEmail1" class="ul-form__label">
                                                Contact In India:</label> <span class="text-danger">*</span>
                                                    <input type="text" class="form-control" id="contact_in_india"
                                        placeholder="Enter Contact In India" name="contact_in_india">
                                            </div>

                                        </div>

                                        <div class="form-row col-md-12">

    <div class="form-group col-md-6">
        <label for="inputEmail1" class="ul-form__label">
        Case Attended By:</label> <span class="text-danger">*</span>
            <input type="text" class="form-control" id="case_attended_by"
placeholder="Enter Case Attended By" name="case_attended_by">
    </div>
    

</div>


<span id="death_span" style="display:none">

<div style="margin-bottom:20px;margin-top:20px;">
<h6 style="font-size:15px;" class="card-title"><b>Death Information</b></h6>
</div>

<div class="form-row col-md-12">

    <div class="form-group col-md-6">
        <label for="inputEmail1" class="ul-form__label">
        Religion:</label> <span class="text-danger">*</span>
            <input type="text" class="form-control" id="religion"
placeholder="Enter Religion" name="religion">
    </div>

    <div class="form-group col-md-6">
        <label for="inputEmail1" class="ul-form__label">
        Attorney Name:</label> <span class="text-danger">*</span>
            <input type="text" class="form-control" id="attorney_name"
placeholder="Enter Attorney Name" name="attorney_name">
    </div>
    

</div>

<div class="form-row col-md-12">

    <div class="form-group col-md-6">
        <label for="inputEmail1" class="ul-form__label">
        Iqama No/ National Id:</label> <span class="text-danger">*</span>
            <input type="text" class="form-control" id="iqama_no_or_national_id"
placeholder="Enter Iqama No/ National Id" name="iqama_no_or_national_id">
    </div>

    <div class="form-group col-md-6">
        <label for="inputEmail1" class="ul-form__label">
        Mobile No:</label> <span class="text-danger">*</span>
            <input type="text" class="form-control" id="mobile_no2"
placeholder="Enter Mobile No" name="mobile_no2">
    </div>
    

</div>

<div class="form-row col-md-12">

    <div class="form-group col-md-6">
        <label for="inputEmail1" class="ul-form__label">
        Bur/Disp. Status:</label> <span class="text-danger">*</span>
            <input type="text" class="form-control" id="bur_or_disp_status"
placeholder="Enter Bur/Disp. Status" name="bur_or_disp_status">
    </div>

    <div class="form-group col-md-6">
        <label for="inputEmail1" class="ul-form__label">
        Burial/Dispatch Date:</label> <span class="text-danger">*</span>
            <input type="text" class="form-control" id="burial_or_dispatch_date"
placeholder="Enter Burial/Dispatch Date" name="burial_or_dispatch_date">
    </div>
    

</div>

<div class="form-row col-md-12">

    <div class="form-group col-md-6">
        <label for="inputEmail1" class="ul-form__label">
        Maqbara/Dispatched:</label> <span class="text-danger">*</span>
            <input type="text" class="form-control" id="maqbara_or_dispatched"
placeholder="Enter Maqbara/Dispatched" name="maqbara_or_dispatched">
    </div>
    

</div>
</span>


<span id="general_span" style="display:none">

<div style="margin-bottom:20px;margin-top:20px;">
<h6 style="font-size:15px;" class="card-title"><b>General Information</b></h6>
</div>

<div class="form-row col-md-12">

    <div class="form-group col-md-6">
        <label for="inputEmail1" class="ul-form__label">
        Case Type :</label> <span class="text-danger">*</span>
            <input type="text" class="form-control" id="case_type"
placeholder="Enter Case Type " name="case_type">
    </div>

    <div class="form-group col-md-6">
        <label for="inputEmail1" class="ul-form__label">
        Value Of The case:</label> <span class="text-danger">*</span>
            <input type="text" class="form-control" id="value_of_the_case"
placeholder="Enter Value Of The case" name="value_of_the_case">
    </div>
    

</div>

<div class="form-row col-md-12">

    <div class="form-group col-md-6">
        <label for="inputEmail1" class="ul-form__label">
        Income:</label> <span class="text-danger">*</span>
            <input type="text" class="form-control" id="income"
placeholder="Enter Income" name="income">
    </div>

    <div class="form-group col-md-6">
        <label for="inputEmail1" class="ul-form__label">
        Expenses:</label> <span class="text-danger">*</span>
            <input type="text" class="form-control" id="expenses"
placeholder="Enter Expenses" name="expenses">
    </div>
    

</div>

</span>

<span id="medical_span" style="display:none">

<div style="margin-bottom:20px;margin-top:20px;">
<h6 style="font-size:15px;" class="card-title"><b>Medical Information</b></h6>
</div>

<div class="form-row col-md-12">

    <div class="form-group col-md-6">
        <label for="inputEmail1" class="ul-form__label">
        Type of Disease:</label> <span class="text-danger">*</span>
            <input type="text" class="form-control" id="type_of_disease"
placeholder="Enter Type of Disease" name="type_of_disease">
    </div>

    <div class="form-group col-md-6">
        <label for="inputEmail1" class="ul-form__label">
        Hospital:</label> <span class="text-danger">*</span>
            <input type="text" class="form-control" id="hospital"
placeholder="Enter Hospital" name="hospital">
    </div>
    

</div>

<div class="form-row col-md-12">

    <div class="form-group col-md-6">
        <label for="inputEmail1" class="ul-form__label">
        Value Of The case:</label> <span class="text-danger">*</span>
            <input type="text" class="form-control" id="value_of_the_case"
placeholder="Enter Value Of The case" name="value_of_the_case">
    </div>

    <div class="form-group col-md-6">
        <label for="inputEmail1" class="ul-form__label">
        Income:</label> <span class="text-danger">*</span>
            <input type="text" class="form-control" id="income"
placeholder="Enter Income" name="income">
    </div>
</div>

<div class="form-row col-md-12">

    <div class="form-group col-md-6">
        <label for="inputEmail1" class="ul-form__label">
        Expenses:</label> <span class="text-danger">*</span>
            <input type="text" class="form-control" id="expenses"
placeholder="Enter Expenses" name="expenses">
    </div>
    

</div>
</span>

<span id="blood_donation_span" style="display:none">

<div style="margin-bottom:20px;margin-top:20px;">
<h6 style="font-size:15px;" class="card-title"><b>Blood Donation Information</b></h6>
</div>

<div class="form-row col-md-12">

    <div class="form-group col-md-6">
        <label for="inputEmail1" class="ul-form__label">
        File #:</label> <span class="text-danger">*</span>
            <input type="text" class="form-control" id="file"
placeholder="Enter File #" name="file">
    </div>

    <div class="form-group col-md-6">
        <label for="inputEmail1" class="ul-form__label">
        Hospital:</label> <span class="text-danger">*</span>
            <input type="text" class="form-control" id="hospital"
placeholder="Enter Hospital" name="hospital">
    </div>
    

</div>

<div class="form-row col-md-12">

    <div class="form-group col-md-6">
        <label for="inputEmail1" class="ul-form__label">
        Blood Type:</label> <span class="text-danger">*</span>
            <input type="text" class="form-control" id="blood_type"
placeholder="Enter Blood Type" name="blood_type">
    </div>

    <div class="form-group col-md-6">
        <label for="inputEmail1" class="ul-form__label">
        Required Quantity :</label> <span class="text-danger">*</span>
            <input type="text" class="form-control" id="required_quantity"
placeholder="Enter Required Quantity " name="required_quantity">
    </div>
</div>

<div class="form-row col-md-12">

    <div class="form-group col-md-6">
        <label for="inputEmail1" class="ul-form__label">
        Name Of Donor:</label> <span class="text-danger">*</span>
            <input type="text" class="form-control" id="name_of_owner"
placeholder="Enter Name Of Donor" name="name_of_owner">
    </div>
    <div class="form-group col-md-6">
        <label for="inputEmail1" class="ul-form__label">
        Blood Type Of Donor:</label> <span class="text-danger">*</span>
            <input type="text" class="form-control" id="blood_owner"
placeholder="Enter Blood Type Of Donor" name="blood_owner">
    </div>
    

</div>
<div class="form-row col-md-12">

    <div class="form-group col-md-6">
        <label for="inputEmail1" class="ul-form__label">
        Blood Bank:</label> <span class="text-danger">*</span>
            <input type="text" class="form-control" id="blood_bank"
placeholder="Enter Blood Bank" name="blood_bank">
    </div>
    <div class="form-group col-md-6">
        <label for="inputEmail1" class="ul-form__label">
        Date of Donation:</label> <span class="text-danger">*</span>
            <input type="text" class="form-control" id="date_donation"
placeholder="Enter Date of Donation" name="date_donation">
    </div>
    

</div>
<div class="form-row col-md-12">

    <div class="form-group col-md-6">
        <label for="inputEmail1" class="ul-form__label">
        Contact Number:</label> <span class="text-danger">*</span>
            <input type="text" class="form-control" id="contact_no"
placeholder="Enter Contact Number" name="contact_no">
    </div>
    <div class="form-group col-md-6">
        <label for="inputEmail1" class="ul-form__label">
        Required Date:</label> <span class="text-danger">*</span>
            <input type="text" class="form-control" id="required_date"
placeholder="Enter Required Date" name="required_date">
    </div>
    

</div>
</span>

<div style="margin-bottom:20px;margin-top:20px;">
<h6 style="font-size:15px;" class="card-title"><b>Status Information</b></h6>
</div>

<div class="form-row col-md-12">

    <div class="form-group col-md-6">
        <label for="inputEmail1" class="ul-form__label">
        Status:</label> <span class="text-danger">*</span>
            <input type="text" class="form-control" id="status"
placeholder="Enter Status" name="status">
    </div>
    <div class="form-group col-md-6">
        <label for="inputEmail1" class="ul-form__label">
        Remarks:</label> <span class="text-danger">*</span>
            <textarea class="form-control" id="remarks"
placeholder="Enter Remarks" name="remarks"></textarea>
    </div>
    

</div>


                                            
                                        </div><!---last-->

                                        
                                   

                                <div class="card-footer">
                                    <div class="mc-footer">
                                        <div class="row text-right">
                                            <div class="col-lg-10"></div>
                                            <div class="col-lg-2 text-left">
                                            <button type="submit"  class="btn btn-primary m-1" id="save">Save</button>
                                            <button type="button" class="btn btn-outline-secondary m-1">Cancel</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                                </div>
                            </div>
                        </div>

                        </div>

                </form>
                
            </div>
            
        </div>
    </section>

@endsection
@section('page-js')

<script src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.min.js"></script>

<script type="text/javascript">
    

      $('input[name="reported_date"]').datepicker({
        singleDatePicker: true,
         locale: {
          format: 'YYYY/MM/DD',
        },
        showDropdowns: true,
        minYear: 1901,
        maxYear: parseInt(moment().format('YYYY'),10)
      }); 

      $('input[name="burial_or_dispatch_date"]').datepicker({
        singleDatePicker: true,
         locale: {
          format: 'YYYY/MM/DD',
        },
        showDropdowns: true,
        minYear: 1901,
        maxYear: parseInt(moment().format('YYYY'),10)
      }); 

      $('input[name="date_donation"]').datepicker({
        singleDatePicker: true,
         locale: {
          format: 'YYYY/MM/DD',
        },
        showDropdowns: true,
        minYear: 1901,
        maxYear: parseInt(moment().format('YYYY'),10)
      }); 

      $('input[name="required_date"]').datepicker({
        singleDatePicker: true,
         locale: {
          format: 'YYYY/MM/DD',
        },
        showDropdowns: true,
        minYear: 1901,
        maxYear: parseInt(moment().format('YYYY'),10)
      }); 

      $("#type").change(function(){

        var type = $("#type").val();
        if(type=="Death")
        {
            $("#death_span").show();
            $("#general_span").hide();
            $("#medical_span").hide();
            $("#blood_donation_span").hide();
        }


        else if(type=="General"){
            $("#death_span").hide();
            $("#general_span").show();
            $("#medical_span").hide();
            $("#blood_donation_span").hide();
        }

        else if(type=="Medical"){
            $("#death_span").hide();
            $("#general_span").hide();
            $("#medical_span").show();
            $("#blood_donation_span").hide();
        }

        else if(type=="Blood Donation"){
            $("#death_span").hide();
            $("#general_span").hide();
            $("#medical_span").hide();
            $("#blood_donation_span").show();
        }
        

      })


</script>

@endsection

