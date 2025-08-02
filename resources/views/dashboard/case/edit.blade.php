@extends('dashboard.layout.app')
@section('title', 'Edit Insurance Customer')
@section('content')
    <div class="container-fluid">
        <div class="text-right">
            <button class="btn btn-danger mr-2 mb-2" onclick="window.history.back()"><i class="fa fa-arrow-left"
                    aria-hidden="true"></i></button>
            <button class="btn btn-warning mr-2 mb-2" onclick="window.location.reload()"><i class="fa fa-spinner"
                    aria-hidden="true"></i></button>
            <a href="{{ route('case.index') }}" class="btn btn-primary mr-2 mb-2">
                <i class="fa fa-list" aria-hidden="true"></i>
            </a>
        </div>
        <div class="row">
            <div class="col-md-8 offset-md-2">
                <div class="card mb-5">
                    <div class="card-header">
                        <h4>Edit Insurance Customer</h4>
                    </div>
                    <div id="successMessage" class="alert alert-success mt-3" style="display: none;"></div>
                    <div class="card-body">
                        <form id="insuranceForm" action="{{ route('case.update',$customers->id) }}" method="POST" enctype="multipart/form-data">
                            @csrf
                            @method('PUT')
                            <div class="form-group">
                                <label for="company">Select Company</label> <span class="text-danger">*</span>
                                <select id="company" name="company" class="form-control">
                                    <option disabled>Select Company</option>
                                    @foreach ($companies as $company)
                                        <option value="{{ $company->id }}" 
                                            {{ $customers->company_id == $company->id ? 'selected' : '' }}>
                                            {{ $company->name }}
                                        </option>
                                    @endforeach
                                </select>
                                <span id="company-error" class="text-danger"></span>
                            </div>

                            <div class="form-group">
                                <label for="name">Name</label> <span class="text-danger">*</span>
                                <input type="text" id="name" name="name" class="form-control" value="{{ $customers->name }}">
                                <span id="name-error" class="text-danger"></span>
                            </div>

                            <div class="form-group">
                                <label for="father_name">Father's Name</label> <span class="text-danger">*</span>
                                <input type="text" id="father_name" name="father_name" class="form-control" value="{{ $customers->father_name }}">
                                <span id="father_name-error" class="text-danger"></span>
                            </div>

                            <div class="form-group">
                                <label for="phone">Phone</label> <span class="text-danger">*</span>
                                <input type="text" id="phone" name="phone" class="form-control" value="{{ $customers->phone }}">
                                <span id="phone-error" class="text-danger"></span>
                            </div>

                            <div class="form-check">
                                <input type="checkbox" id="same_as_phone" class="form-check-input">
                                <label for="same_as_phone" class="form-check-label text-primary">Emergency contact number same as phone</label>
                            </div><br>

                            <div class="form-group">
                                <label for="emergency_contact_number">Emergency Contact Number</label> <span class="text-danger">*</span>
                                <input type="text" id="emergency_contact_number" name="emergency_contact_number" class="form-control" value="{{ $customers->emergency_contact_number }}">
                                <span id="emergency_contact_number-error" class="text-danger"></span>
                            </div>

                            <div class="form-group">
                                <label for="email">Email</label>
                                <input type="email" id="email" name="email" class="form-control" value="{{ $customers->email }}">
                                <span id="email-error" class="text-danger"></span>
                            </div>

                            <div class="form-group">
                                <label for="present_address">Present Address</label> <span class="text-danger">*</span>
                                <textarea id="present_address" name="present_address" class="form-control" rows="3">{{ $customers->present_address }}</textarea>
                                <span id="present_address-error" class="text-danger"></span>
                            </div>

                            <div class="form-check">
                                <input type="checkbox" id="same_as_present" class="form-check-input">
                                <label for="same_as_present" class="form-check-label text-primary">Present address same as permanent address</label>
                            </div><br>

                            <div class="form-group">
                                <label for="permanent_address">Permanent Address</label> <span class="text-danger">*</span>
                                <textarea id="permanent_address" name="permanent_address" class="form-control" rows="3">{{ $customers->permanent_address }}</textarea>
                                <span id="permanent_address-error" class="text-danger"></span>
                            </div>

                            <div class="form-group">
                                <label for="insurance_type">Insurance Type</label> <span class="text-danger">*</span>
                                <input type="text" id="insurance_type" name="insurance_type" class="form-control" value="{{ $customers->ins_type }}">
                                <span id="insurance_type-error" class="text-danger"></span>
                            </div>

                            <div class="form-group"> <span class="text-danger">*</span>
                                <label for="case_details">Case Details</label>
                                <textarea id="case_details" name="case_details" class="form-control" rows="3" placeholder="Enter case details">{{ $customers->case_details }}</textarea>
                                <span id="case_details-error" class="text-danger"></span>
                            </div>


                             <div class="form-group"> <span class="text-danger">*</span>
                                <label for="crime_no">Crime Number</label>
                                <input type="text" id="crime_no" name="crime_no" class="form-control" value="{{ $customers->crime_number }}">
                                <span id="crime_no-error" class="text-danger"></span>
                            </div>

                             <div class="form-group"> <span class="text-danger">*</span>
                                <label for="police_station">Police Station </label>
                                <input type="text" id="police_station" name="police_station" class="form-control" value="{{ $customers->police_station }}">
                                <span id="police_station-error" class="text-danger"></span>
                            </div>



                            <div class="form-group">
                                <label for="policy_no">Policy No</label> <span class="text-danger">*</span>
                                <input type="text" id="policy_no" name="policy_no" class="form-control" value="{{ $customers->policy_no }}">
                                <span id="policy_no-error" class="text-danger"></span>
                            </div>
                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label for="policy_start">Policy Start Date</label> <span class="text-danger">*</span>
                                    <input type="date" id="policy_start" name="policy_start" class="form-control" value="{{ $customers->policy_start }}">
                                    <span id="policy_start-error" class="text-danger"></span>
                                </div>

                                <div class="form-group col-md-6">
                                    <label for="policy_end">Policy End Date</label>
                                    <input type="date" id="policy_end" name="policy_end" class="form-control" value="{{ $customers->policy_end }}">
                                    <span id="policy_end-error" class="text-danger"></span>
                                </div>
                            </div>


                            <div class="form-group">
    <label for="intimation_report">Intimation Report</label>
    <input type="file" id="intimation_report" name="intimation_report" class="form-control">
    
    @if (!empty($customers->intimation_report))
        <div class="mt-2">
            <a href="{{ asset('storage/' . $customers->intimation_report) }}" target="_blank">View Existing Report</a>
        </div>
    @endif
    
    <span id="intimation_report-error" class="text-danger"></span>
</div>


                            <div class="form-group">
                                <label for="investigation_type">Investigation Type</label> <span class="text-danger">*</span>
                                <select name="investigation_type" id="investigation_type" class="form-select">
                                    <option value="OD" {{ $customers->insurance_type == 'OD' ? 'selected' : '' }}>OD</option>
                                    <option value="MAC" {{ $customers->insurance_type == 'MAC' ? 'selected' : '' }}>MAC</option>
                                </select>
                                <span id="investigation_type-error" class="text-danger"></span>
                            </div></br>

                            <div class="form-group col col-12">
                                        <label for="executive_1">Select Default Executive</label> <span
                                            class="text-danger">*</span>
                                        <select name="Default_Executive" id="executive_1" onChange="exe1()" class="form-select" required>
                                            <option disabled selected>Select the executive</option>
                                            @foreach ($users as $user)
                                            <option value="{{ $user->id }}" {{ $user->id == $customers->meeting_id ? 'selected' : '' }}>
                                            {{ $user->name }} ({{ $user->place }})
                                                </option>
                                            @endforeach
                                        </select>
                                        <span class="text-danger" id="Default_Executive-error"></span>
                                    </div>
                                
                            
                            <div class="container row" id="sub-executive-group">
                                
                                    <div class="row">
                                        <div class="form-group col col-6">
                                            <label for="executive_2">Select Executive (Driver)</label>
                                            <select name="executive_driver" id="executive_2" class="form-select">
                                                <option disabled selected>Select the executive</option>
                                                @foreach ($users as $user)
                                                    <option value="{{ $user->id }}" {{ $user->id == $customers->driver_id ? 'selected' : '' }} >
                                                    {{ $user->name}}({{ $user->place }})
                                                    </option>
                                                @endforeach
                                            </select>
                                            <span class="text-danger" id="executive_driver-error"></span>
                                        </div>
                                        <div class="col col-6">
                                            <label for="executive_3">Select Executive (Garage)</label>
                                            <select name="executive_garage" id="executive_3" class="form-select">
                                                <option disabled selected>Select the executive</option>
                                                @foreach ($users as $user)
                                                    <option value="{{ $user->id }}" {{ $user->id == $customers->garage_id ? 'selected' : '' }}>{{ $user->name }}
                                                        ({{ $user->place }})
                                                    </option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group col col-6">
                                            <label for="executive_4">Select Executive (Spot)</label>
                                            <select name="executive_spot" id="executive_4" class="form-select">
                                                <option disabled selected>Select the executive</option>
                                                @foreach ($users as $user)
                                                    <option value="{{ $user->id }}" {{ $user->id == $customers->spot_id ? 'selected' : '' }}>{{ $user->name }}
                                                    {{ $user->name}}({{ $user->place }})
                                                    </option>
                                                @endforeach
                                            </select>
                                        </div>

                                       
                                            <div class="form-group col col-6">
                                                <label for="executive_5">Select Executive (Meeting)</label>
                                                <select name="executive_meeting" id="executive_5" class="form-select">
                                                    <option disabled selected>Select the executive</option>
                                                    @foreach ($users as $user)
                                                        <option value="{{ $user->id }}" {{ $user->id == $customers->spot_id ? 'selected' : '' }}>
                                                        {{ $user->name}}({{ $user->place }})
                                                        </option>
                                                    @endforeach
                                                </select>
                                            </div>
                                       
                                    </div>
                                
                               
                                <!-- New Dropdown for Accident Person -->
                                
                                    <div class="row">
                                         @if($customers->case_type=="MAC")
                                            <div class="form-group col col-6" id="accident">
                                                <label for="executive_6">Select Executive (Accident Person)</label>
                                                <select name="executive_accident_person" id="executive_6" class="form-select">
                                                    <option disabled selected>Select the executive</option>
                                                    @foreach ($users as $user)
                                                        <option value="{{ $user->id }}" {{ $user->id == $customers->accident_id ? 'selected' : '' }}>
                                                        {{ $user->name}}({{ $user->place }})
                                                        </option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        @endif
                                        
                                        <div class="form-group col col-6">
                                            <label for="date">Select Investigation Date</label> <span
                                                class="text-danger">*</span>
                                            <input type="date" name="date" id="date" class="form-control" value="{{$customers->case_date}}" required>
                                            @error('date')
                                                <span class="text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>
                                    
                                    </div>
                                
                            </div>

                            
                            <div class="form-group">
                                <div class="row">
                                    <div class="col">
                                        <label for="other">Other Details</label>
                                        <textarea name="other" id="other" class="form-control" cols="30" rows="5">{{$customers->case_other}}</textarea>
                                        @error('other')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                </div>
                            </div>

                            <button type="submit" class="btn btn-primary">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
   
    <script>
       
            // Handle checkbox for emergency contact number
            $('#same_as_phone').on('change', function() {
                if ($(this).is(':checked')) {
                    $('#emergency_contact_number').val($('#phone').val());
                } else {
                    $('#emergency_contact_number').val('');
                }
            });

            // Handle checkbox for addresses
            $('#same_as_present').on('change', function() {
                if ($(this).is(':checked')) {
                    $('#permanent_address').val($('#present_address').val());
                } else {
                    $('#permanent_address').val('');
                }
            });

            // Handle form submission
            // $('#insuranceForm').on('submit', function(e) {
            //     e.preventDefault();
            //     $.ajax({
            //         url: "",
            //         type:'',
            //         data: $(this).serialize(), 
            //         success: function(response) {
            //             if (response.success) {
            //                 $('#successMessage').text(response.success).show();
            //                 $('#insuranceForm')[0].reset(); 
            //                 $('.text-danger').text(''); 
            //                 $('#same_as_phone').prop('checked', false); 
            //                 $('#same_as_present').prop('checked', false); 
            //             }
            //         },
            //         error: function(xhr) {
            //             var errors = xhr.responseJSON.errors;
            //             $('.text-danger').text(''); // Clear previous error messages
            //             $.each(errors, function(key, value) {
            //                 $('#' + key + '-error').text(value);
            //             });
            //         }
            //     });
            // });

    //         $(document).ready(function() {
    //         $('#caseForm').on('submit', function(e) {
    //             e.preventDefault();

    //             $.ajax({
    //                 url: '{{ route('store.case') }}',
    //                 type: 'POST',
    //                 data: $(this).serialize(),
    //                 success: function(response) {
    //                     if (response.success) {
    //                         $('#successMessage').text(response.success).show();
    //                         $('#caseForm')[0].reset(); // Reset form fields
    //                         $('.text-danger').text(''); // Clear previous error messages
    //                     }
    //                 },
    //                 error: function(xhr) {
    //                     var errors = xhr.responseJSON.errors;
    //                     $('.text-danger').text(''); // Clear previous error messages
    //                     $.each(errors, function(key, value) {
    //                         $('#' + key + '-error').text(value);
    //                     });
    //                 }
    //             });
    //         });
    //     });
     
    //     var accident = $('#accident');
    //     var insPerson = <?php echo json_encode($insuranceCustomer); ?>;
    //         if (insPerson.insurance_type === 'MAC') 
    //         {
    //             accident.show();
    //         } else {
    //             accident.hide();
    //         }
    //         $('#sub-executive-group').hide();
    
    // function exe1(){
    //     var insPerson = <?php echo json_encode($insuranceCustomer); ?>;
    //     var exe1=$('#executive_1').val();
    //     var exe2=$('#executive_2');
    //     var exe3=$('#executive_3');
    //     var exe4=$('#executive_4');
    //     var exe5=$('#executive_5');
    //     var exe6=$('#executive_6');
    //     var accident=$('#accident');
    //     console.log(exe1);
    //     if(exe1!=''){
    //     $('#sub-executive-group').show();
    //     exe2.val(exe1);
    //     exe3.val(exe1);
    //     exe4.val(exe1);
    //     exe5.val(exe1);
    //     if (insPerson.insurance_type === 'MAC') 
    //         {
    //             accident.show();
    //             exe6.val(exe1);
    //         } else {
    //             accident.hide();
    //             exe6.val('');
    //         }

    //     }else{
    //         $('#sub-executive-group').hide(); 
    //     }
    // }
        
    </script>
@endsection
