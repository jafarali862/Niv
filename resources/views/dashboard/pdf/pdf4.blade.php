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
            border: 1px solid black;
            padding: 8px;
            text-align: left;
        }
    </style>
</head>

<body>
    <div id="container" style="text-align: center; width: 600px; padding-left:7%">
        <div style="display: inline-block; width: 300px; vertical-align: top;">
            <img src="{{ public_path('images/image.png') }}" alt="" width="100%">
            <hr style="border: 0; height: 10px; background-color: red; margin: 10px;">

            <p style="text-align: left;"> <span style="font-size: 20px; ">MOTOR THIRD PARTY CLAIMS </span><br><span
                    style="font-size: 40px;">INVESTIGATION <br>REPORT</span></p>

            <hr style="border: 0; height: 10px; background-color: red; margin: 10px;">
            <br>
            <table>
                <tr>
                    <th style="width: 30%;">REF NO.</th>
                    <th style="width: 70%;"> </th>
                </tr>
            </table>
            <br>
            <br>
            <br>
            <br>
            <table style="border-collapse: collapse; width: 100%; font-size: 13px;">
                <tr>
                    <td style="border: none;">CRIME NO:</td>
                    <td style="border: none;">{{$finalReport->fir_no}}</td>
                </tr>
                <tr>
                    <td style="border: none;">POLICE STATION:</td>
                    <td style="border: none;">{{$finalReport->police_station}}</td>
                </tr>
                <tr>
                    <td style="border: none;">DATE OF ACCIDENT:</td>
                    <td style="border: none;">{{$finalReport->accident_date_time}}</td>
                </tr>
                <tr>
                    <td style="border: none;">CHARGES U/S:</td>
                    <td style="border: none;">{{$finalReport->section}}</td>
                </tr>
                <tr>
                    <td style="border: none;">NATURE OF LOSS:</td>
                    <td style="border: none;">{{$finalReport->nature_of_claim}}</td>
                </tr>
                <tr>
                    <td style="border: none;">ACCUSED VEHICLE:</td>
                    <td style="border: none;">{{$finalReport->vehicle_no}}</td>
                </tr>
                <tr>
                    <td style="border: none;">CLASS OF VEHICLE:</td>
                    <td style="border: none;">{{$finalReport->class_of_vehicle}}</td>
                </tr>
                <tr>
                    <td style="border: none;">POLICY NO:</td>
                    <td style="border: none;">{{$finalReport->customer_policy_no}}</td>
                </tr>
                <tr>
                    <td style="border: none;">TYPE OF POLICY:</td>
                    <td style="border: none;">{{$finalReport->customer_insurance_type}}</td>
                </tr>
            </table>
        </div>

        <div
            style="display: inline-block; width: 5px; vertical-align: top; border-right: 2px solid black; height: 850px; margin-right: 5px;">
        </div>

        <div style="display: inline-block; width: 250px; vertical-align: top;">
            <div style="border: 3px solid red; height: 70px; width: 100%; ">
                <p style="text-align: center;">OPMV</p>
            </div>
            <br>
            <table style="font-size: 14px;">
                <tr>
                    <th style="width: 50%;">Connected Cases</th>
                    <th style="width: 50%;"> </th>
                </tr>
            </table>
            <br>
            <table style="font-size: 13px;">
                <tr>
                    <th style="width: 50%;">Filing Date</th>
                    <th style="width: 50%;"> </th>
                </tr>
                <tr>
                    <th style="width: 50%;">First Hearing Date</th>
                    <th style="width: 50%;"> </th>
                </tr>
                <tr>
                    <th style="width: 50%;">CNR No.</th>
                    <th style="width: 50%;"> </th>
                </tr>
            </table>
            <br>
            <p style="text-align: center; font-size: 13px;"><u>VICTIM</u></p>
            <p style="text-align: center; font-size: 13px;">{{$finalReport->injured_Person_name}}</p>

            <p style="text-align: center; align-items: center; font-size: 13px;">{{$finalReport->injured_address}}</p>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <p style="text-align: center;"><u>REMARK</u></p>
            <br>
            <p style="text-align: left;">Genuine/Fraud: {{$finalReport->accident_genuine}}</p>
            <p style="text-align: left;">Fit/Unfit: </p>
        </div>
    </div>

    <div style="text-align: center; width: 600px;">
        <hr>
        <div style="display: inline-block; width: 33%; text-align: left; font-size: 13px;">
            <p>Submitted before</p>
            <p>The Hub-in-charge<br>The New India Assurance Co.Ltd<br>Motor Third Party Claims Hub,<br> Trivandrum</p>
        </div>
        <div style="display: inline-block; width: 20%; text-align: left;"></div>
        <div style="display: inline-block; width: 30%; border: 2px solid black; height: 100px; margin-top:20px">
            <p style="text-align: center; font-size: 10px;">{{$finalReport->insurance_com_contact_person}}</p>
            <p style="text-align: center; font-size: 10px;">{{$finalReport->insurance_com_name}}<br>
            <p style="text-align: center; font-size: 10px;">{{$finalReport->insurance_com_address}}</p>
        </div>
        <hr>
    </div>


    <div id="container" style="margin-top: 25px;">
        <div style=" width: 600px;">
            <table>
                <tr>
                    <th colspan="2" style="text-align: center; background-color: yellow;">LIST OF ENCLOSURES</th>
                </tr>
            </table>
            <br>
            <table>
                <tr>
                    <th colspan="2" style="text-align: center;">Crime Records Collected from Police Station</th>
                </tr>
                <tr>
                    <td>List out the Crime Documents
                        (FIR, FIS, Charge Sheet, Scene Mahazar, Vehicle Mahazar, 161 Statements, AMVI Report, Spot
                        Sketch, Inquest Report/Body Note, Valuation Report)</td>
                    <td>@if($finalReport->fir) FIR @endif,@if($finalReport->final_report_charge_sheet) Final Report Charge Sheet @endif, @if($finalReport->viscera_report) Viscera Report @endif,@if($finalReport->mvi_report) AMVI Report @endif</td>
                </tr>
                <tr>
                    <td>List out the Vehicle Records
                        (Copy of Registration Certificates, Permits, Driving Licenses, Insurance Policy)</td>
                    <td> @if($finalReport->rc_book)Copy of Registration Certificates @endif,@if($finalReport->owner_permit_no) Permits @endif,@if($finalReport->details_dl_validity) Driving Licenses @endif,@if($finalReport->policy_details) Insurance Policy @endif</td>
                </tr>
                <tr>
                    <td>List out the Treatment Records
                        (Copy of MLC/Wound Certificate, OP Card, Discharge Summary, IP Case Sheet, Final Bill,
                        Postmortem Report, Disability Certificate, Treatment Certificate)</td>
                    <td>@if($finalReport->wound_certificate) copy of wound certificate @endif,@if($finalReport->post_mortem_report) Post Mortam Report @endif</td>
                </tr>
                <tr>
                    <th colspan="2" style="text-align: center;">Vehicle & DL Particulars Collected from Concerned RTO
                    </th>
                </tr>
                <tr>
                    <td>Fitness Particulars (in case of Commercial Vehicles)</td>
                    <td>@if($finalReport->fitness_validity_from) Fitness Report @endif</td>
                </tr>
                <tr>
                    <td>Permit Particulars (in case of Commercial Vehicles)</td>
                    <td>@if($finalReport->permit_details) Permit Detailes @endif</td>
                </tr>
                <tr>
                    <td>DL Particulars (in case of Commercial Vehicles)</td>
                    <td>@if($finalReport->dl_and_rto) Dl Detailes @endif</td>
                </tr>
                <tr>
                    <th colspan="2" style="text-align: center;">Records Verified Online through Official Websites/App
                        of Concerned Dept.</th>
                </tr>
                <tr>
                    <td>Registration Particulars </td>
                    <td>@if($finalReport->rc_owner_name) YES @endif</td>
                </tr>
                <tr>
                    <td>Driving License Particulars </td>
                    <td>@if($finalReport->dl_and_rto) Yes @endif</td>
                </tr>
                <tr>
                    <td>e-FIR from Official Site/App of Police Dept.</td>
                    <td>@if($finalReport->fir) Yes @endif</td>
                </tr>
                <tr>
                    <th colspan="2" style="text-align: center;">Medical Records Collected from Concerned Hospital
                        Authority </th>
                </tr>
                <tr>
                    <td>List out the Medical Records of Victim Collected from Concerned Hospital
                        (Copy of MLC/Wound Certificate, OP Card, Discharge Summary, IP Case Sheet, Final Bill,
                        Postmortem Report, Disability Certificate, Treatment Certificate)</td>
                    <td>@if($finalReport->wound_certificate) copy of wound certificate @endif,@if($finalReport->date_discharge) copy of Discharge Summary @endif,@if($finalReport->post_mortem_report) Postmortam Report @endif</td>
                </tr>
                <tr>
                    <th colspan="2" style="text-align: center;">Records Collected from Victim/Legal Representatives
                    </th>
                </tr>
                <tr>
                    <td>Document Attached as Age Proof</td>
                    <td>@if($finalReport->age_proof) Yes @endif</td>
                </tr>
                <tr>
                    <td>Document Attached as Income Proof </td>
                    <td>@if($finalReport->income_proof) Yes @endif</td>
                </tr>
                <tr>
                    <td>List out the Medical Records Collected from Victim (Copy of OP card, Discharge Summary, Final
                        Bill, Disability Certificate, Treatment Certificate, Xray)</td>
                    <td>@if($finalReport->injury_record_details) Injury Record @endif</td>
                </tr>
                <tr>
                    <td>List out any other Documents Collected (Statement of Insured, Accused, Victims, Witnesses,
                        Photographs, Newspaper Cuttings)</td>
                    <td>@if($finalReport->paper_cutting) Papper Cuttings @endif</td>
                </tr>
                <tr>
                    <th colspan="2" style="text-align: center;">Other Evidences </th>
                </tr>
                <tr>
                    <td>Spot Sketch, Photographs of Accident Location, Location on Map</td>
                    <td>@if($finalReport->final_images)YES @endif</td>
                </tr>
                <tr>
                    <td>List Out the Digital Evidences Collected, If any (Audio/Video Recordings)</td>
                    <td>@if($finalReport->final_images)YES @endif</td>
                </tr>

            </table>

            <h2>1. INTRODUCTION</h2>
            <table style="width: 100%; border-collapse: collapse;">
                <tr>
                    <th colspan="3" style="text-align: center; background-color: yellow;">INTRODUCTION</th>
                </tr>
                <tr>
                    <td>1.</td>
                    <td><strong>Reference No., Date of Allotment and Date of Report Submission. Mention Reason for delay
                            beyond 30 days</strong></td>
                    <td>{{$finalReport->investigation_date}},{{$finalReport->investigation_submission_date}}</td>
                </tr>
                <tr>
                    <td>2. </td>
                    <td><strong>Whether Contacted the Accused, Insured, Vehicle Owners, Witnesses, Victims and Verified
                            the ID Proofs, Income Proofs, Employment details of victims?</strong></td>
                    <td>@if($finalReport->income_proof) Yes @endif</td>
                </tr>
                <tr>
                    <td>3. </td>
                    <td><strong>Whether visited the Accident Location and conducted local enquiry regarding the
                            Genuineness of Accident?</strong></td>
                    <td>@if($finalReport->accident_genuine) YES @endif</td>
                </tr>
                <tr>
                    <td>4. </td>
                    <td><strong>Whether Contributory/Composite Negligence can be Established?</strong></td>
                    <td>@if($finalReport->accident_cause_more_vehicle) Yes @endif</td>
                </tr>
                <tr>
                    <td>5. </td>
                    <td><strong>Comment on availability of Wound Certificate and Genuineness of Accident</strong></td>
                    <td>{{$finalReport->wound_certi_coment}}</td>
                </tr>
            </table>

            <h2>II. ANALYSIS OF CRIME RECORDS, POLICY, VEHICLE, DL RECORDS</h2>
            <table style="width: 100%; border-collapse: collapse;">
                <tr>
                    <th colspan="3" style="text-align: center; background-color: yellow;">CRIME SUMMARY</th>
                </tr>
                <tr>
                    <td>1.</td>
                    <td>Date and Time of Accident</td>
                    <td>{{$finalReport->accident_date_time}}</td>
                </tr>
                <tr>
                    <td>2.</td>
                    <td>Location of Accident & Road Name</td>
                    <td>{{$finalReport->accident_location}},{{$finalReport->spot_address}},{{$finalReport->spot_location}}</td>
                </tr>
                <tr>
                    <td>3.</td>
                    <td>Name of Police Station and CRIME No.</td>
                    <td>{{$finalReport->police_station}} & {{$finalReport->fir_no}}</td>
                </tr>
                <tr>
                    <td>4.</td>
                    <td>a)Date of FIR <br>
                        b)FIR Delay in Days, Whether CMP</td>
                    <td>a){{$finalReport->date_time_fir}}<br>
                        b){{$finalReport->delay_in_fir}}</td>
                </tr>
                <tr>
                    <td>5.</td>
                    <td>Date of Charge Sheet/ Final Report</td>
                    <td>{{$finalReport->date_chargesheet}}</td>
                </tr>
                <tr>
                    <td>6.</td>
                    <td>Charge Sheet/Final Report Filed COURT & CC No</td>
                    <td>{{$finalReport->court}}</td>
                </tr>
                <tr>
                    <td>7.</td>
                    <td>Charge Sheeted U/s IPC Act</td>
                    <td>{{$finalReport->section}}</td>
                </tr>
                <tr>
                    <td>8.</td>
                    <td>Charge Sheeted U/s MV Act or other Acts/Rules</td>
                    <td>{{$finalReport->section}}</td>
                </tr>
                <tr>
                    <td>9.</td>
                    <td>Whether MOTOR OCCURANCE/ REFER Charge/ FALSE Case/FAKE Case/Mistake of Fact/ UN Report/ CMP
                        Case/ Drunk and Drive/ Overloading</td>
                    <td>@if($finalReport->is_any_motor_occurance) Yes @else No @endif</td>
                </tr>
                <tr>
                    <td>10.</td>
                    <td>No. of Vehicles Involved in Accident</td>
                    <td>{{$finalReport->no_vehicle_involved_acident}}</td>
                </tr>
                <tr>
                    <td>11.</td>
                    <td>Registration No. of Vehicles Involved in Accident</td>
                    <td>
                        <div style="display: flex; align-items: center;">
                            <span>Accused Vehicle<br>{{$finalReport->vehicle_no}}</span>
                            <div style="width: 1px; height: 30px; background-color: black; margin: 0 10px;"></div>
                            <span>Opposite Vehicle<br> {{$finalReport->opp_vehicle_reg_no}}</span>
                        </div>
                    </td>
                </tr>


                <tr>
                    <td>12.</td>
                    <td>Whether Police Charge against Vehicle Insured by New India Assurance?</td>
                    <td>@if($finalReport->fir_no)YES @endif</td>
                </tr>
                <tr>
                    <td>13.</td>
                    <td>a] Whether Motor Vehicle Inspection carried out by AMVI? If Not, Explain Why?<br>
                        b] Conclusion of AMVI Report?<br>
                        c] Whether the Damages are consistent as related with Accident?</td>
                    <td>a] @if($finalReport->mvi_report) YES @endif<br>
                        b] {{$finalReport->mvi_report}} <br>
                        c] @if($finalReport->damage_consist_with_accident) Yes @endif</td>
                </tr>
                <tr>
                    <td>14.</td>
                    <td>No. of Persons Injured/Dead/TPPD</td>
                    <td>
                        <div style="display: flex; align-items: center;">
                            <span>Injured<br>{{$finalReport->no_injured}}</span>
                            <div style="width: 1px; height: 30px; background-color: black; margin: 0 10px;"></div>
                            <span>Dead<br>{{$finalReport->no_dead}}</span>
                            <div style="width: 1px; height: 30px; background-color: black; margin: 0 10px;"></div>
                            <span>TPPD<br>{{$finalReport->no_tppd}}</span>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>15. </td>
                    <td colspan="2">
                        Details of Victims and How they are Connected with the Accident?<br>
                        (Pedestrian/ Rider of Insured Vehicle/ Occupant of Insured Vehicle/ Rider of Opposite Vehicle/
                        Occupant of Opposite Vehicle)
                        <br>
                        <br>

                        <table border="1" style="width: 100%; border-collapse: collapse; text-align: center;">
                            <tr>
                                <th>Name of Injured/Deceased/Owner of Property</th>
                                <th>Nature of Loss (Death/Injury/TPPD)</th>
                                <th>Connection with Accident</th>
                            </tr>
                            <tr>
                                <td>{{$finalReport->injured_Person_name}}</td>
                                <td>{{$finalReport->nature_of_claim}}</td>
                                <td>@if($finalReport->injured_Person_name) Driver @endif</td>
                            </tr>
                        </table>

                    </td>

                </tr>


            </table>

            <br>

            <table border="1" style="width: 100%; border-collapse: collapse; text-align: center;">
                <tr>
                    <th colspan="3" style="text-align: center; background-color: yellow;">INSURANCE, RC, FITNESS, PERMIT
                        SUMMARY</th>
                </tr>

                <tr>
                    <td>16.</td>
                    <td>Whether DOA is within Policy Period and Third-party liability covered</td>
                    <td>{{$finalReport->all_liability_covered}}</td>
                </tr>
                <tr>
                    <td>17.</td>
                    <td>Whether Close Proximity</td>
                    <td>@if($finalReport->is_close_proximity==1) Yes @else No @endif</td>
                </tr>
                <tr>
                    <td>18.</td>
                    <td>Whether RC Owner & Insured Same as on DOA?</td>
                    <td>@if($finalReport->rc_owner_insurer_same==1)Yes @else No @endif</td>
                </tr>
                <tr>
                    <td>19.</td>
                    <td>For Private Car/Two-Wheeler Liability Policy (Accused Vehicle Insured by New India) <br>
                    a]Whether Victim was an Occupant or Pillion Rider of Insured Vehicle? </td>
                    <td>a] @if($finalReport->victim_occupant_or_pillion=1) Occupant @else Pillion @endif</td>
                </tr>
                <tr>
                    <td>20.</td>
                    <td>For Private Car/Two-Wheeler Package Policy (Accused Vehicle Insured by New India) <br>
                        a] Whether Victim was an Employee of Insured? <br>b] Whether Victim was carried for Hire or
                        Reward?</td>
                    <td>a]  @if($finalReport->victim_employee_insured=1) Yes @else No @endif <br>b] @if($finalReport->victim_employee_insured=0) Yes @else No @endif</td>
                </tr>
                <tr>
                    <td>21.</td>
                    <td>For Goods Carrying Vehicle Policy (Accused Vehicle Insured by New India) <br>a] Whether Victim
                        was the Paid Driver/ Cleaner/ Other Employee of Insured? <br>b] Whether Victim
                        was Owner of Goods or his Authorized representative sitting in Driver Cabin? <br>c] Whether
                        Victim was travelling in Load Body of Insured Vehicle? </td>
                    <td>a] @if($finalReport->victim_owner_or_employee=1) Yes @else No @endif <br>b] @if($finalReport->victim_owner_or_employee=1) Yes @else No @endif <br>c] @if($finalReport->victim_travel_on_load_body) Yes @else No @endif</td>
                </tr>
                <tr>
                    <td>22.</td>
                    <td>Registration Valid on DOA? (For Private Vehicles)</td>
                    <td>@if($finalReport->reg_valid_doa==1) Yes @else No @endif</td>
                </tr>
                <tr>
                    <td>23.</td>
                    <td>Certificate of Fitness Valid on DOA? (For Commercial Vehicles)</td>
                    <td>@if($finalReport->fitness_valid_doa==1) Yes @else No @endif</td>
                </tr>
                <tr>
                    <td>24.</td>
                    <td>a] Valid Permit on DOA? (For Commercial Vehicles) <br>b] Whether any Violation of Route Permit?
                    </td>
                    <td>@if($finalReport->valid_permit_doa==1) Yes @else No @endif</td>
                </tr>
                <tr>
                    <td>25.</td>
                    <td>Whether Vehicles Involved in any Other Accidents? If Yes, Specify the OPMVs and Crime Nos</td>
                    <td>@if($finalReport->accused_accident_before==1)Yes @else No @endif</td>
                </tr>
            </table>


            <table border="1" style="width: 100%; border-collapse: collapse; text-align: center;">
                <tr>
                    <td>

                        <table border="1" style="width: 100%; border-collapse: collapse; text-align: center;">
                            <tr>
                                <th colspan="2">INSURANCE PARTICULARS</th>
                                <th>INSURED VEHICLE</th>
                                <th>OPPOSITE VEHICLE</th>
                            </tr>
                            <tr>
                                <td>i.</td>
                                <td>Vehicle No.</td>
                                <td>{{$finalReport->vehicle_no}}</td>
                                <td>{{$finalReport->opp_vehicle_reg_no}}</td>
                            </tr>
                            <tr>
                                <td>ii.</td>
                                <td>Insured Name & Contact</td>
                                <td>{{$finalReport->customer_name}}</td>
                                <td>{{$finalReport->customer_father_name}}</td>
                            </tr>
                            <tr>
                                <td>iii.</td>
                                <td>Name of Insurer</td>
                                <td>{{$finalReport->insurance_com_name}}</td>
                                <td>{{$finalReport->opp_party_insurer_name}}</td>
                            </tr>
                            <tr>
                                <td>iv.</td>
                                <td>Policy No. & Issue Branch</td>
                                <td>{{$finalReport->customer_policy_no}}</td>
                                <td>{{$finalReport->opp_party_policy_no}}</td>
                            </tr>
                            <tr>
                                <td>v.</td>
                                <td>Comprehensive/Liability</td>
                                <td>@if($finalReport->comperhensive==1) Yes @else NO @endif</td>
                                <td>{{$finalReport->is_opp_party_liabile}}</td>
                            </tr>
                            <tr>
                                <td>vi.</td>
                                <td>Period of Insurance (with Time)</td>
                                <td>{{$finalReport->customer_policy_start}} TO {{$finalReport->customer_policy_end}}</td>
                                <td>{{$finalReport->opp_party_period_insurance}}</td>
                            </tr>

                            <tr>
                                <th colspan="2">RC PARTICULARS</th>
                                <th>INSURED VEHICLE</th>
                                <th>OPPOSITE VEHICLE</th>
                            </tr>
                            <tr>
                                <td>vii.</td>
                                <td>Class of Vehicle (TW/LMV/Goods/Contract/Taxi/Tourist)</td>
                                <td>{{$finalReport->class_of_vehicle}}</td>
                                <td>{{$finalReport->opp_part_class_vehicle}}</td>
                            </tr>
                            <tr>
                                <td>viii.</td>
                                <td>RC Owner & Contact</td>
                                <td>{{$finalReport->rc_owner_name}}</td>
                                <td>{{$finalReport->opp_party_rc_owner}}</td>
                            </tr>
                            <tr>
                                <td>ix.</td>
                                <td>Engine No.</td>
                                <td>{{$finalReport->engine_no}}</td>
                                <td>{{$finalReport->opp_engine_no}}</td>
                            </tr>
                            <tr>
                                <td>x.</td>
                                <td>Chassis No.</td>
                                <td>{{$finalReport->chass_no}}</td>
                                <td>{{$finalReport->opp_chassis_no}}</td>
                            </tr>
                            <tr>
                                <td>xi.</td>
                                <td>Seating Capacity</td>
                                <td>{{$finalReport->seating_capacity}}</td>
                                <td>{{$finalReport->opp_vehicle_seating_capacity}}</td>
                            </tr>
                            <tr>
                                <td>xii.</td>
                                <td>Cubic Capacity</td>
                                <td>{{$finalReport->cc_vehicle}}</td>
                                <td>{{$finalReport->opp_party_cc_vehicle}}</td>
                            </tr>
                            <tr>
                                <td>xiii.</td>
                                <td>Gross Vehicle Weight</td>
                                <td>{{$finalReport->gross_vehicle_weight}}</td>
                                <td>NA</td>
                            </tr>
                            <tr>
                                <td>xiv.</td>
                                <td>Date of Registration</td>
                                <td>{{$finalReport->driver_rc_date}}</td>
                                <td>{{$finalReport->date_vehicle_reg}}</td>
                            </tr>
                            <tr>
                                <td>xv.</td>
                                <td>Registration Validity (Private Service Vehicles)</td>
                                <td>{{$finalReport->driver_rc_exp_date}}</td>
                                <td>{{$finalReport->vehicle_reg_validity}}</td>
                            </tr>
                            <tr>
                                <td>xvi.</td>
                                <td>Issuing Authority</td>
                                <td>{{$finalReport->issuing_authority_vehicle}}</td>
                                <td>{{$finalReport->issuing_authority__opposite_vehicle}}</td>
                            </tr>

                            <tr>
                                <th colspan="2">FITNESS PARTICULARS</th>
                                <th>INSURED VEHICLE</th>
                                <th>OPPOSITE VEHICLE</th>
                            </tr>
                            <tr>
                                <td>xvii.</td>
                                <td>Fitness Validity (Commercial Vehicles)</td>
                                <td>{{$finalReport->fitness_validity_vehicle}}</td>
                                <td>{{$finalReport->fitness_validity_opposite_vehicle}}</td>
                            </tr>


                            <tr>
                                <th colspan="2">PERMIT PARTICULARS</th>
                                <th>INSURED VEHICLE</th>
                                <th>OPPOSITE VEHICLE</th>
                            </tr>
                            <tr>
                                <td>xviii.</td>
                                <td>Permit No.</td>
                                <td>{{$finalReport->permit_no_vehicle}}</td>
                                <td>{{$finalReport->permit_no_opposit_vehicle}}</td>
                            </tr>
                            <tr>
                                <td>xix.</td>
                                <td>Issuing Authority</td>
                                <td>{{$finalReport->issuing_authority_vehicle}}</td>
                                <td>{{$finalReport->issuing_authority__opposite_vehicle}}</td>
                            </tr>
                            <tr>
                                <td>xx.</td>
                                <td>Type of Permit (Taxi/Stage/Contract/Tourist)</td>
                                <td>{{$finalReport->type_permit_vehicle}}</td>
                                <td>{{$finalReport->type_permit_opposite_vehicle}}</td>
                            </tr>
                            <tr>
                                <td>xxi.</td>
                                <td>Authorized Routes</td>
                                <td>{{$finalReport->authorized_route_vehicle}}</td>
                                <td>{{$finalReport->authorized_route_opposit_vehicle}}</td>
                            </tr>
                            <tr>
                                <td>xxii.</td>
                                <td>Permit Validity (CV)</td>
                                <td>{{$finalReport->permit_validity_vehicle}}</td>
                                <td>{{$finalReport->permit_validity_opposite_vehicle}}</td>
                            </tr>

                        </table>

                    </td>
                </tr>
            </table>
            <br>

            <table border="1" style="width: 100%; border-collapse: collapse; text-align: center;">
                <tr>
                    <th colspan="4" style="text-align: center; background-color: yellow;">DL SUMMARY</th>
                </tr>
                <tr>
                    <td>26.</td>
                    <td>Name, Address and Mobile No. of Accused</td>
                    <td colspan="2">{{$finalReport->name_accused}}<br>NA</td>
                </tr>
                <tr>
                    <td>27.</td>
                    <td>Whether Accused Driver hold Valid DL to drive Insured Vehicle as on DOA?</td>
                    <td colspan="2">@if($finalReport->accused_dl_vaild_doa==1) Yes @else No @endif</td>
                </tr>
                <tr>
                    <td>28.</td>
                    <td>Relation of Accused Driver with the Insured (Self/Friend/Employee/Relative/Paid Driver/Other)
                    </td>
                    <td colspan="2">{{$finalReport->rel_accused_insured}}</td>
                </tr>
                <tr>
                    <td>29.</td>
                    <td>Whether Opposite Vehicle Driver hold Valid DL</td>
                    <td colspan="2">@if($finalReport->opp_driver_dl_valid==1) Yes @else No @endif</td>
                </tr>
                <tr>
                    <td>30.</td>
                    <td>Whether the drivers Involved in any other Accidents? If Yes, Specify the Crime and OPMVs</td>
                    <td colspan="2">@if($finalReport->accused_accident_before==1) Yes @else No @endif</td>
                </tr>
                <tr>
                    <td colspan="4">

                        <table border="1" style="width: 100%; border-collapse: collapse; text-align: center;">

                            <tr>
                                <th colspan="2">DL PARTICULARS</th>
                                <th>ACCUSED DL</th>
                                <th>OPPOSITE DL</th>
                            </tr>

                            <tr>
                                <td>i.</td>
                                <td>Name</td>
                                <td>{{$finalReport->name_accused}}</td>
                                <td>{{$finalReport->injured_Person_name}}</td>
                            </tr>
                            <tr>
                                <td>ii.</td>
                                <td>Date of Birth</td>
                                <td>NA</td>
                                <td>{{$finalReport->dob_injured}}</td>
                            </tr>
                            <tr>
                                <td>iii.</td>
                                <td>DL No:</td>
                                <td>{{$finalReport->dl_no_owner}}</td>
                                <td>{{$finalReport->dl_no_opp_vehicle}}</td>
                            </tr>
                            <tr>
                                <td>iv.</td>
                                <td>Classes of Vehicles Authorized to Drive:</td>
                                <td>{{$finalReport->class_of_vehicle}}</td>
                                <td>{{$finalReport->opp_party_class_vehicle_auth_drive}}</td>
                            </tr>
                            <tr>
                                <td>v.</td>
                                <td>Date of First Issue (NT)</td>
                                <td>{{$finalReport->accused_first_issue_nt}}</td>
                                <td>{{$finalReport->opp_party_first_issue_nt}}</td>
                            </tr>
                            <tr>
                                <td>vi.</td>
                                <td>Non-Transport Validity</td>
                                <td>{{$finalReport->nt_validity__accused}}</td>
                                <td>{{$finalReport->nt_validity_opp_party}}</td>
                            </tr>
                            <tr>
                                <td>vii.</td>
                                <td>Badge No.</td>
                                <td>{{$finalReport->badge_no_accused}}</td>
                                <td>{{$finalReport->badge_no_opp_party}}</td>
                            </tr>
                            <tr>
                                <td>viii.</td>
                                <td>Date of First Issue (TV)</td>
                                <td>{{$finalReport->accused_tv_first_issue}}</td>
                                <td>{{$finalReport->opp_party_tv_first_issue}}</td>
                            </tr>
                            <tr>
                                <td>ix.</td>
                                <td>Transport Validity</td>
                                <td>{{$finalReport->accused_transport_validity}}</td>
                                <td>{{$finalReport->opp_party_transport_validity}}</td>
                            </tr>
                            <tr>
                                <td>x.</td>
                                <td>Issuing Authority</td>
                                <td>{{$finalReport->issuing_authority_vehicle}}</td>
                                <td>{{$finalReport->issuing_authority__opposite_vehicle}}</td>
                            </tr>
                        </table>

                    </td>

                </tr>
            </table>
            <h2>III.ANALYSIS OF PERSONAL RECORDS AND TREATMENT RECORDS</h2>

            <table border="1" style="width: 100%; border-collapse: collapse; text-align: center;">

                <tr>
                    <td>1.</td>
                    <td>Name and Address with Contact No.</td>
                    <td colspan="3">{{$finalReport->injured_Person_name}}, {{$finalReport->injured_address}}, {{$finalReport->injured_phone}}</td>
                </tr>
                <tr>
                    <td>2.</td>
                    <td>Date of Birth</td>
                    <td>{{$finalReport->dob_injured}}</td>
                    <td>Age as on DOA</td>
                    <td>{{$finalReport->age_injured_person}}</td>
                </tr>
                <tr>
                    <td>3.</td>
                    <td>Aadhar No.</td>
                    <td>{{$finalReport->aadhar_no_injured}}</td>
                    <td>Pan No.</td>
                    <td>{{$finalReport->pan_no}}</td>
                </tr>
                <tr>
                    <td>4.</td>
                    <td>Occupation/Designation</td>
                    <td>{{$finalReport->profession_injured}}</td>
                    <td>Employer Details</td>
                    <td>{{$finalReport->name_add_num_employeer}}</td>
                </tr>
                <tr>
                    <td>5.</td>
                    <td>Period of Leave Availed</td>
                    <td>{{$finalReport->period_leave_avail}}</td>
                    <td>Sources of Income</td>
                    <td>{{$finalReport->source_income}}</td>
                </tr>
                <tr>
                    <td>6.</td>
                    <td>Monthly Income</td>
                    <td colspan="3">{{$finalReport->month_incom}}</td>
                </tr>


                <tr>
                    <td colspan="5" style="text-align: center; background-color: yellow;"><b>ANALYSIS OF VERIFIED TREATMENT RELATED RECORDS</b></td>
                </tr>
                <tr>
                    <td>7.</td>
                    <td>Hospital where the Injured was initially treated (with Contact No.)</td>
                    <td colspan="3">{{$finalReport->record_found_first_aid_hospital}}</td>
                </tr>
                <tr>
                    <td>8.</td>
                    <td>Wound Certificate Serial No., Date of Issue and Hospital Name</td>
                    <td colspan="3">{{$finalReport->wound_certificate_short_disc}}</td>
                </tr>
                <tr>
                    <td>9.</td>
                    <td>Date and Hour of Examination as per Wound certificate</td>
                    <td colspan="3">{{$finalReport->injured_exami_date_on_woundcerti}}</td>
                </tr>
                <tr>
                    <td>10.</td>
                    <td>Alleged cause of Injury, Place and Time of Occurrence as per Wound Certificate</td>
                    <td colspan="3">{{$finalReport->injury_place_on_wound_certi}}</td>
                </tr>
                <tr>
                    <td>11.</td>
                    <td>Name and Contact No. of the person who brought the injured to hospital.</td>
                    <td colspan="3">{{$finalReport->person_name_who_brought_injured}}</td>
                </tr>


                <tr>
                    <td>12.</td>
                    <td colspan="4"><b>Verified Treatment Details:</b>

                        <table border="1" style="width: 100%; border-collapse: collapse; text-align: center;">
                            <tr>
                                <th>SL No.</th>
                                <th>NAME OF HOSPITAL</th>
                                <th>IP/OP NO.</th>
                                <th>FROM</th>
                                <th>TO</th>
                                <th>OP DAYS</th>
                                <th>EXPENSES</th>
                            </tr>
                            <tr>
                                <td>a.</td>
                                <td>{{$finalReport->name_address_hospital}}</td>
                                <td>{{$finalReport->op_no}}</td>
                                <td>{{$finalReport->hospitalised_from_date}}</td>
                                <td>{{$finalReport->hospitalised_to_date}}</td>
                                <td>{{$finalReport->ip_days}}</td>
                                <td>{{$finalReport->amount_medical_expenceses}}</td>
                            </tr>
                            
                        </table>
                    </td>
                </tr>


                <tr>
                    <td>13.</td>
                    <td colspan="4"><b>For Injury cases, Nature of Injuries Sustained as per verified Treatment Records:{{$finalReport->verified_treament_records}} </b></td>
                </tr>
                <tr>
                    <td>14.</td>
                    <td colspan="4"><b>For Death cases, Death Date and Opinion for Death as Per Postmortem Report:{{$finalReport->details_postmortam_report}}</b></td>
                </tr>
                <tr>
                    <td>15.</td>
                    <td colspan="4">For Death cases, list out the Legal Heirs as Mentioned in Certificate.

                        <table border="1" style="width: 100%; border-collapse: collapse; text-align: center;">
                            <tr>
                                <th>Legal Heirs Name</th>
                                <th>Age</th>
                                <th>Relation with Deceased</th>
                                <th>Marital Status</th>
                                <th>Residing Address</th>
                                <th>Occupation & Employer Address</th>
                            </tr>
                            <tr>
                                <td>{{$finalReport->legal_heirs_name}}</td>
                                <td>{{$finalReport->heirs_age}}</td>
                                <td>{{$finalReport->heirs_rel_deseased}}</td>
                                <td>{{$finalReport->marital_status_heirs}}</td>
                                <td>{{$finalReport->heirs_residing_address}}</td>
                                <td>{{$finalReport->heirs_occupation}} & {{$finalReport->heirs_employer_address}}</td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>


            <h2>
                INVESTIGATION FACTS AND FINDINGS
            </h2>

            <p style="text-align: justify;">
                {{$finalReport->fact_findings}}
            </p>

            <h2>
                CONCLUSION
            </h2>
            <p style="text-align: justify;">
                {{$finalReport->conclusion}}
            </p>
            <h2>
                Opinion, If any
            </h2>
            <p style="text-align: center;">@if($finalReport->accident_genuine) THE ACCIDENT IS GENUINE @endif</p>

            <h2>
                DECLARATION
            </h2>
            <p style="text-align: justify;">
               {{$finalReport->about_accident}}
            </p>
            <div style="display: flex; justify-content: space-between;">
                <div>
                    <p> {{$finalReport->date_of_submitted}}<br></p>
                </div>
                <div>
                    <br>
                    {{$finalReport->owner_executive}}
                </div>
            </div>
            <br>
            <br>
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