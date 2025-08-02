<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>od report new india</title>
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
            <hr>
            <h3 style="text-align: center;"><u>INVESTIGATION REPORT: OD CASE</u></h3>
            <h3>I. INTRODUCTION:</h3>
            <table>
                <tr>
                    <th>1</th>
                    <th>Insured Name</th>
                    <th>{{$finalReport->customer_name}}</th>
                </tr>
                <tr>
                    <th>2</th>
                    <th>Vehicle No& MODEL</th>
                    <th>{{$finalReport->vehicle_no}} & {{$finalReport->made_make}}</th>
                </tr>
            </table>

            <h3>II. CASE/CLAIM DETAILS:</h3>

            <table border="1">

                <tr>
                    <td>1.</td>
                    <td>Date & Time of Accident</td>
                    <td>{{$finalReport->accident_date_time}}</td>
                </tr>
                <tr>
                    <td>2.</td>
                    <td>Place of Accident</td>
                    <td>{{$finalReport->spot_address}}</td>
                </tr>
                <tr>
                    <td>3.</td>
                    <td>Road Details</td>
                    <td>{{$finalReport->road_details}}</td>
                </tr>
                <tr>
                    <td>4.</td>
                    <td>Description of the Accident</td>
                    <td>{{$finalReport->accident_description}}.</td>
                </tr>
            </table>

            <h3>III. ACCIDENT DETAILS:</h3>
            <table border="1">

                <tr>
                    <td>1.</td>
                    <td>Name & Address of Insured</td>
                    <td>{{$finalReport->customer_name}} & {{$finalReport->customer_present_address}}</td>
                </tr>
                <tr>
                    <td>2.</td>
                    <td>Registration No. with Type</td>
                    <td>{{$finalReport->vehicle_no}} & {{$finalReport->made_make}}</td>
                </tr>
                <tr>
                    <td>3.</td>
                    <td>Engine No., Chassis No., Model, Make, etc.</td>
                    <td>Engine No: {{$finalReport->engine_no}}<br>Chassis No: {{$finalReport->chass_no}}</td>
                </tr>
                <tr>
                    <td>4.</td>
                    <td>Class of Vehicle</td>
                    <td>{{$finalReport->class_of_vehicle}}</td>
                </tr>
                <tr>
                    <td>5.</td>
                    <td>Seating Capacity Including Driver</td>
                    <td>{{$finalReport->seating_capacity}}</td>
                </tr>
                <tr>
                    <td>6.</td>
                    <td>No. of Occupants at the Time of the Accident</td>
                    <td>{{$finalReport->no_occupants}}</td>
                </tr>
                <tr>
                    <td>7.</td>
                    <td>RC Book Owner</td>
                    <td>{{$finalReport->rc_owner_name}}</td>
                </tr>
                <tr>
                    <td>8.</td>
                    <td>RC Validity: From... To...</td>
                    <td>{{$finalReport->driver_rc_date}} TO {{$finalReport->driver_rc_exp_date}}</td>
                </tr>
                <tr>
                    <td>9.</td>
                    <td>Permit Validity:  To...</td>
                    <td>{{$finalReport->owner_permit_period_validity}}</td>
                </tr>
                <tr>
                    <td>10.</td>
                    <td>Fitness Validity:  To...</td>
                    <td>{{$finalReport->fitness_validity_vehicle}}</td>
                </tr>
                <tr>
                    <td>11.</td>
                    <td>Pollution Validity: From... To...</td>
                    <td>{{$finalReport->polution_validity_from}} - {{$finalReport->polution_validity_to}}</td>
                </tr>
                <tr>
                    <td>12.</td>
                    <td>Policy/Cover Note No. & Insurance Company</td>
                    <td>{{$finalReport->insurance_com_name}}<br>{{$finalReport->customer_policy_no}}</td>
                </tr>
                <tr>
                    <td>13.</td>
                    <td>Policy/Cover Note Validity: From... To...</td>
                    <td>{{$finalReport->customer_policy_start}} TO {{$finalReport->customer_policy_end}}</td>
                </tr>
                <tr>
                    <td>14.</td>
                    <td>Whether the DOA is within the Policy Period</td>
                    <td>@if($finalReport->doa_in_policy==1) Yes @else No @endif</td>
                </tr>
                <tr>
                    <td>15.</td>
                    <td>If Goods Laden, Details of the Goods, Owner...</td>
                    <td>{{$finalReport->if_goodladen_details}}</td>
                </tr>
                <tr>
                    <td>16.</td>
                    <td>Details of the Damages Caused to the Vehicle</td>
                    <td>{{$finalReport->damage_consist_with_accident}}</td>
                </tr>
            </table>

            <h3>IV. FACTS AND FINDINGS</h3>

            <ul>
                <li>{{$finalReport->fact_findings}}</li>
            </ul>


            <h3>CONCLUSION</h3>

            <h4 style="text-align: justify;">
               {{$finalReport->conclusion}}.
            </h4>
            <br>
            <br>
            <div style="display: flex; justify-content: space-between;">
                <div> {{$finalReport->date_of_submitted}}<br></div>
                <div>{{$finalReport->owner_executive}}</div>
            </div>
            <br>
            <br>
            <br>

            <div style="display: flex; flex-wrap: wrap; justify-content: flex-start;  margin-top: 450px;">
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
                    style="width:300px; height:310px; border: 1px solid #ccc; display: block; margin-left: 10px; margin-right: 10px;">
                
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