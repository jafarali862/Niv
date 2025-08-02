<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>IFFCO Investigation Report</title>
    <style>
        /* body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            margin: 20px;
            padding: 0;
            color: #333;
        } */
        /* h1, h2, h3 {
            color: #0056b3;
        } */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 10px;
        }

        table,
        th,
        td {
            border: 1px solid black;
        }

        th,
        td {
            padding: 1px;
            text-align: left;
        }

        th {
            background-color: #f4f4f4;
        }

        .case-details-table td:first-child {
            width: 30%;
        }

        .case-details-table td:last-child {
            width: 70%;
        }

        .left-align {
            text-align: left;
            float: left;
        }

        .right-align {
            text-align: right;
            float: right;
        }

        .clear {
            clear: both;
        }

        div>div:nth-child(odd) {
            text-align: left;
            display: inline-block;
            width: 48%;
            /* Adjust width as needed */
            margin-bottom: 10px;
        }

        div>div:nth-child(odd) img {
            margin-left: 0;
            margin-right: auto;
        }

        div>div:nth-child(even) {
            text-align: right;
            display: inline-block;
            width: 48%;
            /* Adjust width as needed */
            margin-bottom: 10px;
        }

        div>div:nth-child(even) img {
            margin-left: auto;
            margin-right: 0;
        }
    </style>
</head>

<body>

    <p><strong>To,</strong><br>
        The Divisional Manager<br>
        IFFCO-TOKIO General Insurance Company Ltd.</p>

    <p>Subject: INVESTIGATION REPORT</p>

    <p>Ref:</p>

    <table>
        <tr>
            <td>File No.</td>
            <td></td>
            <td>OPMV No.</td>
            <td>{{$finalReport->op_no}}</td>
        </tr>
        <tr>
            <td>Date of Allotment</td>
            <td>{{$finalReport->date_of_allotement}}</td>
            <td>Date of Report Submitted</td>
            <td>{{$finalReport->date_of_submitted}}</td>
        </tr>
    </table>

    <p style="text-align:center;"><strong>REG:INVESTIGATION REPORT</strong></p>

    <table class="case-details-table">
        <tr>
            <td>Case No.</td>
            <td>{{$finalReport->fir_no }}</td>
        </tr>
        <tr>
            <td>MACT Name</td>
            <td>{{$finalReport->police_station}}</td>
        </tr>
        <tr>
            <td>NATURE OF CLAIM</td>
            <td>{{$finalReport->nature_of_claim}}</td>
        </tr>
        <tr>
            <td>Concerned Matters</td>
            <td>{{$finalReport->concern_matters}}</td>
        </tr>
    </table>

    <p style="text-align:center;"><strong>POLICY DETAILS</strong></p>

    <table>
        <thead>
            <tr>
                <td>Particulars</td>
                <td>Insured Vehicle</td>
                <td>Opposite Vehicle</td>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Name of the Insurer</td>
                <td>{{$finalReport->insurance_com_name}}</td>
                <td>N/A</td>
            </tr>
            <tr>
                <td>Registration No. and Make</td>
                <td>{{$finalReport->vehicle_no}} /{{$finalReport->made_make}}</td>
                <td>{{$finalReport->opp_vehicle_reg_no}} /{{$finalReport->opp_vehicle_made_make}}</td>
            </tr>
            <tr>
                <td>Name of the Insured</td>
                <td>{{$finalReport->rc_owner_name}}</td>
                <td>{{$finalReport->injured_Person_name}}</td>
            </tr>
            <tr>
                <td>Policy No.</td>
                <td>{{$finalReport->customer_policy_no}}</td>
                <td>{{$finalReport->opp_insured_policy_no}}</td>
            </tr>
            <tr>
                <td>Period of Insurance</td>
                <td>{{$finalReport->customer_policy_start}} TO {{$finalReport->customer_policy_end}}</td>
                <td>{{$finalReport->opp_party_insurance_start_date}} TO {{$finalReport->opp_party_insurance_end_date}}</td>
            </tr>
            <tr>
                <td>Date of Accident</td>
                <td>{{$finalReport->accident_date_time}}</td>
                <td>{{$finalReport->accident_date_time}}</td>
            </tr>
        </tbody>
    </table>

    <p style="text-align:center;"><strong>VEHICLE DETAILS</strong></p>

    <table>
        <thead>
            <tr>
                <td>Particulars</td>
                <td>Insured Vehicle</td>
                <td>Opposite Vehicle</td>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Reg. No./Make</td>
                <td>{{$finalReport->vehicle_no}} /{{$finalReport->made_make}} </td>
                <td>{{$finalReport->opp_vehicle_reg_no}} /{{$finalReport->opp_vehicle_made_make}}</td>
            </tr>
            <tr>
                <td>Name of the Owner & Address</td>
                <td>{{$finalReport->rc_owner_name}}</td>
                <td>{{$finalReport->opp_insured_name}} && {{$finalReport->addres_opp_party}}</td>
            </tr>
            <tr>
                <td>RC Transferred To</td>
                <td>{{$finalReport->owner_rc_transfered_to}}</td>
                <td>{{$finalReport->opp_rc_transfered_to}}</td>
            </tr>
            <tr>
                <td>Date of RC Transfer</td>
                <td>{{$finalReport->owner_rc_transfered_date}}</td>
                <td>{{$finalReport->opp_rc_transfered_date}}</td>
            </tr>
            <tr>
                <td>Seating Capacity</td>
                <td>{{$finalReport->seating_capacity}}</td>
                <td>{{$finalReport->opp_vehicle_seating_capacity}}</td>
            </tr>
            <tr>
                <td>Eng. No.</td>
                <td>{{$finalReport->engine_no}}</td>
                <td>{{$finalReport->opp_vehicle_eng_no}}</td>
            </tr>
            <tr>
                <td>Chassis No.</td>
                <td>{{$finalReport->chass_no}}</td>
                <td>{{$finalReport->opp_vehicle_chassis_no}}</td>
            </tr>
        </tbody>
    </table>

    <p style="text-align:center;"><strong>PERMIT DETAILS</strong></p>

    <table>
        <thead>
            <tr>
                <td>Particulars</td>
                <td>Insured Vehicle</td>
                <td>Opposite Vehicle</td>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Permit No.</td>
                <td>{{$finalReport->owner_permit_no}}</td>
                <td>{{$finalReport->opp_party_permit_no}}</td>
            </tr>
            <tr>
                <td>Authorized State</td>
                <td>{{$finalReport->owner_authorized_state}}</td>
                <td>{{$finalReport->opp_party_authorized_state}}</td>
            </tr>
            <tr>
                <td>Period of Validity</td>
                <td>{{$finalReport->owner_permit_period_validity}}</td>
                <td>{{$finalReport->opp_party_permit_period_validity}}</td>
            </tr>
            <tr>
                <td>Permit Verified or Not</td>
                <td>@if($finalReport->owner_permit_verified==1) yes @else No @endif</td>
                <td>@if($finalReport->opp_party_permit_verified==1) yes @else No @endif</td>
            </tr>
        </tbody>
    </table>

    <p style="text-align:center;"><strong>ACCIDENT DETAILS</strong></p>

    <table>

        <tbody>
            <tr>
                <td>Date of Accident</td>
                <td>{{$finalReport->accident_date_time}}</td>
                <td>Time</td>
                <td>{{ \Carbon\Carbon::parse($finalReport->accident_date_time)->format('H:i') }}</td>
            </tr>

            <tr>
                <td>Place of Accident</td>
                <td>{{$finalReport->spot_address}}</td>
                <td>Distance from PS</td>
                <td>{{$finalReport->dist_from_police}}</td>
            </tr>

            <tr>
                <td>Date of Lodging FIR</td>
                <td>{{$finalReport->date_time_fir}}</td>
                <td>Time</td>
                <td>N/A</td>
            </tr>

            <tr>
                <td>Explanation for Delay in Lodging FIR</td>
                <td>{{$finalReport->delay_in_fir}}</td>
                <td>FIR No./Sections</td>
                <td>{{$finalReport->fir_no}}/{{$finalReport->section}}</td>
            </tr>

            <tr>
                <td>Name of Informer & Tel. No.</td>
                <td colspan='3'>{{$finalReport->name_informer}}</td>
            </tr>
            <tr>
                <td>Relation of the Informer with the Claimant</td>
                <td colspan='3'>{{$finalReport->rel_informr_claimant}}</td>
            </tr>
            <tr>
                <td>Vehicle No. as per FIR</td>
                <td colspan='3'>{{$finalReport->vehicle_no_fir}}</td>
            </tr>
            <tr>
                <td>Is the vehicle unidentified in the FIR as Offending Vehicle (if yes, mention the Reg. No.)</td>
                <td colspan='3'>{{$finalReport->insured_vehicle_establ_fir}}</td>
            </tr>
            <tr>
                <td>Involvement of any other vehicle</td>
                <td colspan='3'>{{$finalReport->accident_cause_more_vehicle}}</td>
            </tr>
            <tr>
                <td>Any Contribution from Other Vehicle Attributed to the Accident (Contributory)</td>
                <td colspan='3'>{{$finalReport->accident_cause_more_vehicle}}</td>
            </tr>
            <tr>
                <td>Charge Sheet Filed u/s</td>
                <td colspan='3'>Sections</td>
            </tr>
            <tr>
                <td>Date & Time of First Admission to Nearest Hospital (Name & Address of the Hospital)</td>
                <td colspan='3'>{{$finalReport->date_time_hospital_addmission}}</td>
            </tr>

        </tbody>
    </table>

    <p style="text-align:center;"><strong>DRIVER DETAILS</strong></p>

    <table border="1">
        <tr>
            <td>Name of the Driver as per FIR</td>
            <td>{{$finalReport->driver_name}}</td>
            <td>{{$finalReport->injured_Person_name}}</td>
        </tr>
        <tr>
            <td>Name of the Driver as per CS</td>
            <td>{{$finalReport->driver_name}}</td>
            <td>{{$finalReport->injured_Person_name}}</td>
        </tr>
        <tr>
            <td>DL extract as per RTO</td>
            <td>N/A</td>
            <td>N/A</td>
        </tr>
        <tr>
            <td>DL No. & issuing authority</td>
            <td>N/A</td>
            <td>N/A</td>
        </tr>
        <tr>
            <td>Type of DL</td>
            <td>N/A</td>
            <td>N/A</td>
        </tr>
        <tr>
            <td>Period of DL</td>
            <td>N/A TO {{$finalReport->driver_lic_exp_date}}</td>
            <td>N/A TO N/A</td>
        </tr>
    </table>

    <p style="text-align:center;"><strong>Injured Details</strong></p>
    <table border="1">

        <tr>
            <td>Name of Injured with Father’s Name</td>
            <td>{{$finalReport->injured_Person_name}} S/O </td>
        </tr>
        <tr>
            <td>Age (with age proof)</td>
            <td>{{$finalReport->age_injured_person}}</td>
        </tr>
        <tr>
            <td>Contact No.</td>
            <td>{{$finalReport->injured_phone }}</td>
        </tr>
        <tr>
            <td>Address (Permanent)</td>
            <td>{{$finalReport->injured_address}}.</td>
        </tr>
        <tr>
            <td>Address if different from above</td>
            <td>@if($finalReport->address_different==1) Yes @else No @endif</td>
        </tr>
    </table>
    <table border="1">

        <tr>
            <td>Annual Income</td>
            <td>{{$finalReport->annual_incom_injured}}</td>
        </tr>
        <tr>
            <td>In case the deceased was Gove. ----Employee/Semi Govt./PSU etc. check for his ESI coverage of reimbursement of medical expenses</td>
            <td>{{$finalReport->esi_coverage_details}}</td>
        </tr>
        <tr>
            <td>Occupation</td>
            <td>{{$finalReport->profession_injured}}</td>
        </tr>
        <tr>
            <td>Name & Address of the employer with Phone No.</td>
            <td>{{$finalReport->name_add_num_employeer}}</td>
        </tr>
        <tr>
            <td>Brief Statement of the Employer about employment</td>
            <td>{{$finalReport->discussion_employeer_injured}}</td>
        </tr>
        <tr>
            <td>Status of deceased / injured</td>
            <td>{{$finalReport->status_injures_decesed}}</td>
        </tr>
        <tr>
            <td>Employment on compassionate ground if any OR pension details</td>
            <td>{{$finalReport->pension_details}}</td>
        </tr>
    </table>

    <p style="text-align:center;"><strong>Injury Details</strong></p>
    <table border="1">

        <tr>
            <td>Date of Hospitalization</td>
            <td>{{$finalReport->date_time_hospital_addmission}}</td>
        </tr>
        <tr>
            <td>Name of Hospital along with date of MLC</td>
            <td>{{$finalReport->injured_admited_hospital_details}}.</td>
        </tr>
        <tr>
            <td>Nature of Injuries (as per MLC)</td>
            <td>{{$finalReport->injured_hospital_report}}</td>
        </tr>
        <tr>
            <td>Date of Admission</td>
            <td>{{$finalReport->date_time_hospital_addmission}}</td>
        </tr>
        <tr>
            <td>Date of Discharge</td>
            <td>{{$finalReport->date_discharge}}</td>
        </tr>
        <tr>
            <td>Medical Expenses</td>
            <td>{{$finalReport->amount_medical_expenceses}}</td>
        </tr>
        <tr>
            <td>In the case of death, does the deceased succumbed to injuries on the spot</td>
            <td>@if($finalReport->injured_death_on_spot==1) Yes @else No @endif</td>
        </tr>
        <tr>
            <td>PMR No. & Date</td>
            <td>{{$finalReport->date_of_death_date_pm}}</td>
        </tr>
        <tr>
            <td>Name of the Hospital where PMR carried</td>
            <td>{{$finalReport->hospital_name_pmr_carried}}</td>
        </tr>
        <tr>
            <td>Cause of Death as per PMR</td>
            <td>{{$finalReport->cause_death_per_pmr}}</td>
        </tr>
    </table>
    <table border="1">

        <tr>
            <td>Weather fit for compromise</td>
            <td>@if($finalReport->injured_compromised==1) Yes @else No @endif</td>
        </tr>
        <tr>
            <td>What is the defense if not fit for compromise</td>
            <td>@if($finalReport->defense_fit_compromize==1) Yes @else No @endif</td>
        </tr>
    </table>

    <p>
        <strong>Brief Observations:</strong>
    </p>

    <ol>
        <li>
            <strong>Accident Details per petition:</strong>
            <p>{{$finalReport->claimant_statement}}</p>.
        </li>
        <li>
            <strong>Accident Details per FIR:</strong>
            <p>{{$finalReport->gist_fir}}</p>.
        </li>
        <li>
            <strong>Version of Charge Sheet:</strong>
            <p>{{$finalReport->chargesheet_conclusion}}</p>.
        </li>
    </ol>

    <table border="1">

        <tr>
            <td style="width:50%">
                <strong>Claimant Name:</strong><br>
                {{$finalReport->injured_Person_name}}<br><br>
                @if($finalReport->final_images)
                @foreach(json_decode($finalReport->final_images) as $index => $image)
                @if (str_contains($image, 'accident_person'))
                <img src="data:image/{{ pathinfo($image, PATHINFO_EXTENSION) }};base64,{{ base64_encode(file_get_contents(storage_path('app/public/' . $image))) }}" alt="Injury Photo" width="200">
                @break
                @endif
                @endforeach
                @endif <br>
                <strong>Injury Photo:</strong><br>
                <img src="path_to_photo.jpg" alt="Injury Photo" width="200">
            </td>
            <td style="width:50%">
                <strong>Claimant Statement:</strong><br>
                <p>{{$finalReport->claimant_statement}}</p>.<br><br>
                <strong>Accident Details:</strong><br>
                <p>{{$finalReport->accident_description}}.</p>
            </td>
        </tr>
    </table>

    <p>Discrepancies in 161 statements if any:-NIL</p>

    <p><strong>Findings:</strong></p>
    <ul>
        <li><strong>IV Details:</strong> The IV is a {{$finalReport->made_make}} bearing Reg.No: {{$finalReport->vehicle_no}}.</li>
        <li><strong>Policy Details:</strong> The IV is insured with {{$finalReport->insurance_com_name}} Company.</li>
        <li><strong>Policy No:</strong> {{$finalReport->customer_policy_no}}. The IV insurance is valid from {{$finalReport->customer_policy_start}} TO {{$finalReport->customer_policy_start}}.</li>
        <li><strong>WC/ OP Card:</strong>{{$finalReport->injured_admited_hospital_details}}.</li>
        <li><strong>Driver of the IV:</strong> The IV driver at the time of accident was {{$finalReport->driver_name}}.</li>
    </ul>

    <p><strong>FINDINGS AND OBSERVATIONS:</strong></p>
    <ol>
        <li>{{$finalReport->fact_findings}}</li>
    </ol>

    <p><strong>CONCLUSION:</strong></p>
    <p>{{$finalReport->conclusion}}</p>

    <div class="left-align">
        <strong>{{$finalReport->date_of_submitted}}</strong>

    </div>
    <div class="right-align">
        <strong>  {{$finalReport->owner_executive}}</strong><br>
    </div>
    <div class="clear"></div>

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
            @else
            <p>Image not found: {{ $image }}</p>
            @endif
        </div>
        @endforeach
        @endif
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