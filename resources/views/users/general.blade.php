@extends('layouts.master')
@section('page-css')

<link rel="stylesheet" href="{{asset('assets/styles/vendor/datatables.min.css')}}">
@endsection

@section('main-content')
    <div class="breadcrumb">
        <h1>General</h1>

    </div>
    <div class="separator-breadcrumb border-top"></div>
    <section class="basic-action-bar">
        <!-- end of row -->

        <div class="row mb-4">
            <div class="col-md-12 mb-3">
                <div class="card text-left">
                    <div class="card-body">
                        <h4 class="card-title mt-1" style="text-align: end;"><button type="button"
                                class="btn btn-primary ripple m-1"><a style="color: white"
                                    href="{{ route('users.create') }}">
                                    New Entry</a></button></h4><br>

                        <div class="table-responsive">
                            <table class="table table-striped" id="user_table">
                                <thead>
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">Name</th>
                                        <th scope="col">Iqama No</th>
                                        <th scope="col">Pasport No</th>
                                        <th scope="col">Mobile No</th>
                                        <th scope="col">Reported By</th>
                                        <th scope="col">Reported Date</th>
                                        <th scope="col">District</th>
                                        <th scope="col">State</th>
                                        <th scope="col">Embassy Noc/Author. Status</th>
                                        <th scope="col">Embassy Noc/Author. Ref#</th>
                                        <th scope="col">Sponsor / Employer Name</th>
                                        <th scope="col">Sponsor/Employer Contact Number</th>
                                        <th scope="col">Contact In India</th>
                                        <th scope="col">Case Attended By</th>
                                        <th scope="col">Case Type</th>
                                        <th scope="col">Value Of The Case</th>
                                        <th scope="col">Income</th>
                                        <th scope="col">Expenses</th>
                                        <th scope="col">Status</th>
                                        <th scope="col">Remarks</th>
                                        <th scope="col">Actions</th>
                                        
                                    </tr>
                                </thead>
                                <tbody>
                                    
                                    @php
                                        $i = 1;
                                    @endphp
                                    @foreach ($data['users'] as $row)
                                        <tr>
                                            <th scope="row">{{ $i++ }}</th>
                                            <td>{{ $row->name }}</td>
                                            <td>{{ $row->iqama_no }}</td>
                                            <td>{{ $row->passport_no }}</td>
                                            <td>{{ $row->mobile_no }}</td>
                                            <td>{{ $row->reported_by }}</td>
                                            <td>{{ $row->reported_date }}</td>
                                            <td>{{ $row->district }}</td>
                                            <td>{{ $row->state }}</td>
                                            <td>{{ $row->embassy_noc_or_author_status }}</td>
                                            <td>{{ $row->embassy_noc_or_author_ref }}</td>
                                            <td>{{ $row->sponsor_or_employer_name }}</td>
                                            <td>{{ $row->sponsor_or_employer_contactno }}</td>
                                            <td>{{ $row->contact_in_india }}</td>
                                            <td>{{ $row->case_attended_by }}</td>
                                            <td>{{ $row->case_type }}</td>
                                            <td>{{ $row->value_of_the_case }}</td>
                                            <td>{{ $row->income }}</td>
                                            <td>{{ $row->expenses }}</td>
                                            <td>{{ $row->status }}</td>
                                            <td>{{ $row->remarks }}</td>
                                            <?php $user =  Auth::user();
                                           if ($user->login_type == "Admin") { ?>
                                           <td>
                                           <a href="#" class="text-success mr-2">
                                           <i class="nav-icon i-Pen-2 font-weight-bold" onclick="editRole(event.target)" data-id="{{ $row->id }}"></i>
                                           </a>

                                           <a href="#" class="text-danger mr-2">
                                           <i class="nav-icon i-Close-Window font-weight-bold" onclick="delete_list(event.target)" data-id="{{ $row->id }}"></i>
                                           </a>
                                           </td>
                                           <?php } ?>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>


                    </div>
                </div>
            </div>
            <!-- end of col-->

        </div>
        <!-- end of row -->
    </section>

@endsection

@section('page-js')
<script src="{{asset('assets/js/vendor/datatables.min.js')}}"></script>

<script>
   
         $('#user_table').DataTable();
         
        // function delete_user(id) {
           
        //     event.preventDefault();
        //     let _token = $('meta[name="csrf-token"]').attr('content');
            
        //     $.ajax({
        //         url: "<?php echo url('update_status'); ?>",
        //         type: "GET",
        //         data: {id:id},
        //         cache: false,
                
        //         success: function(response) {
                   
        //             // console.log(response.code);
        //             if (response) {

        //                 swal({
        //     type: 'success',
        //     title: 'Success!',
        //     text: 'User status is changed successfully',
        //     buttonsStyling: false,
        //     confirmButtonClass: 'btn btn-lg btn-success'
        // }).then(function() {
        //     location.reload();
        // });


        //             }
        //         },
        //         error: function(response) {
                    
        //         }

        //     });
            
        // }



    function delete_list(event) {
    var id = $(event).data("id");
    let _url = `users/${id}`;
    let _token = $('meta[name="csrf-token"]').attr('content');

    $.ajax({
      url: _url,
      type: 'DELETE',
      data: {
        _token: _token
      },
      success: function(response) {
        $("#row_" + id).remove();
        location.reload();
      }
    });
  }
</script>


@endsection
