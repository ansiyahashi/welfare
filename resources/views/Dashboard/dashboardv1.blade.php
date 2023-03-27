@extends('layouts.master')
@section('main-content')
<style>
    #myChart1 {
        height: 300px !important;
    }
</style>
<div class="breadcrumb">

    <ul>
        <li><a href="">{{__('Dashboard')}}</a></li>

    </ul>
</div>

<div class="separator-breadcrumb border-top"></div>

<div class="row">
    <!-- ICON BG -->

    <!-- <div class="col-lg-3 col-md-6 col-sm-6">
        <a class="" href="{{route('users.index')}}">
            <div class="card card-icon-bg card-icon-bg-primary o-hidden mb-4 bg-warning">
                <div class="card-body text-center">
                    <i class="i-Suitcase"></i>
                    <div class="content">
                        <p class="text-white  mt-2 mb-0">{{__('Users')}}</p>
                        <p class="text-white text-24 line-height-1 mb-2">{{$data['count_users']}}</p>
                    </div>
                </div>
            </div>
        </a>
    </div> -->
<!-- count of death -->

<div class="col-lg-3 col-md-6 col-sm-6">
        <a class="" href="{{route('users.index')}}">
            <div class="card card-icon-bg card-icon-bg-primary o-hidden mb-4 bg-warning">
                <div class="card-body text-center">
                    <i class="i-Suitcase"></i>
                    <div class="content">
                        <p class="text-white  mt-2 mb-0">{{__('Death')}}</p>
                        <p class="text-white text-24 line-height-1 mb-2">{{$data['count_death']}}</p>
                    </div>
                </div>
            </div>
        </a>
    </div>
    <!-- count of general -->

    <div class="col-lg-3 col-md-6 col-sm-6">
        <a class="" href="{{route('users.index')}}">
            <div class="card card-icon-bg card-icon-bg-primary o-hidden mb-4 bg-warning">
                <div class="card-body text-center">
                    <i class="i-Suitcase"></i>
                    <div class="content">
                        <p class="text-white  mt-2 mb-0">{{__('General')}}</p>
                        <p class="text-white text-24 line-height-1 mb-2">{{$data['count_general']}}</p>
                    </div>
                </div>
            </div>
        </a>
    </div>
    <!-- cont of medical -->

    <div class="col-lg-3 col-md-6 col-sm-6">
        <a class="" href="{{route('users.index')}}">
            <div class="card card-icon-bg card-icon-bg-primary o-hidden mb-4 bg-warning">
                <div class="card-body text-center">
                    <i class="i-Suitcase"></i>
                    <div class="content">
                        <p class="text-white  mt-2 mb-0">{{__('Medical')}}</p>
                        <p class="text-white text-24 line-height-1 mb-2">{{$data['count_medical']}}</p>
                    </div>
                </div>
            </div>
        </a>
    </div>

    <!-- count of blood donation -->

    <div class="col-lg-3 col-md-6 col-sm-6">
        <a class="" href="{{route('users.index')}}">
            <div class="card card-icon-bg card-icon-bg-primary o-hidden mb-4 bg-warning">
                <div class="card-body text-center">
                    <i class="i-Suitcase"></i>
                    <div class="content">
                        <p class="text-white  mt-2 mb-0">{{__('Blood_Donation')}}</p>
                        <p class="text-white text-24 line-height-1 mb-2">{{$data['count_blood_donation']}}</p>
                    </div>
                </div>
            </div>
        </a>
    </div>

</div>


<div class="row">
    <!-- <div class="col-lg-6 col-md-12">

        <div class="row">
            <div class="col-md-12">
                <div class="card o-hidden mb-4">
                    <div class="card-header d-flex align-items-center border-0 bg-info">
                        <h3 class="w-50 float-left card-title m-0" style="color:white;font-size:15px;">{{__('New Users')}}</h3>

                    </div>

                    <div class="">
                        <div class="table-responsive">
                            <table id="user_table" class="table  text-center">
                                <thead>
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">{{__('Type')}}</th>
                                        <th scope="col">{{__('Name')}}</th>
                                        <th scope="col">{{__('Iqama No')}}</th>
                                        <th scope="col">{{__('Passport No')}}</th>
                                        <th scope="col">{{__('State')}}</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $i = 1;
                                    foreach ($data['new_users'] as $row) { ?>
                                        <tr>
                                            <th scope="row">{{$i}}</th>
                                            <td>{{$row->type}}</td>
                                            <td>{{$row->name}}</td>
                                            <td>{{$row->iqama_no}}</td>
                                            <td>{{$row->passport_no}}</td>
                                            <td>{{$row->state}}</td>

                                        </tr>
                                    <?php $i++;
                                    } ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>


            </div>
        </div>

    </div> -->
    <!-- new death list -->
    <div class="col-lg-6 col-md-12">

<div class="row">
    <div class="col-md-12">
        <div class="card o-hidden mb-4">
            <div class="card-header d-flex align-items-center border-0 bg-info">
                <h3 class="w-50 float-left card-title m-0" style="color:white;font-size:15px;">{{__('New Death list')}}</h3>

            </div>

            <div class="">
                <div class="table-responsive">
                    <table id="user_table" class="table  text-center">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">{{__('Name')}}</th>
                                <th scope="col">{{__('Iqama No')}}</th>
                                <th scope="col">{{__('Passport No')}}</th>
                                <th scope="col">{{__('Mobile number')}}</th>
                                <th scope="col">{{__('Reported By')}}</th>
                                <th scope="col">{{__('Reported Date')}}</th>
                                <th scope="col">{{__('District')}}</th>
                                <th scope="col">{{__('State')}}</th>

                            </tr>
                        </thead>
                        <tbody>
                            <?php $i = 1;
                            foreach ($data['new_death'] as $row) { ?>
                                <tr>
                                    <th scope="row">{{$i}}</th>
                                    <td>{{$row->name}}</td>
                                    <td>{{$row->iqama_no}}</td>
                                    <td>{{$row->passport_no}}</td>
                                    <td>{{$row->mobile_no}}</td>
                                    <td>{{$row->reported_by}}</td>
                                    <td>{{$row->reported_date}}</td>
                                    <td>{{$row->district}}</td>
                                    <td>{{$row->state}}</td>

                                </tr>
                            <?php $i++;
                            } ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>


    </div>
</div>

</div>

<!-- general list -->
<div class="col-lg-6 col-md-12">

<div class="row">
    <div class="col-md-12">
        <div class="card o-hidden mb-4">
            <div class="card-header d-flex align-items-center border-0 bg-info">
                <h3 class="w-50 float-left card-title m-0" style="color:white;font-size:15px;">{{__('General list')}}</h3>

            </div>

            <div class="">
                <div class="table-responsive">
                    <table id="user_table" class="table  text-center">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">{{__('Name')}}</th>
                                <th scope="col">{{__('Iqama No')}}</th>
                                <th scope="col">{{__('Passport No')}}</th>
                                <th scope="col">{{__('Mobile number')}}</th>
                                <th scope="col">{{__('Reported By')}}</th>
                                <th scope="col">{{__('Reported Date')}}</th>
                                <th scope="col">{{__('District')}}</th>
                                <th scope="col">{{__('State')}}</th>

                            </tr>
                        </thead>
                        <tbody>
                            <?php $i = 1;
                            foreach ($data['new_general'] as $row) { ?>
                                <tr>
                                    <th scope="row">{{$i}}</th>
                                    <td>{{$row->name}}</td>
                                    <td>{{$row->iqama_no}}</td>
                                    <td>{{$row->passport_no}}</td>
                                    <td>{{$row->mobile_no}}</td>
                                    <td>{{$row->reported_by}}</td>
                                    <td>{{$row->reported_date}}</td>
                                    <td>{{$row->district}}</td>
                                    <td>{{$row->state}}</td>

                                </tr>
                            <?php $i++;
                            } ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>


    </div>
</div>

</div>
<!-- medical list -->
<div class="col-lg-6 col-md-12">

<div class="row">
    <div class="col-md-12">
        <div class="card o-hidden mb-4">
            <div class="card-header d-flex align-items-center border-0 bg-info">
                <h3 class="w-50 float-left card-title m-0" style="color:white;font-size:15px;">{{__('Medical list')}}</h3>

            </div>

            <div class="">
                <div class="table-responsive">
                    <table id="user_table" class="table  text-center">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">{{__('Name')}}</th>
                                <th scope="col">{{__('Iqama No')}}</th>
                                <th scope="col">{{__('Passport No')}}</th>
                                <th scope="col">{{__('Mobile number')}}</th>
                                <th scope="col">{{__('Reported By')}}</th>
                                <th scope="col">{{__('Reported Date')}}</th>
                                <th scope="col">{{__('District')}}</th>
                                <th scope="col">{{__('State')}}</th>

                            </tr>
                        </thead>
                        <tbody>
                            <?php $i = 1;
                            foreach ($data['new_medical'] as $row) { ?>
                                <tr>
                                    <th scope="row">{{$i}}</th>
                                    <td>{{$row->name}}</td>
                                    <td>{{$row->iqama_no}}</td>
                                    <td>{{$row->passport_no}}</td>
                                    <td>{{$row->mobile_no}}</td>
                                    <td>{{$row->reported_by}}</td>
                                    <td>{{$row->reported_date}}</td>
                                    <td>{{$row->district}}</td>
                                    <td>{{$row->state}}</td>

                                </tr>
                            <?php $i++;
                            } ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>


    </div>
</div>

</div>
<!-- Blood Donation list -->
<div class="col-lg-6 col-md-12">

<div class="row">
    <div class="col-md-12">
        <div class="card o-hidden mb-4">
            <div class="card-header d-flex align-items-center border-0 bg-info">
                <h3 class="w-50 float-left card-title m-0" style="color:white;font-size:15px;">{{__('Blood Donation list')}}</h3>

            </div>

            <div class="">
                <div class="table-responsive">
                    <table id="user_table" class="table  text-center">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">{{__('Name')}}</th>
                                <th scope="col">{{__('Iqama No')}}</th>
                                <th scope="col">{{__('Passport No')}}</th>
                                <th scope="col">{{__('Mobile number')}}</th>
                                <th scope="col">{{__('Reported By')}}</th>
                                <th scope="col">{{__('Reported Date')}}</th>
                                <th scope="col">{{__('District')}}</th>
                                <th scope="col">{{__('State')}}</th>

                            </tr>
                        </thead>
                        <tbody>
                            <?php $i = 1;
                            foreach ($data['new_blood_donation'] as $row) { ?>
                                <tr>
                                    <th scope="row">{{$i}}</th>
                                    <td>{{$row->name}}</td>
                                    <td>{{$row->iqama_no}}</td>
                                    <td>{{$row->passport_no}}</td>
                                    <td>{{$row->mobile_no}}</td>
                                    <td>{{$row->reported_by}}</td>
                                    <td>{{$row->reported_date}}</td>
                                    <td>{{$row->district}}</td>
                                    <td>{{$row->state}}</td>

                                </tr>
                            <?php $i++;
                            } ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>


    </div>
</div>

</div>
</div>


@endsection

@section('page-js')
<script src="{{asset('assets/js/vendor/echarts.min.js')}}"></script>
<script src="{{asset('assets/js/es5/echart.options.min.js')}}"></script>
<script src="{{asset('assets/js/es5/dashboard.v1.script.js')}}"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.5.1/chart.min.js"></script>


<script type="text/javascript">
 
    
    
</script>

@endsection