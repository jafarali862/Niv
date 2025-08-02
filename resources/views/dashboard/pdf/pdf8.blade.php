<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Investigation Report</title>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;

        }

        th,
        td {
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
            <div style="display: flex; justify-content: end;">
                <div style="border: 1px solid; border-radius: 10px; width: 150px; height: 70px;">
                    <p style="font-size: 20px; margin-top: 10px;">{{$finalReport->owner_executive}}<BR>
                        INVESTIGATOR</P>
                </div>
            </div>

            <hr>
            <h2 style="text-align: center;"> INVESTIGATION REPORT:</h2>
            <h3>1. INTRODUCTION</h3>


            <table>

                <tr>
                    <td>1</td>
                    <td>Date of entrustment of the Investigation</td>
                    <td>{{$finalReport->investigation_date}}</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>Date of submission of the Investigation Report</td>
                    <td>{{$finalReport->investigation_submission_date}}</td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>OP (MV) no</td>
                    <td>{{$finalReport->op_no}}</td>
                </tr>
                <tr>
                    <td>4</td>
                    <td>Advocate Name</td>
                    <td>{{$finalReport->insured_advocate}}</td>
                </tr>
                <tr>
                    <td>5</td>
                    <td>Court</td>
                    <td>{{$finalReport->court}}</td>
                </tr>
            </table>

            <h3>II. CASE/CLAIM DETAILS:</h3>

            <table>

                <tr>
                    <td>1</td>
                    <td>Case Title (Name of the 1st Claimant Vs. Name of the 1st Respondent)</td>
                    <td>{{$finalReport->case_title}}</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>Case/Claim filed under Section</td>
                    <td>{{$finalReport->section}}</td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>Cause of Loss (e.g. Death/ Injury, TPPD)</td>
                    <td>{{$finalReport->cause_loss}}</td>
                </tr>
                <tr>
                    <td>4</td>
                    <td>OD Claim, if any, made. If so, details (Ascertained from Insured)</td>
                    <td>{{$finalReport->od_claim}}</td>
                </tr>
            </table>

            <h3>III. ACCIDENT DETAILS</h3>

            <table>

                <tr>
                    <td>1</td>
                    <td>Date & Time of Accident</td>
                    <td>{{$finalReport->accident_date_time}}</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>Place of Accident</td>
                    <td>{{$finalReport->spot_address}}</td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>Road details (Highway, City Road, Lane, etc.)</td>
                    <td>{{$finalReport->road_details}}</td>
                </tr>
                <tr>
                    <td>4</td>
                    <td>Elaborate description of the accident</td>
                    <td>{{$finalReport->accident_description}}.</td>
                </tr>
            </table>



            <h3>IV. INSURED VEHICLE DETAILS</h3>

            <table>

                <tr>
                    <td>1</td>
                    <td>Registration No. with Type</td>
                    <td>{{$finalReport->vehicle_no}} & {{$finalReport->vehicle_type}}</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>Engine No. Chassis No, Model, Make, etc.</td>
                    <td>
                        <table>
                            <tr>
                                <td>Engine No</td>
                                <td>{{$finalReport->engine_no}}</td>
                            </tr>
                            <tr>
                                <td>Chassis No</td>
                                <td>{{$finalReport->chass_no}}</td>
                            </tr>
                            <tr>
                                <td>Make & Model</td>
                                <td>{{$finalReport->made_make}}</td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>Class of Vehicle</td>
                    <td>{{$finalReport->class_of_vehicle}}</td>
                </tr>
                <tr>
                    <td>4</td>
                    <td>Seating capacity including Driver</td>
                    <td>{{$finalReport->seating_capacity}}</td>
                </tr>
                <tr>
                    <td>5</td>
                    <td>No. of occupants at the time of the Accident</td>
                    <td>{{$finalReport->no_occupants}}</td>
                </tr>
                <tr>
                    <td>6</td>
                    <td>RC Book Owner</td>
                    <td>{{$finalReport->rc_owner_name}}</td>
                </tr>
                <tr>
                    <td>7</td>
                    <td>Name of Insured</td>
                    <td>{{$finalReport->customer_name}}</td>
                </tr>
                <tr>
                    <td>8</td>
                    <td>Relation of Insured, if any, with Injured/Deceased/Claimant</td>
                    <td>{{$finalReport->relation_insured_and_claiment}}</td>
                </tr>
                <tr>
                    <td>9</td>
                    <td>RC Validity</td>
                    <td>FROM {{$finalReport->driver_rc_date}} TO {{$finalReport->driver_rc_exp_date}}</td>
                </tr>
                <tr>
                    <td>10</td>
                    <td>Permit Validity</td>
                    <td>{{$finalReport->permit_validity_vehicle}}</td>
                </tr>
                <tr>
                    <td>11</td>
                    <td>Fitness Validity</td>
                    <td>{{$finalReport->fitness_validity_vehicle}}</td>
                </tr>
                <tr>
                    <td>12</td>
                    <td>Pollution Validity</td>
                    <td>FROM {{$finalReport->polution_validity_from}} To {{$finalReport->polution_validity_to}} </td>
                </tr>
                <tr>
                    <td>13</td>
                    <td>Policy/Cover Note No. & Insurance Company</td>
                    <td>{{$finalReport->customer_policy_no}} & {{$finalReport->insurance_com_name}}.</td>
                </tr>
                <tr>
                    <td>14</td>
                    <td>Policy/Cover Note Validity</td>
                    <td>FROM {{$finalReport->customer_policy_start}} TO {{$finalReport->customer_policy_end}}</td>
                </tr>
                <tr>
                    <td>15</td>
                    <td>Whether the DOA is within the Policy Period</td>
                    <td>@if($finalReport->doa_in_policy==1) Yes @else No @endif</td>
                </tr>
                <tr>
                    <td>16</td>
                    <td>Policy is Comprehensive or TP Liability only</td>
                    <td>@if($finalReport->all_liability_covered==1) Yes @else No @endif</td>
                </tr>
                <tr>
                    <td>17</td>
                    <td>If goods laden, details of the goods, owner, etc.</td>
                    <td>{{$finalReport->if_goodladen_details}}</td>
                </tr>
                <tr>
                    <td>18</td>
                    <td>Details of the damages caused to the goods & how those were further transported, etc.</td>
                    <td>{{$finalReport->damage_goods_transport}}</td>
                </tr>
                <tr>
                    <td>19</td>
                    <td>Details of the damages caused to the Vehicle</td>
                    <td>{{$finalReport->damage_consist_with_accident}}</td>
                </tr>
            </table>

            <h3>V. FINANCIAL INVESTIGATION ON INSURED</h3>

            <table>

                <tr>
                    <td>1</td>
                    <td style="width: 100%;">Social status of the Insured</td>
                    <td>{{$finalReport->social_status}}</td>
                </tr>
            </table>


            <h3>VI. DETAILS OF DRIVER OF INSURED VEHICLE</h3>

            <table>

                <tr>
                    <td>1</td>
                    <td>Name & Address with Tele. No.</td>
                    <td> {{$finalReport->driver_name}} <br>{{$finalReport->address_mobile_accused}}</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>Age & Date of Birth</td>
                    <td>{{$finalReport->driver_age}} & {{$finalReport->driver_dob}}</td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>Relationship of Driver with Insured</td>
                    <td> {{$finalReport->rel_accused_insured}}</td>
                </tr>
                <tr>
                    <td>4</td>
                    <td>Authorized to drive (eg. MC with gear, LMV, etc.)</td>
                    <td>@if($finalReport->vehicle_authorized_drive==1) Yes @else No @endif</td>
                </tr>
                <tr>
                    <td>5</td>
                    <td>RTO/Licensing Authority</td>
                    <td>{{$finalReport->issuing_authority_vehicle}}</td>
                </tr>
                <tr>
                    <td>6</td>
                    <td>License No. & Year</td>
                    <td>{{$finalReport->dl_no_owner}}</td>
                </tr>
                <tr>
                    <td>7</td>
                    <td>Validity of License: To …</td>
                    <td>{{$finalReport->driver_lic_exp_date}}</td>
                </tr>
                <tr>
                    <td>8</td>
                    <td>Badge Validity, if necessary: From-To</td>
                    <td>FROM:{{$finalReport->badge_valid_from}} TO:{{$finalReport->badge_valid_to}}</td>
                </tr>
                <tr>
                    <td>9</td>
                    <td>Whether the License/Badge is valid on DOA</td>
                    <td>@if($finalReport->accused_dl_vaild_doa==1) Yes @else No @endif</td>
                </tr>
                <tr>
                    <td>10</td>
                    <td>Whether DL extract obtained. If not, why?</td>
                    <td>@if($finalReport->is_dl_particular_collected==1) Yes @else No @endif</td>
                </tr>
                <tr>
                    <td>11</td>
                    <td>Does the DL extract details tally with DL copy on Police record. If not, describe.</td>
                    <td>NA</td>
                </tr>
            </table>

            <h3>VII. (A) DETAILS OF THE INJURED</h3>

            <table>

                <tr>
                    <td>1</td>
                    <td>Name and Address of the Injured</td>
                    <td>{{$finalReport->injured_Person_name}} <br> {{$finalReport->injured_address}}</td>
                </tr>
            </table>



            <h3>VIII. FIR DETAILS (Enclose copy):</h3>

            <table>

                <tr>
                    <td>1</td>
                    <td>Name of Police Station, District & State</td>
                    <td>{{$finalReport->police_station}},{{$finalReport->district}} & {{$finalReport->state}}</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>FIR No, Year & Sections</td>
                    <td>{{$finalReport->fir_no}} & {{$finalReport->section}}</td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>Date & Time of FIR</td>
                    <td>{{$finalReport->date_time_fir}}</td>
                </tr>
                <tr>
                    <td>4</td>
                    <td>Name of Complainant</td>
                    <td>{{$finalReport->name_complainant}}</td>
                </tr>
                <tr>
                    <td>5</td>
                    <td>Complainant’s relationship with the Injured/Deceased</td>
                    <td>{{$finalReport->complnt_rel_injured}}</td>
                </tr>
                <tr>
                    <td>6</td>
                    <td>Description of the Accused in accused column</td>
                    <td>{{$finalReport->descrition_accused}}</td>
                </tr>
                <tr>
                    <td>7</td>
                    <td>How did accused identified</td>
                    <td>{{$finalReport->accused_identifed}}</td>
                </tr>
                <tr>
                    <td>8</td>
                    <td>Delay, if any, in lodging FIR & Reasons thereof given in FIR</td>
                    <td>{{$finalReport->delay_in_fir}}</td>
                </tr>
                <tr>
                    <td>9</td>
                    <td>Gist of FIR</td>
                    <td>{{$finalReport->gist_fir}}.</td>
                </tr>
            </table>

            <h3>X. CHARGE-SHEET/CHALLAN DETAILS</h3>

            <table>

                <tr>
                    <td>1</td>
                    <td>Court where Charge-Sheet/Final Report filed & CC No.</td>
                    <td>{{$finalReport->court}}</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>Date of Charge-Sheet/Final Report</td>
                    <td>{{$finalReport->date_chargesheet}}</td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>Sections in the Charge-Sheet</td>
                    <td>{{$finalReport->section}}</td>
                </tr>
                <tr>
                    <td>4</td>
                    <td>Who all are charged with (e.g. Our Driver, Other Driver)</td>
                    <td> {{$finalReport->driver_name}}</td>
                </tr>
                <tr>
                    <td>5</td>
                    <td>Gist of Charge-Sheet</td>
                    <td>{{$finalReport->gist_chargesheet}}.</td>
                </tr>
                <tr>
                    <td>6</td>
                    <td>Any Petty Case charged, if so, details</td>
                    <td>{{$finalReport->petty_case_charged}}</td>
                </tr>
                <tr>
                    <td>7</td>
                    <td>Present Status of the Criminal Case</td>
                    <td>{{$finalReport->status_criminal_case}}</td>
                </tr>
            </table>

            <h3>XI. INVESTIGATION DETAILS:</h3>

            <table>

                <tbody>
                    <tr>
                        <td>1</td>
                        <td>Whether the Accident Genuine or Not as per the evidence gathered.</td>
                        <td>@if($finalReport->accident_genuine==1) The accident is Genuine @else The accident is fake @endif.</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Opinion on disablement/dependency</td>
                        <td>{{$finalReport->opnion_disablement}}</td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>Opinion on Income of Injured/Deceased</td>
                        <td>{{$finalReport->source_income}}</td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>Opinion on what capacity the Injured/deceased travelled in the Vehicle.</td>
                        <td>{{$finalReport->pedstrian_or_traveller}}.</td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td>Opinion on Contribution of our vehicle & Other Vehicle, if more than one Vehicle is
                            involved.</td>
                        <td>@if($finalReport->vehicle_involve_other_accident==1) Yes @else No @endif</td>
                    </tr>
                    <tr>
                        <td>6</td>
                        <td>Opinion on DL effectiveness/validity as on Date of Accident.</td>
                        <td>{{$finalReport->accused_dl_vaild_doa}}</td>
                    </tr>
                    <tr>
                        <td>7</td>
                        <td>Whether DL extract obtained, if not, reasons thereof.</td>
                        <td>@if($finalReport->dl_extract_obtained==1) Yes @else No @endif</td>
                    </tr>
                    <tr>
                        <td>8</td>
                        <td>Whether involvement of the Injured/Deceased established from the FIR, if not, clarify.</td>
                        <td>YES</td>
                    </tr>
                    <tr>
                        <td>9</td>
                        <td>Whether involvement of Insured Vehicle is established from the FIR, if not, clarify</td>
                        <td>@if($finalReport->vehicle_no_fir) Yes @else No @endif</td>
                    </tr>
                    <tr>
                        <td>10</td>
                        <td>Comments on defence on the evidence available</td>
                        <td>NA</td>
                    </tr>
                </tbody>
            </table>
            <h3>XII.WOUND/DISABILITY CERTIFICATE (Enclose copy):</h3>
            <p style="font-size:20;">{{$finalReport->wound_certificate}}.</p>


            <h3>XIII. WEARING OF PROTECTIVE HEADWEAR/HELMET IN CASE OF HEAD INJURY
                CAUSED TO TWO-WHEELER RIDER OR PILLION RIDER AS CLAIMANT: -</h3>

            <h3>XIV. DISCUSSION OF EVIDENCE AVAILABLE:</h3>


            <table>

                <tbody>
                    <tr>
                        <td>A</td>
                        <td>Result on verification of Medical Records</td>
                        <td>{{$finalReport->injured_hospital_report}}.</td>
                    </tr>
                    <tr>
                        <td>B</td>
                        <td>Result of discussion with the Injured/deceased family & neighbours</td>
                        <td>{{$finalReport->discussion_family_neighbour}}.</td>
                    </tr>
                    <tr>
                        <td>C</td>
                        <td>Discuss on what capacity the Injured/deceased was travelling in the Vehicle</td>
                        <td>{{$finalReport->discussion_injured}}.</td>
                    </tr>
                    <tr>
                        <td>D</td>
                        <td>Result of discussion with the insured</td>
                        <td>NA</td>
                    </tr>
                    <tr>
                        <td>E</td>
                        <td>Result of discussion with the employer for confirming the occupation & income of the
                            injured/deceased</td>
                        <td>{{$finalReport->discussion_employeer_injured}}</td>
                    </tr>
                    <tr>
                        <td>F</td>
                        <td>Result of discussion with the rider of the IV</td>
                        <td>{{$finalReport->discussion_rider}}.</td>
                    </tr>
                    <tr>
                        <td>G</td>
                        <td>Discussion on the Financial Investigation on the Insured with regard to his employment,
                            employer, salary, movable & immovable property, total monthly income, etc.</td>
                        <td>{{$finalReport->discussion_financial}}</td>
                    </tr>
                </tbody>
            </table>

            <h3>FACTS AND FINDINGS:</h3>

            <ul>
                <li>{{$finalReport->fact_findings}}.</li>
            </ul>

            <h3>CONCLUSION</h3>
            <p>{{$finalReport->conclusion}}</p>
            <br>

            
                <div style="text-align:left;">{{$finalReport->investigation_submission_date}}<br></div>
                <div style="text-align:right;">{{$finalReport->owner_executive}} </div>
            

            <div style="display: flex; flex-wrap: wrap; justify-content: flex-start;  margin-top: 0px;">
                @if($finalReport->final_images)
                @foreach(json_decode($finalReport->final_images) as $index => $image)
                <div style="flex: 1 0 21%; box-sizing: border-box; margin-bottom: 10px;">
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
                    <p style="margin: 10px 0; font-weight: bold; text-decoration: underline; margin-top:15px">{{ $description }}</p>
                    @endif


                    @if (file_exists(storage_path('app/public/' . $image)))
                    <img src="data:image/{{ pathinfo($image, PATHINFO_EXTENSION) }};base64,{{ base64_encode(file_get_contents(storage_path('app/public/' . $image))) }}"
                        alt="Image"
                        style="width:300px; height:300px; border: 1px solid #ccc; display: block; margin-left: 10px; margin-right: 10px;">
                    
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