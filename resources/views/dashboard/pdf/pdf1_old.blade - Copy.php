<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <title></title>
    <style>
        body {
            margin: 0;
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
     <div style="
        width: 600px;
        height: auto;
        page-break-after: always;
        font-family: serif;
        padding: 0px 30px;
        background-color: #fff;
      ">
        <div style="width: 100%; height: 58px">
            <div style="
            border: 1px solid #000;
            border-radius: 10px;
            padding: 10px;
            float: right;
          ">
                <h2 style="margin: 0px 0px 5px 0px">{{ $finalReport->insurance_com_name ?? 'N/A'}}</h2>
                
            </div>
        </div>

        <p style="
          width: 100%;
          background-color: #943634;
          text-align: center;
          font-weight: 600;
        ">
            INVESTIGATION REPORT:
        </p>

        <!-- Table-1 -->
        <table style="width: 100%; border-collapse: collapse; margin-bottom: 10px">
           <h4 style="width: 100%; margin-bottom: 0px">1.INTRODUCTIONdd:</h4>
            <thead>
                <tr>
                    <th style="border: 1px solid #000; width: 7%; text-align: center;">#</th>
                    <th style="border: 1px solid #000; width: 60%; text-align: left; padding-left: 8px;">Description</th>
                    <th style="border: 1px solid #000; width: 30%; text-align: left; padding-left: 8px;">Details</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td style="border: 1px solid #000; text-align: center;">1</td>
                    <td style="border: 1px solid #000; padding-left: 8px;">Date of entrustment of the Investigation</td>
                    <td style="border: 1px solid #000; padding-left: 8px;">{{ $finalReport->investigation_date ?? 'N/A'}}</td>
                </tr>
                <tr>
                    <td style="border: 1px solid #000; text-align: center;">2</td>
                    <td style="border: 1px solid #000; padding-left: 8px;">Date of submission of the Investigation Report</td>
                    <td style="border: 1px solid #000; padding-left: 8px;">{{ $finalReport->investigation_submission_date ?? 'N/A'}}</td>
                </tr>
                <tr>
                    <td style="border: 1px solid #000; text-align: center;">3</td>
                    <td style="border: 1px solid #000; padding-left: 8px;">OP (MV) no:</td>
                    <td style="border: 1px solid #000; padding-left: 8px;">{{ $finalReport->op_no ?? 'N/A'}}</td>
                </tr>
                <tr>
                    <td style="border: 1px solid #000; text-align: center;">4</td>
                    <td style="border: 1px solid #000; padding-left: 8px;">Advocate Name</td>
                    <td style="border: 1px solid #000; padding-left: 8px;">{{ $finalReport->advocate_name ?? 'N/A'}}</td>
                </tr>
                <tr>
                    <td style="border: 1px solid #000; text-align: center;">5</td>
                    <td style="border: 1px solid #000; padding-left: 8px;">Court</td>
                    <td style="border: 1px solid #000; padding-left: 8px;">{{ $finalReport->court ?? 'N/A'}}</td>
                </tr>
            </tbody>
        </table>

        <!-- Table-2 -->
        <table style="width: 100%; border-collapse: collapse; margin-bottom: 10px">
           <h4 style="width: 100%; margin-bottom: 0px">II.CASE/CLAIM DETAILS:</h4>
            <thead>
                <tr>
                    <th style="border: 1px solid #000; width: 7%; text-align: center;">#</th>
                    <th style="border: 1px solid #000; width: 60%; text-align: left; padding-left: 8px;">Description</th>
                    <th style="border: 1px solid #000; width: 30%; text-align: left; padding-left: 8px;">Details</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td style="border: 1px solid #000; text-align: center;">1</td>
                    <td style="border: 1px solid #000; padding-left: 8px;">Case Title (Name of the 1st Claimant Vs. Name of the 1st Respondent)</td>
                    <td style="border: 1px solid #000; padding-left: 8px;">{{$finalReport->case_title}} {{$finalReport->injured_Person_name}} VS {{$finalReport->name_accused}}</td>
                </tr>
                <tr>
                    <td style="border: 1px solid #000; text-align: center;">2</td>
                    <td style="border: 1px solid #000; padding-left: 8px;">Case/Claim filed under Section</td>
                    <td style="border: 1px solid #000; padding-left: 8px;">{{ $finalReport->case_claim ?? 'N/A'}}</td>
                </tr>
                <tr>
                    <td style="border: 1px solid #000; text-align: center;">3</td>
                    <td style="border: 1px solid #000; padding-left: 8px;">Cause of Loss (e.g., Death/Injury, TPPD)</td>
                    <td style="border: 1px solid #000; padding-left: 8px;">{{ $finalReport->cause_loss ?? 'N/A'}}</td>
                </tr>
                <tr>
                    <td style="border: 1px solid #000; text-align: center;">4</td>
                    <td style="border: 1px solid #000; padding-left: 8px;">OD Claim, if any, made. If so, details (Ascertained from Insured)</td>
                    <td style="border: 1px solid #000; padding-left: 8px;">{{ $finalReport->od_claim ?? 'N/A'}}</td>
                </tr>
            </tbody>
        </table>


        <!-- Table-3 -->
        <table style="width: 100%; border-collapse: collapse; margin-bottom: 10px;">
            <h4 style="width: 100%; margin-bottom: 0px">III.ACCIDENT DETAILS:</h4>
            <thead>
                <tr>
                    <th style="border: 1px solid #000; width: 7%; text-align: center;">#</th>
                    <th style="border: 1px solid #000; width: 60%; text-align: left; padding-left: 8px;">Description</th>
                    <th style="border: 1px solid #000; width: 30%; text-align: left; padding-left: 8px;">Details</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td style="border: 1px solid #000; text-align: center;">1</td>
                    <td style="border: 1px solid #000; padding-left: 8px;">Date & Time of Accident</td>
                    <td style="border: 1px solid #000; padding-left: 8px;">{{$finalReport->accident_date_time ?? 'N/A'}}</td>
                </tr>
                <tr>
                    <td style="border: 1px solid #000; text-align: center;">2</td>
                    <td style="border: 1px solid #000; padding-left: 8px;">Place of Accident</td>
                    <td style="border: 1px solid #000; padding-left: 8px;">{{$finalReport->spot_address ?? 'N/A'}}</td>
                </tr>
                <tr>
                    <td style="border: 1px solid #000; text-align: center;">3</td>
                    <td style="border: 1px solid #000; padding-left: 8px;">Road details (Highway, City Road, Lane, etc.)</td>
                    <td style="border: 1px solid #000; padding-left: 8px;">{{ $finalReport->road_details ?? 'N/A' }}</td>
                </tr>
                <tr>
                    <td style="border: 1px solid #000; text-align: center;">4</td>
                    <td style="border: 1px solid #000; padding-left: 8px;">Elaborate description of the accident</td>
                    <td style="border: 1px solid #000; padding-left: 8px;">{{$finalReport->accident_description ?? 'N/A'}}</td>
                </tr>
            </tbody>
        </table>


        <!-- Table-4 -->

        <table style="width: 100%; border-collapse: collapse; margin-bottom: 10px;">
          <h4 style="width: 100%; margin-bottom: 0px">
                  IV.INSURED VEHICLE DETAILS:
              </h4>
          <thead>
              <tr>
                  <th style="border: 1px solid #000; width: 7%; text-align: center;">#</th>
                  <th style="border: 1px solid #000; width: 52%; text-align: left; padding-left: 8px;">Description</th>
                  <th style="border: 1px solid #000; width: 38%; text-align: left; padding-left: 8px;">Details</th>
              </tr>
          </thead>
          <tbody>
              <tr>
                  <td style="border: 1px solid #000; text-align: center;">1</td>
                  <td style="border: 1px solid #000; padding-left: 8px;">Registration No. with Type</td>
                  <td style="border: 1px solid #000; padding-left: 8px;">{{ $finalReport->vehicle_no ?? 'N/A' }}</td>
              </tr>
              <tr>
                  <td style="border: 1px solid #000; text-align: center;">2</td>
                  <td style="border: 1px solid #000; padding-left: 8px;">Engine No, Chassis No, Model, Make, etc.</td>
                  <td style="border: 1px solid #000; padding-left: 8px;">
                      <strong>Engine No:</strong> {{ $finalReport->engine_no ?? 'N/A' }} <br />
                      <strong>Chassis No:</strong> {{ $finalReport->chass_no ?? 'N/A' }} <br />
                      <strong>Make & Model:</strong> {{$finalReport->made_make ?? 'N/A'}}
                  </td>
              </tr>
              <tr>
                  <td style="border: 1px solid #000; text-align: center;">3</td>
                  <td style="border: 1px solid #000; padding-left: 8px;">Class of Vehicle</td>
                  <td style="border: 1px solid #000; padding-left: 8px;">{{ $finalReport->class_of_vehicle ?? 'N/A' }}</td>
              </tr>
              <tr>
                  <td style="border: 1px solid #000; text-align: center;">4</td>
                  <td style="border: 1px solid #000; padding-left: 8px;">Seating capacity including Driver</td>
                  <td style="border: 1px solid #000; padding-left: 8px;">{{ $finalReport->seating_capacity ?? 'N/A' }}</td>
              </tr>
              <tr>
                  <td style="border: 1px solid #000; text-align: center;">5</td>
                  <td style="border: 1px solid #000; padding-left: 8px;">No. of occupants at the time of the Accident</td>
                  <td style="border: 1px solid #000; padding-left: 8px;">{{ $finalReport->no_occupants ?? 'N/A' }}</td>
              </tr>
              <tr>
                  <td style="border: 1px solid #000; text-align: center;">6</td>
                  <td style="border: 1px solid #000; padding-left: 8px;">RC Book Owner</td>
                  <td style="border: 1px solid #000; padding-left: 8px;">{{ $finalReport->rc_owner_name ?? 'N/A' }}</td>
              </tr>

              <tr>
                  <td style="border: 1px solid #000; text-align: center;">7</td>
                  <td style="border: 1px solid #000; padding-left: 8px;">Name of Insured</td>
                  <td style="border: 1px solid #000; padding-left: 8px;">{{ $finalReport->rc_owner_name ?? 'N/A' }}</td>
              </tr>

              <tr>
                  <td style="border: 1px solid #000; text-align: center;">8</td>
                  <td style="border: 1px solid #000; padding-left: 8px;">Relation of Insured, if any, with Injured/Deceased/Claimant</td>
                  <td style="border: 1px solid #000; padding-left: 8px;">{{ $finalReport->relation_insured_and_claiment }}</td>
              </tr>

              <tr>
                  <td style="border: 1px solid #000; text-align: center;">9</td>
                  <td style="border: 1px solid #000; padding-left: 8px;">RC Validity: From... To...</td>
                  <td style="border: 1px solid #000; padding-left: 8px;">FROM {{ $finalReport->driver_rc_date ?? 'N/A' }} TO {{ $finalReport->driver_rc_exp_date ?? 'N/A' }}</td>
              </tr>
              
              <tr>
                  <td style="border: 1px solid #000; text-align: center;">10</td>
                  <td style="border: 1px solid #000; padding-left: 8px;">Permit Validity: From... To...</td>
                  <td style="border: 1px solid #000; padding-left: 8px;">{{ $finalReport->permit_details ?? 'N/A' }}</td>
              </tr>

              <tr>
                  <td style="border: 1px solid #000; text-align: center;">11</td>
                  <td style="border: 1px solid #000; padding-left: 8px;">Fitness Validity : From…. To….</td>
                  <td style="border: 1px solid #000; padding-left: 8px;">From {{ $finalReport->fitness_validity_from ?? 'N/A' }} To  {{ $finalReport->fitness_validity_to ?? 'N/A' }}</td>
              </tr>

              <tr>
                  <td style="border: 1px solid #000; text-align: center;">12</td>
                  <td style="border: 1px solid #000; padding-left: 8px;">Pollution validity: From….. To….</td>
                  <td style="border: 1px solid #000; padding-left: 8px;">From {{ $finalReport->pollution_validity_from ?? 'N/A' }} To  {{ $finalReport->pollution_validity_to ?? 'N/A' }}</td>
              </tr>

              <tr>
                  <td style="border: 1px solid #000; text-align: center;">13</td>
                  <td style="border: 1px solid #000; padding-left: 8px;">Policy/ Cover Note No. & Insurance Company</td>
                  <td style="border: 1px solid #000; padding-left: 8px;">{{ $finalReport->customer_policy_no ?? 'N/A' }} & {{ $finalReport->insurance_com_name}}</td>
              </tr>

              <tr>
                  <td style="border: 1px solid #000; text-align: center;">15</td>
                  <td style="border: 1px solid #000; padding-left: 8px;"> Whether the DOA is within the Policy Period</td>
                  <td style="border: 1px solid #000; padding-left: 8px;"> {{ $finalReport->doa_in_policy ?? 'N/A' }} </td>
              </tr>

              <tr>
                  <td style="border: 1px solid #000; text-align: center;">16</td>
                  <td style="border: 1px solid #000; padding-left: 8px;">Policy is Comprehensive or TP Liability only</td>
                  <td style="border: 1px solid #000; padding-left: 8px;">{{ $finalReport->policy_comper_tp_liability ?? 'N/A' }}</td>
              </tr>

              <tr>
                  <td style="border: 1px solid #000; text-align: center;">17</td>
                  <td style="border: 1px solid #000; padding-left: 8px;">If goods laden, details of the goods, owner, etc.</td>
                  <td style="border: 1px solid #000; padding-left: 8px;">{{ $finalReport->if_goodladen_details?? 'N/A' }}</td>
              </tr>
              <tr>
                  <td style="border: 1px solid #000; text-align: center;">18</td>
                  <td style="border: 1px solid #000; padding-left: 8px;">Details of the damages caused to the goods &how those were further
                  transported, etc</td>
                  <td style="border: 1px solid #000; padding-left: 8px;">{{ $finalReport->damage_goods_transport?? 'N/A' }}</td>
              </tr>

              <tr>
                  <td style="border: 1px solid #000; text-align: center;">19</td>
                  <td style="border: 1px solid #000; padding-left: 8px;">Details of the damages caused to the Vehicle</td>
                  <td style="border: 1px solid #000; padding-left: 8px;">{{ $finalReport->details_damage_vehicle?? 'N/A' }}</td>
              </tr>
          </tbody>
      </table>

   
        <!-- Table-8 -->
        <table style="width: 100%; border-collapse: collapse; margin-bottom: 10px;">
        <h4 style="width: 100%; margin-bottom: 0px">
                VIII.FIR DETAILS (Enclose copy):
              </h4>
          <tbody>
              <tr>
                  <td style="width: 7%; border: 1px solid #000; text-align: center;">1</td>
                  <td style="width: 45%; border: 1px solid #000; padding: 5px;">Name of Police Station, District & State</td>
                  <td style="width: 45%; border: 1px solid #000; padding: 5px;">
                     {{ $finalReport->police_station ?? 'N/A' }} &  {{ $finalReport->district ?? 'N/A' }}  & {{ $finalReport->state ?? 'N/A' }} 
                  </td>
              </tr>
              <tr>
                  <td style="border: 1px solid #000; text-align: center;">2</td>
                  <td style="border: 1px solid #000; padding: 5px;">FIR No, Year & Sections</td>
                  <td style="border: 1px solid #000; padding: 5px;">{{$finalReport->fir_no?? 'N/A' }} & {{$finalReport->section?? 'N/A' }} </td>
              </tr>
              <tr>
                  <td style="border: 1px solid #000; text-align: center;">3</td>
                  <td style="border: 1px solid #000; padding: 5px;">Date & Time of FIR</td>
                  <td style="border: 1px solid #000; padding: 5px;">{{$finalReport->date_time_fir ?? 'N/A' }} HRS</td>
              </tr>
              <tr>
                  <td style="border: 1px solid #000; text-align: center;">4</td>
                  <td style="border: 1px solid #000; padding: 5px;">Name of Complainant</td>
                  <td style="border: 1px solid #000; padding: 5px;">{{ $finalReport->name_complainant ?? 'N/A' }}</td>
              </tr>
              <tr>
                  <td style="border: 1px solid #000; text-align: center;">5</td>
                  <td style="border: 1px solid #000; padding: 5px;">Complainant’s relationship with the Injured/ Deceased</td>
                  <td style="border: 1px solid #000; padding: 5px;">{{ $finalReport->complnt_rel_injured ?? 'N/A' }}</td>
              </tr>
              <tr>
                  <td style="border: 1px solid #000; text-align: center;">6</td>
                  <td style="border: 1px solid #000; padding: 5px;">Description of the Accused</td>
                  <td style="border: 1px solid #000; padding: 5px;">{{ $finalReport->descrition_accused ?? 'N/A' }} </td>
              </tr>
              <tr>
                  <td style="border: 1px solid #000; text-align: center;">7</td>
                  <td style="border: 1px solid #000; padding: 5px;">How did accused identified</td>
                  <td style="border: 1px solid #000; padding: 5px;">{{ $finalReport->accused_identifed ?? 'N/A' }}</td>
              </tr>
              <tr>
                  <td style="border: 1px solid #000; text-align: center;">8</td>
                  <td style="border: 1px solid #000; padding: 5px;">Delay, if any, in lodging FIR & Reasons thereof</td>
                  <td style="border: 1px solid #000; padding: 5px;">{{ $finalReport->delay_in_fir ?? 'N/A' }}</td>
              </tr>
              <tr>
                  <td style="border: 1px solid #000; text-align: center;">9</td>
                  <td style="border: 1px solid #000; padding: 5px;">Gist of FIR</td>
                  <td style="border: 1px solid #000; padding: 5px;">
                  {{ $finalReport->gist_fir ?? 'N/A' }}
                  </td>
              </tr>
          </tbody>
      </table>


        <!-- Table-9 -->
        <table style="width: 100%; border-collapse: collapse; margin-bottom: 10px;">
            
            <h4 style="width: 100%; margin-bottom: 0px">
                    X.CHARGE-SHEET-CHALLAN DETAILS
              </h4>
            <tbody>
                <tr>
                    <td style="width: 7%; border: 1px solid #000; text-align: center;">1</td>
                    <td style="width: 45%; border: 1px solid #000; padding: 5px;">
                        Court where Charge-sheet/final report filed & CC No.
                    </td>
                    <td style="width: 45%; border: 1px solid #000; padding: 5px;">
                       {{ $finalReport->court_where_chargesheet_filled ?? 'N/A' }}
                    </td>
                </tr>
                <tr>
                    <td style="border: 1px solid #000; text-align: center;">2</td>
                    <td style="border: 1px solid #000; padding: 5px;">Date of Charge-Sheet/Final report</td>
                    <td style="border: 1px solid #000; padding: 5px;">{{ $finalReport->date_chargesheet?? 'N/A' }}</td>
                </tr>
                <tr>
                    <td style="border: 1px solid #000; text-align: center;">3</td>
                    <td style="border: 1px solid #000; padding: 5px;">Sections in the Charge-sheet</td>
                    <td style="border: 1px solid #000; padding: 5px;">{{ $finalReport->section_chargesheet?? 'N/A' }}</td>
                </tr>
                <tr>
                    <td style="border: 1px solid #000; text-align: center;">4</td>
                    <td style="border: 1px solid #000; padding: 5px;">
                        Who all are charged with (e.g., Our Driver & Other Driver)
                    </td>
                    <td style="border: 1px solid #000; padding: 5px;">{{ $finalReport->who_charged_with ?? 'N/A' }}</td>
                </tr>
                <tr>
                    <td style="border: 1px solid #000; text-align: center;">5</td>
                    <td style="border: 1px solid #000; padding: 5px;">Gist of Charge-Sheet</td>
                    <td style="border: 1px solid #000; padding: 5px;">
                        {{ $finalReport->gist_chargesheet ?? 'N/A' }}
                    </td>
                </tr>
                <tr>
                    <td style="border: 1px solid #000; text-align: center;">6</td>
                    <td style="border: 1px solid #000; padding: 5px;">Any Petty case charged, if so, details.</td>
                    <td style="border: 1px solid #000; padding: 5px;"> {{ $finalReport->petty_case_charged ?? 'N/A' }}</td>
                </tr>
                <tr>
                    <td style="border: 1px solid #000; text-align: center;">7</td>
                    <td style="border: 1px solid #000; padding: 5px;">Present status of the Criminal case.</td>
                    <td style="border: 1px solid #000; padding: 5px;"> {{ $finalReport->status_criminal_case ?? 'N/A' }}</td>
                </tr>
            </tbody>
        </table>
    
       <h4 style="width: 100%; margin-bottom: 10px">
                  XI.INVESTIGATION DETAILS:
        </h4>
        <table border="1" cellpadding="5" cellspacing="0" style="width: 100%; border-collapse: collapse;">
         
            <thead>
                <tr>
                    <th style="text-align: center; width: 7%;">#</th>
                    <th style="width: 45%;">Investigation Details</th>
                    <th style="width: 45%;">Response</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td style="text-align: center;">1</td>
                    <td>Whether the Accident Genuine or Not as per the evidence gathered.</td>
                    <td> {{ $finalReport->accident_genuine?? 'N/A' }}</td>
                </tr>
                <tr>
                    <td style="text-align: center;">2</td>
                    <td>Opinion on disablement/dependency</td>
                    <td>{{ $finalReport->opnion_disablement?? 'N/A' }}</td>
                </tr>
                <tr>
                    <td style="text-align: center;">3</td>
                    <td>Opinion on Income of Injured/Deceased.</td>
                    <td>{{ $finalReport->opnion_injured?? 'N/A' }}</td>
                </tr>
                <tr>
                    <td style="text-align: center;">4</td>
                    <td>Opinion on what capacity the Injured/deceased travelled in the Vehicle.</td>
                    <td>{{ $finalReport->role_injured?? 'N/A' }}</td>
                </tr>
                <tr>
                    <td style="text-align: center;">5</td>
                    <td>Opinion on Contribution of our vehicle & Other Vehicle, if more than one Vehicle is involved.</td>
                    <td>{{ $finalReport->accident_cause_more_vehicle?? 'N/A' }}</td>
                </tr>
                <tr>
                    <td style="text-align: center;">6</td>
                    <td>Opinion on DL effectiveness/validity as on Date of Accident.</td>
                    <td>{{ $finalReport->opnion_dl_validity?? 'N/A' }}</td>
                </tr>
                <tr>
                    <td style="text-align: center;">7</td>
                    <td>Whether DL extract obtained, if not, reasons thereof.</td>
                    <td>{{ $finalReport->dl_extract_obtained?? 'N/A' }}</td>
                </tr>
                <tr>
                    <td style="text-align: center;">8</td>
                    <td>Whether involvement of the Injured/Deceased established from the FIR, if not, clarify.</td>
                    <td>{{ $finalReport->injured_established_fir?? 'N/A' }}</td>
                </tr>
                <tr>
                    <td style="text-align: center;">9</td>
                    <td>Whether involvement of Insured Vehicle is established from the FIR, if not, clarify</td>
                    <td>{{ $finalReport->insured_vehicle_establ_fir?? 'N/A' }}</td>
                </tr>
                <tr>
                    <td style="text-align: center;">10</td>
                    <td>Comments on defence on the evidence available</td>
                    <td>{{ $finalReport->comment_defence_evidence?? 'N/A' }}</td>
                </tr>
            </tbody>
        </table>

        </div>

        <div style="width: 100%; height: auto; margin-bottom: 10px">
            <h4 style="width: 100%; margin-bottom: 10px">
                XII. <u>WOUND/DISABILITY CERTIFICATE (Enclose copy):</u>
            </h4>

            <p>
               {{ $finalReport->wound_certificate?? 'N/A' }}
            </p>
        </div>

        <div style="width: 100%; height: auto; margin-bottom: 10px">
            <h4 style="width: 100%; margin-bottom: 10px">
                XII.
                <u>
                    XIII. WEARING OF PROTECTIVE HEAD WEAR/HELMET IN CASE OF HEAD INJURY
                    CAUSED TO TWO-WHEELER RIDER OR PILLION RIDER AS CLAIMANT: -
                </u>
            </h4>
            <p> {{ $finalReport->helment_details?? 'N/A' }}</p>
        </div>

        <!-- Table-9 -->
       
        <h4 style="width: 100%; margin-bottom: 10px">XIV. DISCUSSION OF EVIDENCE AVAILABLE:</h4>
  
        <table border="1" cellpadding="5" cellspacing="0" style="width: 100%; margin-bottom: 10px;">
    
              <tr>
                  <td style="width: 48%;">(A) Result on verification of Medical Records</td>
                  <td>{{ $finalReport->verification_medical_report?? 'N/A' }}</td>
              </tr>
              <tr>
                  <td>(B) Result of discussion with the Injured/deceased family & neighbours</td>
                  <td>{{ $finalReport->discussion_family_neighbour?? 'N/A' }}</td>
              </tr>
              <tr>
                  <td>(C) Discuss on what capacity the Injured/deceased was travelling in the Vehicle</td>
                  <td>{{ $finalReport->role_injured?? 'N/A' }}</td>
              </tr>
              <tr>
                  <td>(D) Result of discussion with the insured</td>
                  <td>{{ $finalReport->discussion_injured?? 'N/A' }}</td>
              </tr>
              <tr>
                  <td>(E) Result of discussion with the employer for confirming the occupation & income of the injured/ deceased</td>
                  <td>{{ $finalReport->discussion_employeer_injured?? 'N/A' }}</td>
              </tr>
              <tr>
                  <td>(F) Result of discussion with the rider of the IV</td>
                  <td>{{ $finalReport->discussion_rider ?? 'N/A' }}</td>
              </tr>
              <tr>
                  <td>(G) Discussion on the Financial Investigation on the Insured with regard to his employment, employer, salary, movable & immovable property, total monthly income, etc:</td>
                  <td>{{ $finalReport->discussion_financial?? 'N/A' }}</td>
              </tr>
          </table>

    
        <div style="width: 100%; height: auto; margin-bottom: 10px">
            <h4 style="width: 100%; margin-bottom: 10px">
                <u>FACTS AND FINDINGS:</u>
            </h4>

            <ul>
                <li>
                  {{ $finalReport->fact_findings?? 'N/A' }}
                </li>
            </ul>
        </div>

        <div style="width: 100%; height: auto; margin-bottom: 10px">
            <h4 style="width: 100%; margin-bottom: 10px">
                <u>CONCLUSION:</u>
            </h4>

            <p>
               {{ $finalReport->conclusion?? 'N/A' }}
            </p>
        </div>
    </div>  

        <div style="width: 100%; height: 50px; margin-bottom: 10px">
            <h5 style="width: 40%; margin-bottom: 10px; float: left">{{ $finalReport->investigation_submission_date ?? 'N/A'}}</h5>
            <h5 style="width: 50%; margin-bottom: 10px; float: left; text-align: end">
                {{ $finalReport->driver_executive ?? 'N/A'}}
            </h5>
            
        </div>


        <div style="display: flex; flex-wrap: wrap; justify-content: flex-start;  margin-top: 150px;">
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
                <p style="margin: 10px 0; font-weight: bold; text-decoration: underline; margin-top:55px">{{ $description }}</p>
                @endif


                @if (file_exists(storage_path('app/public/' . $image)))
                <img src="data:image/{{ pathinfo($image, PATHINFO_EXTENSION) }};base64,{{ base64_encode(file_get_contents(storage_path('app/public/' . $image))) }}"
                    alt="Image"
                    style="width:300px; height:410px; border: 1px solid #ccc; display: block; margin-left: 10px; margin-right: 10px;">
               
                @endif
            </div>
            @endforeach
            @endif
        </div>
  </div>
</body>
</html>
