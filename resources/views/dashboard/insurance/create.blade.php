@extends('dashboard.layout.app')
@section('title', 'Add New Insurance Customer')
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
                        <h4>Add New Insurance Customer</h4>
                    </div>
                    <div id="successMessage" class="alert alert-success mt-3" style="display: none;"></div>
                    <div class="card-body">
                        <form id="insuranceForm" action="" method="POST"  enctype="multipart/form-data">
                            @csrf
                            <div class="form-group">
                                <label for="company">Select Company</label> <span class="text-danger">*</span>
                                <select id="company" name="company" class="form-control">
                                    <option disabled selected>Select Company</option>
                                    @foreach ($companies as $company)
                                        <option value="{{$company->id}}">{{$company->name}}</option>
                                    @endforeach
                                </select>
                                <span id="company-error" class="text-danger"></span>
                            </div>

                            <div class="form-group">
                                <label for="name">Name</label> <span class="text-danger">*</span>
                                <input type="text" id="name" name="name" class="form-control" placeholder="Enter name">
                                <span id="name-error" class="text-danger"></span>
                            </div>

                            <div class="form-group">
                                <label for="father_name">Father's Name</label> <span class="text-danger">*</span>
                                <input type="text" id="father_name" name="father_name" class="form-control" placeholder="Enter father's name">
                                <span id="father_name-error" class="text-danger"></span>
                            </div>

                            <div class="form-group">
                                <label for="phone">Phone</label> <span class="text-danger">*</span>
                                <input type="text" id="phone" name="phone" class="form-control" placeholder="Enter phone number">
                                <span id="phone-error" class="text-danger"></span>
                            </div>

                            <div class="form-check">
                                <input type="checkbox" id="same_as_phone" class="form-check-input">
                                <label for="same_as_phone" class="form-check-label text-primary">Emergency contact number same as phone</label>
                            </div><br>

                            <div class="form-group"> <span class="text-danger">*</span>
                                <label for="emergency_contact_number">Emergency Contact Number</label>
                                <input type="text" id="emergency_contact_number" name="emergency_contact_number" class="form-control" placeholder="Enter emergency contact number">
                                <span id="emergency_contact_number-error" class="text-danger"></span>
                            </div>

                            <div class="form-group">
                                <label for="email">Email</label>
                                <input type="email" id="email" name="email" class="form-control" placeholder="Enter email">
                                <span id="email-error" class="text-danger"></span>
                            </div>

                            <div class="form-group"> <span class="text-danger">*</span>
                                <label for="present_address">Present Address</label>
                                <textarea id="present_address" name="present_address" class="form-control" rows="3" placeholder="Enter present address"></textarea>
                                <span id="present_address-error" class="text-danger"></span>
                            </div>

                            <div class="form-check">
                                <input type="checkbox" id="same_as_present" class="form-check-input">
                                <label for="same_as_present" class="form-check-label text-primary">Present address same as permanent address</label>
                            </div><br>

                            <div class="form-group"> <span class="text-danger">*</span>
                                <label for="permanent_address">Permanent Address</label>
                                <textarea id="permanent_address" name="permanent_address" class="form-control" rows="3" placeholder="Enter permanent address"></textarea>
                                <span id="permanent_address-error" class="text-danger"></span>
                            </div>

                            <div class="form-group"> <span class="text-danger">*</span>
                                <label for="insurance_type">Insurance Type</label>
                                <input type="text" id="insurance_type" name="insurance_type" class="form-control" placeholder="Enter insurance type">
                                <span id="insurance_type-error" class="text-danger"></span>
                            </div>

                            <div class="form-group"> <span class="text-danger">*</span>
                                <label for="case_details">Case Details</label>
                                <textarea id="case_details" name="case_details" class="form-control" rows="3" placeholder="Enter case details"></textarea>
                                <span id="case_details-error" class="text-danger"></span>
                            </div>


                                  <div class="form-group"> <span class="text-danger">*</span>
                                <label for="crime_no">Crime Number</label>
                                <input type="text" id="crime_no" name="crime_no" class="form-control" placeholder="Enter Crime Number">
                                <span id="crime_no-error" class="text-danger"></span>
                            </div>

                             <div class="form-group"> <span class="text-danger">*</span>
                                <label for="police_station">Police Station </label>
                                <input type="text" id="police_station" name="police_station" class="form-control" placeholder="Enter Police Station">
                                <span id="police_station-error" class="text-danger"></span>
                            </div>

                            <div class="form-group">
                                <label for="policy_no">Policy No</label> <span class="text-danger">*</span>
                                <input type="text" id="policy_no" name="policy_no" class="form-control" placeholder="Policy No">
                                <span id="policy_no-error" class="text-danger"></span>
                            </div>
                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label for="policy_no">Policy Start Date</label> <span class="text-danger">*</span>
                                    <input type="date" id="policy_start" name="policy_start" class="form-control" placeholder="Policy Start Date">
                                    <span id="policy_start-error" class="text-danger"></span>
                                </div>

                                <div class="form-group col-md-6">
                                    <label for="policy_no">Policy End Date</label>
                                    <input type="date" id="policy_end" name="policy_end" class="form-control" placeholder="Policy End Date">
                                    <span id="policy_end-error" class="text-danger"></span>
                                </div>
                            </div>

                            <div class="form-group">
                                    <label for="intimation_report">Intimation Report</label>
                                    <input type="file" id="intimation_report" name="intimation_report" class="form-control">
                                    <span id="intimation_report-error" class="text-danger"></span>
                                </div>
                                                   
                            <div class="form-group">
                                        <label for="investigation_type">Investigation Type</label> <span
                                            class="text-danger">*</span>
                                        <select name="investigation_type" id="investigation_type" class="form-select"
                                            required>
                                            <option selected disabled>Select the investigation type</option>
                                            <option value="OD">OD</option>
                                            <option value="MACT">MACT</option>
                                        </select>
                                        <span class="text-danger" id="investigation_type-error"></span>
                            </div>
                            </br>
                                    <div class="form-group col col-12">
                                        <label for="executive_1">Select Default Executive</label> <span
                                            class="text-danger">*</span>
                                        <select name="Default_Executive" id="executive_1" onChange="exe1()" class="form-select" required>
                                            <option disabled selected>Select the executive</option>
                                            @foreach ($users as $user)
                                                <option value="{{ $user->id }}">{{ $user->name }}
                                                    ({{ $user->place }})
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
                                                    <option value="{{ $user->id }}">{{ $user->name }}
                                                        ({{ $user->place }})
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
                                                    <option value="{{ $user->id }}">{{ $user->name }}
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
                                                    <option value="{{ $user->id }}">{{ $user->name }}
                                                        ({{ $user->place }})
                                                    </option>
                                                @endforeach
                                            </select>
                                        </div>

                                        <div class="form-group col col-6">
                                            <label for="executive_5">Select Executive (Meeting)</label>
                                            <select name="executive_meeting" id="executive_5" class="form-select">
                                                <option disabled selected>Select the executive</option>
                                                @foreach ($users as $user)
                                                    <option value="{{ $user->id }}">{{ $user->name }}
                                                        ({{ $user->place }})
                                                    </option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                
                               
                                <!-- New Dropdown for Accident Person -->
                                
                                    <div class="row">
                                        <div class="form-group col col-6" id="accident">
                                            <label for="executive_6">Select Executive (Accident Person)</label>
                                            <select name="executive_accident_person" id="executive_6" class="form-select">
                                                <option disabled selected>Select the executive</option>
                                                @foreach ($users as $user)
                                                    <option value="{{ $user->id }}">{{ $user->name }}
                                                        ({{ $user->place }})
                                                    </option>
                                                @endforeach
                                            </select>
                                        </div>

                                        
                                        <div class="form-group col col-6">
                                            <label for="date">Select Investigation Date</label> <span
                                                class="text-danger">*</span>
                                            <input type="date" name="date" id="date" class="form-control" required>
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
                                        <textarea name="other" id="other" class="form-control" cols="30" rows="5"></textarea>
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


    @php
    $insPerson = $insuranceCustomer ?? null;
@endphp

<script>
$(document).ready(function() {
    const insPerson = @json($insPerson);

    // 1️⃣ Checkbox logic: copy phone/address values
    $('#same_as_phone').on('change', function() {
        $('#emergency_contact_number').val($(this).is(':checked') ? $('#phone').val() : '');
    });
    $('#same_as_present').on('change', function() {
        $('#permanent_address').val($(this).is(':checked') ? $('#present_address').val() : '');
    });

    // 2️⃣ Initial exec group & accident field visibility
    $('#sub-executive-group').hide();
    if (insPerson && insPerson.insurance_type === 'MAC') {
        $('#accident').show();
    } else {
        $('#accident').hide();
    }

    // 3️⃣ On executive_1 change
    window.exe1 = function() {
        const execVal = $('#executive_1').val();
        const execFields = ['#executive_2','#executive_3','#executive_4','#executive_5','#executive_6'];
        if (execVal) {
            $('#sub-executive-group').show();
            execFields.forEach((sel, index) => {
                if (index < 5) {
                    $(sel).val(execVal);
                }
            });
            if (insPerson && insPerson.insurance_type === 'MAC') {
                $('#accident').show();
                $('#executive_6').val(execVal);
            } else {
                $('#accident').hide();
                $('#executive_6').val('');
            }
        } else {
            $('#sub-executive-group').hide();
        }
    };

    // 4️⃣ AJAX form submit with file support
    $('#insuranceForm').on('submit', function(e) {
        e.preventDefault();
        let formData = new FormData(this);

        $.ajax({
            url: "{{ route('insurance.store') }}",
            type: 'POST',
            data: formData,
            processData: false, // 🚫 Important for FormData
            contentType: false, // 🚫 Important for FormData
            success: function(response) {
                if (response.success) {
                    $('#successMessage').text(response.success).show();
                    $('#insuranceForm')[0].reset();
                    $('.text-danger').text('');

                    setTimeout(() => {
                        $('#same_as_phone').prop('checked', false);
                        $('#same_as_present').prop('checked', false);
                    }, 10);
                }
            },
            error: function(xhr) {
                const errors = xhr.responseJSON?.errors || {};
                $('.text-danger').text('');

                $.each(errors, (key, val) => {
                    $('#' + key + '-error').text(val[0] || val);
                });
            }
        });
    });
});
</script>


    <script>
        $(document).ready(function() {
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


            // $('#insuranceForm').on('submit', function(e) 
            // {
            // e.preventDefault();

            // let formData = new FormData(this);

            // $.ajax({
            // url: "{{ route('insurance.store') }}",
            // type: 'POST',
            // data: formData,
            // success: function(response) {
            // if (response.success) {
            // $('#successMessage').text(response.success).show();
            // $('#insuranceForm')[0].reset(); // Reset form fields
            // $('.text-danger').text(''); // Clear previous error messages
            // $('#same_as_phone').prop('checked', false); // Uncheck the checkbox
            // $('#same_as_present').prop('checked', false); // Uncheck the checkbox
            // }
            // },
            // error: function(xhr) {
            // var errors = xhr.responseJSON.errors;
            // $('.text-danger').text(''); // Clear previous error messages
            // $.each(errors, function(key, value) {
            // $('#' + key + '-error').text(value);
            // });
            // }
            // });
            // });
            });


            // $(document).ready(function () {
            // $('#insuranceForm').on('submit', function (e) {
            // e.preventDefault();

            // // Create FormData object for file + form support
            // let formData = new FormData(this);

            // $.ajax({
            // url: "{{ route('insurance.store') }}",
            // type: 'POST',
            // data: formData,
            // processData: false,  // Don't process into query string
            // contentType: false,  // Let browser set correct multipart/form-data headers
            // success: function (response) {
            //     if (response.success) {
            //         $('#successMessage').text(response.success).show();
            //         $('#insuranceForm')[0].reset(); // Reset form fields
            //         $('.text-danger').text(''); // Clear previous error messages

            //         // Delay to override reset effect
            //         setTimeout(() => {
            //             $('#same_as_phone').prop('checked', false);
            //             $('#same_as_present').prop('checked', false);
            //         }, 10);
            //     }
            // },
            // error: function (xhr) {
            //     var errors = xhr.responseJSON.errors;
            //     $('.text-danger').text(''); // Clear previous error messages
            //     $.each(errors, function (key, value) {
            //         $('#' + key + '-error').text(value[0]);
            //     });
            // }
            // });
            // });
            // });

            

        // $(document).ready(function () {
        // $('#caseForm').on('submit', function (e) {
        // e.preventDefault();

        // let formData = new FormData(this); // 🔁 Use FormData

        // $.ajax({
        // url: '{{ route('store.case') }}',
        // type: 'POST',
        // data: formData,
        // processData: false,  // Required for file upload
        // contentType: false,  // Required for file upload
        // success: function (response) {
        // if (response.success) {
        // $('#successMessage').text(response.success).fadeIn();

        // $('#caseForm')[0].reset();  // Reset form
        // $('.text-danger').text('');

        // setTimeout(function () {
        //     $('#successMessage').fadeOut();
        //     location.reload(); // Reload the page
        // }, 8000);
        // }
        // },
        // error: function (xhr) {
        // let errors = xhr.responseJSON.errors;
        // $('.text-danger').text('');
        // $.each(errors, function (key, value) {
        // $('#' + key + '-error').text(value[0]);
        // });
        // }
        // });
        // });
        // });





            // $('#insuranceForm').on('submit', function(e) 
            // {
            // e.preventDefault();

            // let formData = new FormData(this); // ⚠️ this captures files as well

            // $.ajax({
            // url: "{{ route('insurance.store') }}",
            // type: 'POST',
            // data: formData,
            // processData: false,   // ⛔ Don't process data
            // contentType: false,   // ⛔ Don't set content type
            // success: function(response) {
            // if (response.success) {
            // $('#successMessage').text(response.success).show();
            // $('#insuranceForm')[0].reset(); 
            // $('.text-danger').text('');
            // $('#same_as_phone').prop('checked', false);
            // $('#same_as_present').prop('checked', false);
            // }
            // },
            // error: function(xhr) {
            // var errors = xhr.responseJSON.errors;
            // $('.text-danger').text('');
            // $.each(errors, function(key, value) {
            // $('#' + key + '-error').text(value);
            // });
            // }
            // });
            // });


        // $(document).ready(function() {
        //     $('#caseForm').on('submit', function(e) {
        //         e.preventDefault();

        //         $.ajax({
        //             url: '{{ route('store.case') }}',
        //             type: 'POST',
        //             data: $(this).serialize(),
        //             success: function(response) {
        //                 if (response.success) {
        //                     $('#successMessage').text(response.success).show();
        //                     $('#caseForm')[0].reset(); // Reset form fields
        //                     $('.text-danger').text(''); // Clear previous error messages
        //                 }
        //             },
        //             error: function(xhr) {
        //                 var errors = xhr.responseJSON.errors;
        //                 $('.text-danger').text(''); // Clear previous error messages
        //                 $.each(errors, function(key, value) {
        //                     $('#' + key + '-error').text(value);
        //                 });
        //             }
        //         });
        //     });
        // });
     
//         var accident = $('#accident');
//         var insPerson = <?php echo json_encode($insuranceCustomer); ?>;
//             if (insPerson.insurance_type === 'MAC') 
//             {
//                 accident.show();
//             } else {
//                 accident.hide();
//             }
//             $('#sub-executive-group').hide();
    
//     function exe1(){
//         var insPerson = <?php echo json_encode($insuranceCustomer); ?>;
//         var exe1=$('#executive_1').val();
//         var exe2=$('#executive_2');
//         var exe3=$('#executive_3');
//         var exe4=$('#executive_4');
//         var exe5=$('#executive_5');
//         var exe6=$('#executive_6');
//         var accident=$('#accident');
//         console.log(exe1);
//         if(exe1!=''){
//         $('#sub-executive-group').show();
//         exe2.val(exe1);
//         exe3.val(exe1);
//         exe4.val(exe1);
//         exe5.val(exe1);
//         if (insPerson.insurance_type === 'MAC') 
//             {
//                 accident.show();
//                 exe6.val(exe1);
//             } else {
//                 accident.hide();
//                 exe6.val('');
//             }

//         }else{
//             $('#sub-executive-group').hide(); 
//         }
//   }
    </script>
@endsection
