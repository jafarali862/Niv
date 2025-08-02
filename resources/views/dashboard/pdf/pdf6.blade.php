<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>New india tvm report</title>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }

        th,
        td {
            width: 50%;
            border: 1px solid black;
            padding: 8px;
            text-align: left;
        }

        ul {
            line-height: 1.8;
            text-align: justify;
        }

        li {
            margin-bottom: 10px;
        }
    </style>
</head>

<body>
    <div id="container" style="display: flex; justify-content: center;">
        <div style="width: 700px;">
            <div style="text-align: end;">
                <img src="{{ public_path('images/erg.png') }}">
            </div>

            <table>
                <tr>
                    <th colspan="2" style="text-align: center; background-color: aquamarine;">
                        <p style="font-size: 25;">Investigation Report</p>
                    </th>
                </tr>
                <tr>
                    <td>Name of Investigator</td>
                    <td>{{$finalReport->owner_executive}}</td>
                </tr>
                <tr>
                    <td>Contact Details of Investigator</td>
                    <td>{{$finalReport->insurance_com_address}}.
                        <br>Phone no:{{$finalReport->insurance_com_phone}} <br>Email: {{$finalReport->insurance_com_email}}
                    </td>
                </tr>
            </table>
            <br>


            <table border="1">

                <tr>
                    <td>Claim No</td>
                    <td>{{$finalReport->claim_no}}</td>
                </tr>
                <tr>
                    <td>Interaction No.</td>
                    <td>{{$finalReport->interact_no}}</td>
                </tr>
                <tr>
                    <td>Policy No.</td>
                    <td>{{$finalReport->customer_policy_no}}</td>
                </tr>
                <tr>
                    <td>Policy period</td>
                    <td>{{$finalReport->customer_policy_start}} TO {{$finalReport->customer_policy_end}}</td>
                </tr>
                <tr>
                    <td>Date of loss & time</td>
                    <td>{{$finalReport->accident_date_time}}</td>
                </tr>
                <tr>
                    <td>Did accident happen on National holiday, if yes then state the name of Holiday</td>
                    <td>{{$finalReport->accident_hapn_nat_hoilday}}</td>
                </tr>
                <tr>
                    <td>Date of claim intimated to call center</td>
                    <td>{{$finalReport->date_claim_intimated}}</td>
                </tr>
                <tr>
                    <td>Reasons for late intimation to co. (in case delay is more than 10 days)</td>
                    <td>{{$finalReport->reason_late_intimation}}</td>
                </tr>
                <tr>
                    <td colspan="2"></td>
                </tr>
                <tr>
                    <td>Name of Insured</td>
                    <td>{{$finalReport->customer_name}}</td>
                </tr>
                <tr>
                    <td>Insured Profession</td>
                    <td>{{$finalReport->insured_profession}}</td>
                </tr>
                <tr>
                    <td>Address - Actual and not as per policy</td>
                    <td>{{$finalReport->address_mobile_accused}}</td>
                </tr>
                <tr>
                    <td>Address pertains to negative area</td>
                    <td>@if($finalReport->is_neg_area_address==1) Yes @else No @endif</td>
                </tr>
                <tr>
                    <td>Contact Person and contact no.</td>
                    <td>{{$finalReport->customer_name}} & {{$finalReport->customer_phone}}</td>
                </tr>
                <tr>
                    <td>Pan Number</td>
                    <td>{{$finalReport->pan_no_owner}}</td>
                </tr>
                <tr>
                    <td>Aadhar Number</td>
                    <td>{{$finalReport->aadhar_no_owner}}</td>
                </tr>
                <tr>
                    <td colspan="2"></td>
                </tr>
                <tr>
                    <td>Vehicle Registration No.</td>
                    <td>{{$finalReport->vehicle_no}}</td>
                </tr>
                <tr>
                    <td>Make & Model</td>
                    <td>{{$finalReport->made_make}}</td>
                </tr>
                <tr>
                    <td>Vehicle Type</td>
                    <td>{{$finalReport->class_of_vehicle}}</td>
                </tr>
                <tr>
                    <td>Chassis No.</td>
                    <td>{{$finalReport->chass_no}}</td>
                </tr>
                <tr>
                    <td>Engine No.</td>
                    <td>{{$finalReport->engine_no}}</td>
                </tr>
                <tr>
                    <td>HYP Details</td>
                    <td>{{$finalReport->hyp_details}}</td>
                </tr>
                <tr>
                    <td>Vehicle Damages</td>
                    <td>{{$finalReport->vehicle_damages}}</td>
                </tr>
                <tr>
                    <td colspan="2"></td>
                </tr>
                <tr>
                    <td>Commercial Vehicle details</td>
                    <td>{{$finalReport->comercl_vehicle_details}}</td>
                </tr>
                <tr>
                    <td>Material loaded at the time of loss</td>
                    <td>{{$finalReport->material_loss_accidnt}}</td>
                </tr>
                <tr>
                    <td>Quantity</td>
                    <td>{{$finalReport->material_quantity}}</td>
                </tr>
                <tr>
                    <td>Loading receipt available</td>
                    <td>@if($finalReport->is_load_recept_available==1) Yes @else No @endif</td>
                </tr>
                <tr>
                    <td colspan="2"></td>
                </tr>
                <tr>
                    <td>Fitness</td>
                    <td>{{$finalReport->fitness_details}}</td>
                </tr>
                <tr>
                    <td>Date of issue and date of expiry</td>
                    <td>{{$finalReport->fitness_validity_vehicle}}</td>
                </tr>
                <tr>
                    <td>Name of RTO authority</td>
                    <td>{{$finalReport->issuing_authority_vehicle}}</td>
                </tr>
                <tr>
                    <td colspan="2"></td>
                </tr>
                <tr>
                    <td>Permit</td>
                    <td>{{$finalReport->permit_no_vehicle}}</td>
                </tr>
                <tr>
                    <td>Area covered</td>
                    <td>{{$finalReport->area_covered}}</td>
                </tr>
                <tr>
                    <td>Date of issue and date of expiry</td>
                    <td>{{$finalReport->permit_validity_vehicle}}</td>
                </tr>
                <tr>
                    <td colspan="2"></td>
                </tr>
                <tr>
                    <td>Policy details</td>
                    <td>{{$finalReport->policy_details}}</td>
                </tr>
                <tr>
                    <td>Policy Type</td>
                    <td>{{$finalReport->customer_insurance_type}}</td>
                </tr>
                <tr>
                    <td>Policy period</td>
                    <td>{{$finalReport->customer_policy_start}} TO {{$finalReport->customer_policy_end}}</td>
                </tr>
                <tr>
                    <td>Name of Agent/Dealer (Policy Issuing Authority)</td>
                    <td>{{$finalReport->owner_executive}}</td>
                </tr>
                <tr>
                    <td colspan="2"></td>
                </tr>
                <tr>
                    <td>Previous Insurer (in rollover)</td>
                    <td>{{$finalReport->prev_insurer}}</td>
                </tr>
                <tr>
                    <td>Previous Policy No.</td>
                    <td>{{$finalReport->prev_policy_no}}</td>
                </tr>
                <tr>
                    <td>Verified Policy in previous insurance co.</td>
                    <td>{{$finalReport->policy_detl}}</td>
                </tr>
                <tr>
                    <td>Any claim reported in previous policy</td>
                    <td>@if($finalReport->any_clain_in_prev_policy==1) Yes @else NO @endif</td>
                </tr>
                <tr>
                    <td>Photographs available of previous claim</td>
                    <td>@if($finalReport->is_prev_claim_photo_available==1)Yes @else NO @endif</td>
                </tr>
                <tr>
                    <td colspan="2"></td>
                </tr>
                <tr>
                    <td>Break in</td>
                    <td>@if($finalReport->is_break_in==1) Yes @else No @endif</td>
                </tr>
                <tr>
                    <td>Break in Inspection date (if yes)</td>
                    <td>{{$finalReport->break_in_ins_date}}</td>
                </tr>
                <tr>
                    <td>Odometer reading at the time of break in</td>
                    <td>{{$finalReport->odometer_readng_break_in}}</td>
                </tr>
                <tr>
                    <td>Any discrepancy in break in and damaged photo</td>
                    <td>@if($finalReport->is_any_discre_found_break_in==1) Yes @else No @endif</td>
                </tr>
                <tr>
                    <td colspan="2"></td>
                </tr>
                <tr>
                    <td>FIR No.</td>
                    <td>{{$finalReport->fir_no}}</td>
                </tr>
                <tr>
                    <td>FIR Details</td>
                    <td>{{$finalReport->fir_vers_accdnt}}</td>
                </tr>
                <tr>
                    <td>Panchanama Details</td>
                    <td>{{$finalReport->inquest_panchnama}}</td>
                </tr>
                <tr>
                    <td>Hospital Records</td>
                    <td>{{$finalReport->injured_hospital_report}}</td>
                </tr>
                <tr>
                    <td>Injury Details (Insured/Driver/TP)</td>
                    <td>{{$finalReport->injury_record_details}}</td>
                </tr>
                <tr>
                    <td colspan="2"></td>
                </tr>
                <tr>
                    <td>Driver details</td>
                    <td>{{$finalReport->driver_name}}</td>
                </tr>
                <tr>
                    <td>Driver relationship with insured</td>
                    <td>{{$finalReport->rel_accused_insured}}</td>
                </tr>
                <tr>
                    <td>DL details/ Any Endorsements</td>
                    <td>{{$finalReport->dl_no_owner}}</td>
                </tr>
                <tr>
                    <td>Name of RTO (Licensing Authority) from DL is issued</td>
                    <td>{{$finalReport->dl_and_rto}}</td>
                </tr>
                <tr>
                    <td>Eligible to drive</td>
                    <td>@if($finalReport->is_accused_elgible_drive==1) Yes @else No @endif</td>
                </tr>
                <tr>
                    <td>DL validity details</td>
                    <td>{{$finalReport->driver_lic_exp_date}}</td>
                </tr>
                <tr>
                    <td colspan="2"></td>
                </tr>
                <tr>
                    <td>Travelling from where _________ to where_________</td>
                    <td>{{$finalReport->travel_from_to}}</td>
                </tr>
                <tr>
                    <td>Accident version - exact loss location details</td>
                    <td>{{$finalReport->accident_description}} <br> {{$finalReport->about_accident}}.</td>
                </tr>
                <tr>
                    <td>Spot visit/enquiry</td>
                    <td>@if($finalReport->spot_location) YES @else No @endif</td>
                </tr>

                @php
                $cordinate=$finalReport->accident_cordinate;
                if( $cordinate){
                $cordinateArray=explode('',$cordinate);
                $latitude=$cordinateArray[0];
                $longitude=$cordinateArray[1];
                }else{
                $latitude='NA';
                $longitude='NA';
                }


                @endphp
                <tr>
                    <td>Accident spot Latitude</td>
                    <td>{{$latitude}}</td>
                </tr>
                <tr>
                    <td>Accident spot Longitude</td>
                    <td>{{$longitude}}</td>
                </tr>
                <tr>
                    <td>Co-relating spot with accident from clues like tire marks/broken glasses/hit marks on tree/any
                        other objects</td>
                    <td>{{$finalReport->clue_aout_accident}}</td>
                </tr>
                <tr>
                    <td>Co-relating spot above (point) with damages on vehicle</td>
                    <td>@if($finalReport->car_scrap_found_on_spot==1) Yes @else No @endif</td>
                </tr>
                <tr>
                    <td>Police intimation details</td>
                    <td>{{$finalReport->fir_vers_accdnt}}</td>
                </tr>
                <tr>
                    <td colspan="2"></td>
                </tr>
                <tr>
                    <td>Garage Visit</td>
                    <td>{{$finalReport->gate_entry_date}}</td>
                </tr>
                <tr>
                    <td>Name of garage</td>
                    <td>{{$finalReport->garage_name}}</td>
                </tr>
                <tr>
                    <td>Date and time of gate pass entry</td>
                    <td>{{$finalReport->gate_entry_date}}</td>
                </tr>
                <tr>
                    <td>Job card date and details</td>
                    <td>{{$finalReport->gate_entry_date}} & {{$finalReport->job_card}}</td>
                </tr>
                <tr>
                    <td>Odometer reading and service history of vehicle</td>
                    <td>{{$finalReport->odometer_reading_service_hist}}</td>
                </tr>
                <tr>
                    <td>Towing vendor details (towed from ________ to _______ by whom date and time)</td>
                    <td>NA</td>
                </tr>
                <tr>
                    <td>TP vehicle details</td>
                    <td>{{$finalReport->tp_vehicle_details}}</td>
                </tr>
                <tr>
                    <td>Any Discrepancy observed in Gate entry and Job card Entry?</td>
                    <td>@if($finalReport->is_any_disc_in_garage_entry_job_crd==1) Yes @else NO @endif</td>
                </tr>
                <tr>
                    <td colspan="2"></td>
                </tr>
                <tr>
                    <td>Claim form description about the incident</td>
                    <td>{{$finalReport->accident_description}}.</td>
                </tr>
            </table>


            <table>
                <tr>
                    <th colspan="2" style="text-align: center; background-color: aquamarine;">
                        <p style="font-size: 25;">Driver’s Statement about the accident</p>
                    </th>
                </tr>
                <tr>
                    <td>{{$finalReport->driver_name}} </td>
                    <td>{{$finalReport->rider_version_accident}}</td>
                </tr>

            </table>
            <br>
            <table>
                <tr>
                    <th colspan="2" style="text-align: center; background-color: aquamarine;">
                        <p style="font-size: 25;">Insured Statement about the accident</p>
                    </th>
                </tr>
                <tr>
                    <td> INSURED {{$finalReport->customer_name}} </td>
                    <td> {{$finalReport->claiment_vers_aaccdnt}}. </td>
                </tr>

            </table>
            <br>
            <table>
                <tr>
                    <th colspan="2" style="text-align: center; background-color: aquamarine;">
                        <p style="font-size: 25;">Discrepancy Observed</p>
                    </th>
                </tr>

                <tr>
                    <td>Investigation Referral Reason 1</td>
                    <td>{{$finalReport->investi_referal_reson_1}}</td>
                </tr>
                <tr>
                    <td>Referral Ground and finding</td>
                    <td>{{$finalReport->referal_findings_1}}</td>
                </tr>
                <tr>
                    <td>Investigation Referral Reason 2</td>
                    <td>{{$finalReport->investi_referal_rason2}}</td>
                </tr>
                <tr>
                    <td>Referral Ground 2 and finding</td>
                    <td>{{$finalReport->referal_findings_2}}</td>
                </tr>

            </table>
            <br>
            <table>
                <tr>
                    <th style="text-align: center; background-color: aquamarine;">
                        <p style="font-size: 25;">Case Summary </p>
                    </th>
                </tr>

                <tr>
                    <td>{{$finalReport->gist_fir}}. </td>
                </tr>

            </table>
            <br>
            <h4>FACTS, FINDINGS AND FINAL CONCLUSION:</h4>
            <ul>

                <li>{{$finalReport->fact_findings}}.</li>

            </ul>
            <h4> Considering the above facts and findings we come to the conclusion that the case is @if($finalReport->accident_genuine==1) genuin @else not genuin @endif.</h4>
            <br>
            <br>
            <br>

            <div style="display: flex; justify-content: space-between;">
                <div>{{$finalReport->investigation_submission_date}}<br></div>
                <div>{{$finalReport->owner_executive}} <br> <img src=""> </div>
            </div>

            <div style="display: flex; flex-wrap: wrap; justify-content: flex-start;  margin-top:350px;">
                @if($finalReport->final_images)
                @foreach(json_decode($finalReport->final_images) as $index => $image)
                <div style="flex: 1 0 21%; box-sizing: border-box; margin-top:50px;">
                    @php
                    $description = '';
                    if (str_contains($image, 'accident_person')) {
                    $description = 'Photo of Accident Person';
                    } elseif (str_contains($image, 'accident_person_aadhaar')) {
                    $description = 'Aadhaar Card of Accident Person';
                    } elseif (str_contains($image, 'accident_pers_ration')) {
                    $description = 'Ration Card of Accident Person';
                    } elseif (str_contains($image, 'assets')) {
                    $description = 'Image of Assets';
                    } elseif (str_contains($image, 'co_passenger_aadhaar')) {
                    $description = 'Aadhaar Card of Co-Passenger';
                    } elseif (str_contains($image, 'co_passrnger_dl')) {
                    $description = 'Driving Licence of Co-Passenger';
                    } elseif (str_contains($image, 'co_passernger_aadhar')) {
                    $description = 'Aadhaar Card of Co-Passenger';
                    } elseif (str_contains($image, 'driver')) {
                    $description = 'Driver Photo';
                    } elseif (str_contains($image, 'driver_ration_card')) {
                    $description = 'Ration Card of Driver';
                    } elseif (str_contains($image, 'driving_licence')) {
                    $description = 'Driver Driving Licence Image';
                    } elseif (str_contains($image, 'garage_gate_entry')) {
                    $description = 'Garage Gate Entry Image';
                    } elseif (str_contains($image, 'garage_job_card')) {
                    $description = 'Garage Job Card Image';
                    } elseif (str_contains($image, 'hospital')) {
                    $description = 'Hospital Image';
                    } elseif (str_contains($image, 'medical')) {
                    $description = 'Medical Documents';
                    } elseif (str_contains($image, 'owner_dl')) {
                    $description = 'Driving Licence of Owner';
                    } elseif (str_contains($image, 'owner_ration')) {
                    $description = 'Ration Card of Owner';
                    } elseif (str_contains($image, 'rc')) {
                    $description = 'RC Image';
                    } elseif (str_contains($image, 'spot')) {
                    $description = 'Spot Show Image';
                    } elseif (str_contains($image, 'tow_vehicle')) {
                    $description = 'Tow Vehicle Image';
                    } elseif (str_contains($image, 'vehicle_permit')) {
                    $description = 'Vehicle Permit Image';
                    }elseif (str_contains($image, 'vehicle')) {
                    $description = 'Vehicle Image';
                    }elseif (str_contains($image, 'aadhaar')) {
                    $description = 'Aadhar Card of Driver';
                    }elseif (str_contains($image, 'written_statement')) {
                    $description = 'Written Statement Image of Accident Person';
                    }elseif (str_contains($image, 'co_passenger_dl')) {
                    $description = 'Co-passenger Driving Licence';
                    }elseif (str_contains($image, 'co_passenger_aadhar')) {
                    $description = 'Co-passenger Aadhar Card';
                    }
                    @endphp

                    @if ($description)
                    <p style="margin: 10px 0; font-weight: bold; text-decoration: underline; margin-top:0px">{{ $description }}</p>
                    @endif


                    @if (file_exists(storage_path('app/public/' . $image)))
                    <img src="data:image/{{ pathinfo($image, PATHINFO_EXTENSION) }};base64,{{ base64_encode(file_get_contents(storage_path('app/public/' . $image))) }}"
                        alt="Image"
                        style="width:300px; height:400px; border: 1px solid #ccc; display: block; margin-left: 10px; margin-right: 10px;">

                    @endif
                </div>
                @endforeach
                @endif
            </div>
        </div>
    </div>



<div class="card mb-4">
    <div class="card-header bg-success text-white">
        <h3>Garage Information</h3>
    </div>
    <div class="card-body">
        @php $hasData = false; @endphp

        @foreach ($validQuestions as $question)
            @php
                $column = $question->column_name;
                $answer = $finalReport->$column ?? null;
            @endphp

            @if (!is_null($answer) && $answer !== '')
                @php $hasData = true; @endphp
                <div style="margin-bottom: 15px;">
                    <span style="font-size: 16px; color: #2C3E50; font-weight: bold; display: inline-block; min-width: 150px;">
                        {{ $question->question_text ?? ucfirst(str_replace('_', ' ', $column)) }}:
                    </span>
                    <span style="font-size: 16px; color: #7F8C8D; display: inline-block;">
                        {{ $answer }}
                    </span>
                </div>
            @endif
        @endforeach

        @if (!$hasData)
            <p>No garage-related information available.</p>
        @endif
    </div>
</div>




</body>

</html>