<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Od Report Reliance</title>
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
    </style>
</head>

<body>
    <div style="text-align: right;">
        <img src="{{ public_path('images/erg.png') }}" alt="">
    </div>


    <div style="text-align: center;">
        <h4>
            OD INVESTIGATION REPORT-RELIANCE
        </h4>
    </div>

    <table>
        <tr>
            <td>Claim no</td>
            <td>{{$finalReport->claim_no}}</td>
        </tr>
        <tr>
            <td>Name of insured</td>
            <td>{{$finalReport->customer_name}}</td>
        </tr>
        <tr>
            <td>Insured’s Address & contact No</td>
            <td>{{$finalReport->customer_premanent_address}}. PH: {{$finalReport->customer_phone}}</td>
        </tr>
        <tr>
            <td>Vehicle No</td>
            <td>{{$finalReport->vehicle_no}}</td>
        </tr>
        <tr>
            <td>Vehicle make & model</td>
            <td>{{$finalReport->made_make}}</td>
        </tr>
        <tr>
            <td>Date of Loss</td>
            <td>{{$finalReport->accident_date_time}}</td>
        </tr>
        <tr>
            <td>Claim intimation to Call center, if any delay specify the no. of days</td>
            <td>NA</td>
        </tr>
        <tr>
            <td>Investigator Name</td>
            <td>{{$finalReport->insurance_com_name}}</td>
        </tr>
        <tr>
            <td>Report Submitting date</td>
            <td>{{$finalReport->investigation_submission_date}}</td>
        </tr>

        <tr>
            <td>Policy details</td>
            <td>{{$finalReport->customer_policy_no}}</td>
        </tr>
        <tr>
            <td>Policy period</td>
            <td>{{$finalReport->customer_policy_start}} TO {{$finalReport->customer_policy_end}}</td>
        </tr>
        <tr>
            <td>Policy type</td>
            <td>{{$finalReport->customer_insurance_type}}</td>
        </tr>
        <tr>
            <td>FIR & Panchanama Details</td>
            <td>{{$finalReport->fir}} & {{$finalReport->inquest_panchnama}}</td>
        </tr>
        <tr>
            <td>Injury & Hospital Details</td>
            <td>{{$finalReport->injury_record_details}}. & {{$finalReport->injured_admited_hospital_details}}</td>
        </tr>
        <tr>
            <td>No of passengers at the time of loss with ages</td>
            <td>{{$finalReport->no_injured}}</td>
        </tr>
        <tr>
            <td>Gate entry date</td>
            <td>{{$finalReport->gate_entry_date}}</td>
        </tr>
        <tr>
            <td>Job card date</td>
            <td>{{$finalReport->gate_entry_date}}</td>
        </tr>
        <tr>
            <td>Google timeline of insured and driver</td>
            <td>NA.</td>
        </tr>
        <tr>
            <td>Towing Receipt</td>
            <td>NA</td>
        </tr>

    </table>

    <table>
        <tr>
            <td style="text-align: justify;">
                <h4>CONCLUSION:</h4><br>
                   {{$finalReport->about_accident}}
            </td>
        </tr>
    </table>


    <div style="display: flex; justify-content: space-between;">
        <div>{{$finalReport->investigation_submission_date}}</div>
        <div>
            <h4> {{$finalReport->owner_executive}}, {{$finalReport->insurance_com_name}} </h4>
            <img src="" alt="">
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