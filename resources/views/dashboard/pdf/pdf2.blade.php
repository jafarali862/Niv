use the;
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ICICI Injury Case Checklist Report</title>
    <style>
        h1,
        h2 {
            color: rgb(10, 10, 10);
        }

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
            padding: 4px;
            text-align: left;
        }

        th {
            background-color: #f4f4f4;
        }

        .section {
            margin-bottom: 30px;
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

    <div>
        <table>
            <thead>
                <tr>
                    <th colspan="4">
                        <h3 style="text-align: center;">INJURY CASE CHECKLIST</h3>
                    </th>
                </tr>
                <tr>
                    <th><strong>Claim No</strong></th>
                    <th style="text-align: center;"><strong>{{$finalReport->claim_no }}</strong></th>
                    <th><strong>Case No./MACT</strong></th>
                    <th><strong>{{$finalReport->fir_no }}</strong></th>
                </tr>
                <tr>
                    <th>Sr. No.</th>
                    <th>Documents</th>
                    <th colspan='2'>Yes/No</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>Investigation Bill</td>
                    <td colspan='2'>{{$finalReport->investigation_bill_no ?? 'NA'}}</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>Investigation Report</td>
                    <td colspan='2'>{{$finalReport->investigation_report ?? 'NA'}}</td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>Loss Minimization Sheet</td>
                    <td colspan='2'>{{$finalReport->loss_minimization_sheet ?? 'NA'}}</td>
                </tr>
                <tr>
                    <td>4</td>
                    <td>Policy Copy</td>
                    <td colspan='2'>{{$finalReport->policy_copy ?? 'NA'}}</td>
                </tr>
                <tr>
                    <td>5</td>
                    <td>Driving License Extract</td>
                    <td colspan='2'>{{$finalReport->driving_license_extract ?? 'NA'}}</td>
                </tr>
                <tr>
                    <td>6</td>
                    <td>Permit Copy</td>
                    <td colspan='2'>{{$finalReport->permit_copy ?? 'NA'}}</td>
                </tr>
                <tr>
                    <td>7</td>
                    <td>Fitness Certificate Copy</td>
                    <td colspan="2">{{$finalReport->fitness_certificate_copy ?? 'NA'}}</td>
                </tr>
                <tr>
                    <td>8</td>
                    <td>R.C. Book</td>
                    <td colspan="2">{{$finalReport->rc_book ?? 'NA'}}</td>
                </tr>
                <tr>
                    <td>9</td>
                    <td>Insured Statement</td>
                    <td colspan="2">{{$finalReport->insured_statement ?? 'NA'}}</td>
                </tr>
                <tr>
                    <td>10</td>
                    <td>Claimant Statement</td>
                    <td colspan="2">{{$finalReport->claimant_statement ?? 'NA'}}</td>
                </tr>
                <tr>
                    <td>11</td>
                    <td>Seizure Memo Copy</td>
                    <td colspan="2">{{$finalReport->seizure_memo_copy ?? 'NA'}}</td>
                </tr>
                <tr>
                    <td>12</td>
                    <td>Arrest Memo Copy</td>
                    <td colspan="2">{{$finalReport->arrest_memo_copy ?? 'NA'}}</td>
                </tr>
                <tr>
                    <td>13</td>
                    <td>MVI Report</td>
                    <td colspan="2">{{$finalReport->mvi_report ?? 'NA'}}</td>
                </tr>
                <tr>
                    <td>14</td>
                    <td>Age Proof</td>
                    <td colspan="2">{{$finalReport->age_proof ?? 'NA'}}</td>
                </tr>
                <tr>
                    <td>15</td>
                    <td>Income Proof</td>
                    <td colspan="2">{{$finalReport->income_proof ?? 'NA'}}</td>
                </tr>
                <tr>
                    <td>16</td>
                    <td>Occupation Proof</td>
                    <td colspan="2">{{$finalReport->occupation_proof ?? 'NA'}}</td>
                </tr>
                <tr>
                    <td>17</td>
                    <td>Photograph (Family or Nominees/Legal Heir)</td>
                    <td colspan="2">{{$finalReport->family_photograph ?? 'NA'}}</td>
                </tr>
                <tr>
                    <td>18</td>
                    <td>Spot Panchnama Copy</td>
                    <td colspan="2">{{$finalReport->spot_panchnama_copy ?? 'NA'}}</td>
                </tr>
                <tr>
                    <td>19</td>
                    <td>Accident Site Map</td>
                    <td colspan="2">{{$finalReport->accident_site_map ?? 'NA'}}</td>
                </tr>
                <tr>
                    <td>20</td>
                    <td>Inquest Panchnama</td>
                    <td colspan="2">{{$finalReport->inquest_panchnama ?? 'NA'}}</td>
                </tr>
                <tr>
                    <td>21</td>
                    <td>Paper Cutting</td>
                    <td colspan="2">{{$finalReport->paper_cutting ?? 'NA'}}</td>
                </tr>
                <tr>
                    <td>22</td>
                    <td>F.I.R</td>
                    <td colspan="2">{{$finalReport->fir ?? 'NA'}}</td>
                </tr>
                <tr>
                    <td>23</td>
                    <td>Final Report/Charge Sheet</td>
                    <td colspan="2">{{$finalReport->final_report_charge_sheet ?? 'NA'}}</td>
                </tr>
                <tr>
                    <td>24</td>
                    <td>Death Certificate</td>
                    <td colspan="2">{{$finalReport->death_certificate ?? 'NA'}}</td>
                </tr>
                <tr>
                    <td>25</td>
                    <td>Post Mortem Report</td>
                    <td colspan="2">{{$finalReport->post_mortem_report ?? 'NA'}}</td>
                </tr>
                <tr>
                    <td>26</td>
                    <td>Viscera Report (if preserved)</td>
                    <td colspan="2">{{$finalReport->viscera_report ?? 'NA'}}</td>
                </tr>
                <tr>
                    <td>27</td>
                    <td>O.D. Status</td>
                    <td colspan="2">{{$finalReport->od_status ?? 'NA'}}</td>
                </tr>
                <tr>
                    <td>28</td>
                    <td>T.P. Vehicle Insurance Details</td>
                    <td colspan="2">{{$finalReport->tp_vehicle_insurance_details ?? 'NA'}}</td>
                </tr>
                <tr>
                    <td>29</td>
                    <td>T.P. Driving License</td>
                    <td colspan="2">{{$finalReport->tp_driving_license ?? 'NA'}}</td>
                </tr>
                <tr>
                    <td>30</td>
                    <td>T.P. Insurer confirmation (No claim T.P./OD)</td>
                    <td colspan="2">{{$finalReport->tp_insurer_confirmation ?? 'NA'}}</td>
                </tr>
                <tr>
                    <td>31</td>
                    <td>Notice U/s 134(c)</td>
                    <td colspan="2">{{$finalReport->notice_u_s_134c ?? 'NA'}}</td>
                </tr>
            </tbody>

        </table>
    </div>

    <h3>PART A (BASE REPORT)</h3>
    <table border="1" style="width:100%; border-collapse: collapse; text-align: left;">
        <tbody>
            <tr>
                <td style="padding: 10px;"> Investigator's understanding of Accident in detail</td>
                <td style="padding: 10px;">{{$finalReport->conclusion }}</td>
            </tr>
            <tr>
                <td style="padding: 10px;"> Insured’s version of accident</td>
                <td style="padding: 10px;">{{$finalReport->insured_version_acc }}</td>
            </tr>
            <tr>
                <td style="padding: 10px;"> Insured Occupation</td>
                <td style="padding: 10px;">{{$finalReport->insured_occupation ?? 'NA'}}</td>
            </tr>
            <tr>
                <td style="padding: 10px;"> Rider’s version of accident</td>
                <td style="padding: 10px;">{{$finalReport->rider_version_accident }}</td>
            </tr>
            <tr>
                <td style="padding: 10px;"> Claimant’s version of accident</td>
                <td style="padding: 10px;">{{$finalReport->claiment_vers_aaccdnt }}</td>
            </tr>
            <tr>
                <td style="padding: 10px;"> FIR version of accident</td>
                <td style="padding: 10px;">{{$finalReport->fir_vers_accdnt}}</td>
            </tr>
            <tr>
                <td style="padding: 10px;"> Charge sheet’s conclusion of the accident</td>
                <td style="padding: 10px;">{{$finalReport->chargesheet_conclusion}}</td>
            </tr>
            <tr>
                <td style="padding: 10px;">Relationship between Insured and Claimant/Deceased/Injured</td>
                <td style="padding: 10px;">{{$finalReport->relation_insured_and_claiment }}</td>
            </tr>
            <tr>
                <td style="padding: 10px;">Age of Deceased/Injured + Age of Claimant</td>
                <td style="padding: 10px;">{{$finalReport->age_injured_person }}</td>
            </tr>
            <tr>
                <td style="padding: 10px;">Profession/Income of deceased/injured (Gross and Net)</td>
                <td style="padding: 10px;">{{$finalReport->profession_injured }}</td>
            </tr>
            <tr>
                <td style="padding: 10px;">Name, address, and contact number of the Employer</td>
                <td style="padding: 10px;">{{$finalReport->name_add_num_employeer }}</td>
            </tr>
            <tr>
                <td style="padding: 10px;">Educational Qualifications of the Injured/Deceased</td>
                <td style="padding: 10px;">{{$finalReport->edu_injured }}</td>
            </tr>
            <tr>
                <td style="padding: 10px;">Gap in Sequential flow of events</td>
                <td style="padding: 10px;">{{$finalReport->gap_sequencial_event }}</td>
            </tr>
        </tbody>
    </table>


    <h3>PART B:</h2>
        <h4> 1).MEETING WITH OUR INSURED AND RIDER
    </h3>

    <table border="1" style="width:100%; border-collapse: collapse; text-align: left;">

        <tbody>
            <tr>
                <td style="padding: 10px;">Name of the Owner of our Insured Vehicle</td>
                <td style="padding: 10px;">{{$finalReport->rc_owner_name }}</td>
            </tr>
            <tr>
                <td style="padding: 10px;">Vehicle No.</td>
                <td style="padding: 10px;">{{$finalReport->vehicle_no }}</td>
            </tr>
            <tr>
                <td style="padding: 10px;">Make and Model of the Vehicle</td>
                <td style="padding: 10px;">{{$finalReport->made_make }}</td>
            </tr>
            <tr>
                <td style="padding: 10px;">Engine No.</td>
                <td style="padding: 10px;">{{$finalReport->engine_no }}</td>
            </tr>
            <tr>
                <td style="padding: 10px;">Chassis No.</td>
                <td style="padding: 10px;">{{$finalReport->chass_no}}</td>
            </tr>
            <tr>
                <td style="padding: 10px;">Class of Vehicle</td>
                <td style="padding: 10px;">{{$finalReport->class_of_vehicle }}</td>
            </tr>
            <tr>
                <td style="padding: 10px;">Permit Details of the Vehicle</td>
                <td style="padding: 10px;">{{$finalReport->permit_details }}</td>
            </tr>
            <tr>
                <td style="padding: 10px;">Name of the Rider of our Insured Vehicle</td>
                <td style="padding: 10px;">{{$finalReport->driver_name }}</td>
            </tr>
            <tr>
                <td style="padding: 10px;">Driving License No and RTO</td>
                <td style="padding: 10px;">{{$finalReport->dl_and_rto }}</td>
            </tr>
            <tr>
                <td style="padding: 10px;">Type of License (Permanent / Temp)</td>
                <td style="padding: 10px;">{{$finalReport->type_license ?? 'NA'}}</td>
            </tr>
            <tr>
                <td style="padding: 10px;">Date of Issue and Expiry</td>
                <td style="padding: 10px;">{{$finalReport->driver_lic_exp_date }}</td>
            </tr>
            <tr>
                <td style="padding: 10px;">Vehicle(s) authorized to drive</td>
                <td style="padding: 10px;">@if($finalReport->vehicle_authorized_drive) YES @else No @endif</td>
            </tr>
            <tr>
                <td style="padding: 10px;">Is rider’s DL authorization to drive matches vehicle insured</td>
                <td style="padding: 10px;">{{ $finalReport->vehicle_auth_drive ?? 'NA'}}</td>
            </tr>
        </tbody>
    </table>

    <h3>ACCIDENT DETAILS</h3>
    <table border="1" style="width:100%; border-collapse: collapse; text-align: left;">

        <tr>
            <td>Rider’s Version and Insured’s Version of Accident</td>
            <td>
                <p> {{$finalReport->diff_in_rider_ver_injured }} </p>
                <p> {{$finalReport->insured_version_acc }}</p>
            </td>
        </tr>
        <tr>
            <td>Date and Time of First Admission to Nearest Hospital</td>
            <td>{{ $finalReport->date_time_hospital_addmission  }}</td>
        </tr>
        <tr>
            <td>Distance from Site of Accident</td>
            <td>{{$finalReport->distance_from_site_hospital }}</td>
        </tr>
        <tr>
            <td>Name and Details of Big Hospitals/Medical Care Centers Between the Accident Spot and the Hospitals</td>
            <td>{{$finalReport->details_big_hospital_near_site }}</td>
        </tr>
        <tr>
            <td>Whether There Was Any Zebra Crossing at the Accident Spot</td>
            <td>@if($finalReport->zebra_cross) Yes @else NO @endif</td>
        </tr>
        <tr>
            <td>Attending Doctor’s Name and First Aid Provided for What Injury</td>
            <td>{{$finalReport->doc_name_and_first_aid }}</td>
        </tr>
        <tr>
            <td>Whether Record Found in the First Aid Hospital</td>
            <td>{{$finalReport->record_found_first_aid_hospital}}</td>
        </tr>
        <tr>
            <td>Name of the Witness</td>
            <td>{{$finalReport->name_witness }}</td>
        </tr>
        <tr>
            <td>Was There Any Delay for FIR?</td>
            <td>{{$finalReport->delay_in_fir }}</td>
        </tr>
        <tr>
            <td>Date of Filing FIR + Name of Police Station</td>
            <td>{{$finalReport->date_time_fir }} at {{$finalReport->police_station }}</td>
        </tr>
        <tr>
            <td>Name of the Informer + Relation to the Claimant</td>
            <td>{{$finalReport->name_informer }}</td>
        </tr>
        <tr>
            <td>FIR Is Named or Not</td>
            <td>{{$finalReport->fir_named_or_not }}</td>
        </tr>
        <tr>
            <td>Vehicle No in FIR</td>
            <td>{{$finalReport->vehicle_no_fir }}</td>
        </tr>
        <tr>
            <td>Name of the Accused and Details of the Vehicle Involved</td>
            <td>{{$finalReport->name_accused }}, {{$finalReport->vehicle_no_fir }}</td>
        </tr>
        <tr>
            <td>Details of Charge-Sheet</td>
            <td>{{$finalReport->gist_chargesheet }}</td>
        </tr>
        <tr>
            <td>In the Absence of Charge-Sheet Damages as per OD Claim</td>
            <td>{{$finalReport->absence_chargesheet ?? 'NA' }}</td>
        </tr>

        <tr>
            <td>Has the Accused/Insured/Owner Admitted Offence</td>
            <td>{{$finalReport->accused_admited_offence ?? 'NA'}}</td>
        </tr>
    </table>


    <h3 style="margin-top: 150px;">PART C:</h3>
    <h4>2). MEETING WITH TP RIDER/INSURED</h4>
    <table border="1" style="width:100%; border-collapse: collapse; text-align: left;">
        <tr>
            <td style="padding: 10px; width: 50%;"><strong>Details of Opposite Vehicle (TP Vehicle)</strong></td>
            <td style="padding: 10px; width: 50%;">{{$finalReport->details_opp_vehicle }}</td>
        </tr>
        <tr>
            <td style="padding: 10px; width: 50%;"><strong>Name of Owner of Opposite Vehicle (TP Vehicle)</strong></td>
            <td style="padding: 10px; width: 50%;">{{$finalReport->owner_opp_vehicle }}</td>
        </tr>
        <tr>
            <td style="padding: 10px; width: 50%;"><strong>Name of Rider of Opposite Vehicle (TP Vehicle)</strong></td>
            <td style="padding: 10px; width: 50%;">{{$finalReport->owner_opp_vehicle }}</td>
        </tr>
        <tr>
            <td style="padding: 10px; width: 50%;"><strong>Type of License (Temp/Permanent) and Date of Issue</strong></td>
            <td style="padding: 10px; width: 50%;">{{$finalReport->type_license ?? 'NA'}}</td>
        </tr>
        <tr>
            <td style="padding: 10px; width: 50%;"><strong>Date of Expiry</strong></td>
            <td style="padding: 10px; width: 50%;">{{$finalReport->driver_lic_exp_date ?? 'NA'}}</td>
        </tr>
        <tr>
            <td style="padding: 10px; width: 50%;"><strong>Vehicle(s) Authorized to Drive</strong></td>
            <td style="padding: 10px; width: 50%;">{{$finalReport->vehicle_auth_drive ?? 'NA' }}</td>
        </tr>
        <tr>
            <td style="padding: 10px; width: 50%;"><strong>Mismatch Between Vehicle Being Driven and License Being Issued</strong></td>
            <td style="padding: 10px; width: 50%;">{{$finalReport->mismatch_vehicle_in_dl ?? 'NA' }}</td>
        </tr>
        <tr>
            <td style="padding: 10px; width: 50%;"><strong>Rider’s (TP Vehicle) Version of Accident</strong></td>
            <td style="padding: 10px; width: 50%;">{{$finalReport->rider_version_accident }}</td>
        </tr>
        <tr>
            <td style="padding: 10px; width: 50%;"><strong>Any Other Relevant Information</strong></td>
            <td style="padding: 10px; width: 50%;">{{$finalReport->driver_others }}</td>
        </tr>
    </table>

    <h3>PART D</h4>

        <table border="1" style="width:100%; border-collapse: collapse; text-align: left;">
            <tr>
                <th colspan="2">
                    <h4>DETAILS OF INJURED</h4>
                </th>
            </tr>
            <tr>
                <td style="padding: 10px; width: 50%;">Name of Injured/Deceased</td>
                <td style="padding: 10px; width: 50%;">{{$finalReport->injured_Person_name }}</td>
            </tr>
            <tr>
                <td style="padding: 10px; width: 50%;">Address and Phone No.</td>
                <td style="padding: 10px; width: 50%;">{{$finalReport->injured_address }}</td>
            </tr>
            <tr>
                <td style="padding: 10px; width: 50%;">Advocate Name, Address and Contact No.</td>
                <td style="padding: 10px; width: 50%;">{{$finalReport->advocate_name }}</td>
            </tr>
            <tr>
                <td style="padding: 10px; width: 50%;">Marital Status of the Injured/Deceased</td>
                <td style="padding: 10px; width: 50%;">{{$finalReport->injured_marital_status ?? 'NA'  }}</td>
            </tr>
            <tr>
                <td style="padding: 10px; width: 50%;">Details of Injuries Suffered</td>
                <td style="padding: 10px; width: 50%;">{{$finalReport->cause_loss }}</td>
            </tr>
            <tr>
                <td style="padding: 10px; width: 50%;">Whether Injured/Deceased Was Pedestrian or Traveling in Insured’s Vehicle</td>
                <td style="padding: 10px; width: 50%;">{{$finalReport->pedstrian_or_traveller }}</td>
            </tr>
            <tr>
                <td style="padding: 10px; width: 50%;">Name and Address of the Hospital</td>
                <td style="padding: 10px; width: 50%;">{{$finalReport->name_address_hospital }}</td>
            </tr>
            <tr>
                <td style="padding: 10px; width: 50%;">Date of Admission</td>
                <td style="padding: 10px; width: 50%;">{{$finalReport?->date_time_hospital_addmission }}</td>
            </tr>
            <tr>
                <td style="padding: 10px; width: 50%;">Date of Discharge</td>
                <td style="padding: 10px; width: 50%;">{{$finalReport->date_discharge }}</td>
            </tr>
            <tr>
                <td style="padding: 10px; width: 50%;">Period of Absence from Work</td>
                <td style="padding: 10px; width: 50%;">{{$finalReport->period_absence_from_work }}</td>
            </tr>
            <tr>
                <td style="padding: 10px; width: 50%;">Permanent Disability (If Any, Details of the Same)</td>
                <td style="padding: 10px; width: 50%;">{{$finalReport->permanent_disablity }}</td>
            </tr>
            <tr>
                <td style="padding: 10px; width: 50%;">Present Condition of Injured</td>
                <td style="padding: 10px; width: 50%;">{{$finalReport->present_condition_injury }}</td>
            </tr>
            <tr>
                <td style="padding: 10px; width: 50%;">Amount of Medical Expenses</td>
                <td style="padding: 10px; width: 50%;">{{$finalReport->amount_medical_expenceses }}</td>
            </tr>
            <tr>
                <td style="padding: 10px; width: 50%;">Status of Reimbursement of Medical Expenses from the Employer</td>
                <td style="padding: 10px; width: 50%;">{{$finalReport->status_rembur_med_expense_employeer }}</td>
            </tr>
            <tr>
                <td style="padding: 10px; width: 50%;">Any Other Relevant Information</td>
                <td style="padding: 10px; width: 50%;">{{$finalReport->other_information }}</td>
            </tr>
        </table>

        <h3>PART E</h3>
        <h4>Details of Panchnama/PM Report</h4>
        <table border="1" style="width:100%; border-collapse: collapse; text-align: left;">
            <tr>
                <td style="padding: 10px; width: 50%;">Date of Panchnama, and Name of Police Station</td>
                <td style="padding: 10px; width: 50%;">{{$finalReport->cause_death_per_pmr }}, {{$finalReport->police_station }}</td>
            </tr>
            <tr>
                <td style="padding: 10px; width: 50%;">Opinion of Members of Panchayat</td>
                <td style="padding: 10px; width: 50%;">{{$finalReport->opnion_from_panchayath }}</td>
            </tr>
            <tr>
                <td style="padding: 10px; width: 50%;">Date of Death and Date of PM</td>
                <td style="padding: 10px; width: 50%;">{{$finalReport->date_of_death_date_pm }}</td>
            </tr>
            <tr>
                <td style="padding: 10px; width: 50%;">Cause of Death as per PMR</td>
                <td style="padding: 10px; width: 50%;">{{$finalReport->cause_death_per_pmr }}</td>
            </tr>
        </table>

        <h3>PART F: Injury case</h3>
        <table border="1" style="width:100%; border-collapse: collapse; text-align: left;">
            <tr>
                <td><strong>Name and Address</strong></td>
                <td><strong>Income</strong></td>
                <td><strong>Age</strong></td>
                <td><strong>Married/Unmarried</strong></td>
                <td><strong>Occupation</strong></td>
                <td><strong>Relationship with Injured/Deceased</strong></td>
                <td><strong>Dependent or Not</strong></td>
            </tr>

            <tr>
                <td style="padding: 10px;">{{$finalReport->co_injured_name_address }}</td>
                <td style="padding: 10px;">{{$finalReport->co_injured_income }}</td>
                <td style="padding: 10px;">{{$finalReport->co_injured_age }}</td>
                <td style="padding: 10px;">{{$finalReport->co_injured_marital_status }}</td>
                <td style="padding: 10px;">{{$finalReport->co_injured_occupation }}</td>
                <td style="padding: 10px;">{{$finalReport->co_injured_relation_injured }}</td>
                <td style="padding: 10px;">{{$finalReport->co_injured_depend_or_not }}</td>
            </tr>



        </table>
        <h4>Did anyone got employment on compassionate grounds if yes mention details: </h4>

        <h3>PART G</h3>

        <table border="1" style="width:100%; border-collapse: collapse; text-align: left;">

            <tr>
                <th colspan="2" style="padding: 10px; width: 50%;"><strong>IF HIT AND RUN CASE</strong></th>
            </tr>
            <tr>
                <td style="padding: 10px; width: 50%;">If Hit and Run Case - How did Police reach the conclusion that our vehicle was involved</td>
                <td style="padding: 10px; width: 50%;">{{$finalReport->hit_run_police_reach_conclusion }}</td>
            </tr>
            <tr>
                <td style="padding: 10px; width: 50%;">Highlight Gaps / Weakness of Police Investigation</td>
                <td style="padding: 10px; width: 50%;">{{$finalReport->gaps_police_investigation}}</td>
            </tr>
            <tr>
                <td style="padding: 10px; width: 50%;">In Case of Suspect Nexus</td>
                <td style="padding: 10px; width: 50%;">{{$finalReport->case_suspect_nexus}}</td>
            </tr>
            <tr>
                <td style="padding: 10px; width: 50%;">In Case of TP Property Damage</td>
                <td style="padding: 10px; width: 50%;">{{$finalReport->tp_property_damage}}</td>
            </tr>
            <tr>
                <td colspan='2' style="padding: 10px; width: 100%;">
                    <h3 style="text-decoration: underline;">FACTS AND FINDINGS:</h3>

                    <h5 style="text-decoration: underline;">Policy Details</h5>
                    <p>{{$finalReport->policy_details }}</p>

                </td>
            </tr>

            <tr>
                <td colspan='2' style="padding: 10px; width: 100%;">
                    <h5 style="text-decoration: underline;">Insured Vehicle Papers Validity in relation to the accident</h5>
                    <p>
                        {{$finalReport->insured_vehicle_paper_valid_accident_time }}
                    </p>

                </td>
            </tr>
            <tr>
                <td colspan='2' style="padding: 10px; width: 100%;">
                    <h5 style="text-decoration: underline;">• Criminal Court Status of the Case</h5>
                    <p>
                        {{$finalReport->criminal_court_status_case }}
                    </p>

                </td>
            </tr>
            <tr>
                <td colspan='2' style="padding: 10px; width: 100%;">
                    <h5 style="text-decoration: underline;">• Case Diary Findings</h5>
                    <p>
                        {{$finalReport->case_diary_findings }}
                    </p>

                </td>
            </tr>
        </table>

        <table border="1" style="width:100%; border-collapse: collapse; text-align: left;">
            <tr>
                <td colspan='2' style="padding: 10px; width: 100%;">
                    <h5 style="text-decoration: underline;">About the accident:</h5>
                    <p>
                        {{$finalReport->about_accident }}
                    </p>

                </td>
            </tr>
        </table>

        <table border="1" style="width:100%; border-collapse: collapse; text-align: left;">
            <tr>
                <td colspan='2' style=" width: 100%;">
                    <h5 style="text-decoration: underline;"> The FIR::</h5>
                    <p>{{$finalReport->fir_vers_accdnt }}</p>
                    <h5 style="text-decoration: underline;">Gist of the FIR/Crime Documents :</h5>
                    <p>{{$finalReport->gist_fir }}</p>
                    <h5 style="text-decoration: underline;">Reason for delay in loading the FIR</h5>
                    <p>{{$finalReport->delay_in_fir }}</p>
                    <h5 style="text-decoration: underline;">Hospital details</h5>
                    <p>{{$finalReport->injured_hospital_report ?? NA}}</p>

                    <h5 style="text-decoration: underline;">Petitioner details</h5>
                    <p>Petitioner Name:{{$finalReport->injured_Person_name}}</p>,<p>Petitioner Phone:{{$finalReport->injured_phone }}</p>,<p>Petitioner Address:{{$finalReport->injured_address }}</p>
                    </p>

                </td>
            </tr>
            <tr>
                <td colspan='2' style="padding: 10px; width: 100%;">
                    <h5 style="text-decoration: underline;">IV Owner Verification</h5>
                    <p>
                        {{$finalReport->owner_verification }}
                    </p>

                    <h5 style="text-decoration: underline;">IV Rider Verification</h5>
                    <p>
                        {{$finalReport->rider_verification }}
                    </p>

                    <h5 style="text-decoration: underline;">AMVI Details</h5>
                    <p>

                    </p>

                    <h5 style="text-decoration: underline;">Spot Details</h5>
                    <p>
                        {{$finalReport->spot_address }}
                    </p>

                    <h5 style="text-decoration: underline;">IV Details and DL Validity</h5>
                    <p>
                        {{ $finalReport->details_dl_validity }}
                    </p>

                </td>
            </tr>
            <tr>
                <td colspan='2' style="padding: 10px; width: 100%;">

                    <h5 style="text-decoration: underline;">TPV Details and DL Validity</h5>
                    <p> {{ $finalReport->tpv_details_dl_validity }}</p>

                    <h5 style="text-decoration: underline;">Observation</h5>
                    <p>
                        {{ $finalReport->conclusion }}
                    </p>
                    <br>
                </td>
            </tr>
        </table>
        <table border="1" style="width: 100%; border-collapse: collapse; text-align: left;">
            <tr>
                <th style="padding: 8px;">Claimant</th>
                <td style="padding: 8px;">{{$finalReport->injured_Person_name}} ({{$finalReport->injured_phone}})</td>
            </tr>
            <tr>
                <th style="padding: 8px;">Claimant Advocate</th>
                <td style="padding: 8px;">{{$finalReport->advocate_name }}</td>
            </tr>
            <tr>
                <th style="padding: 8px;">Insured</th>
                <td style="padding: 8px;">{{$finalReport->rc_owner_name }} (NA)</td>
            </tr>
            <tr>
                <th style="padding: 8px;">Insured Advocate Contact No.</th>
                <td style="padding: 8px;">{{$finalReport->insured_advocate ?? 'NA'}}({{$finalReport->insured_advocate_num ?? 'NA'}})</td>
            </tr>
        </table>

        <h4 style="text-align: right;">
            ISSUED WITHOUT PREJUDICE<br>(AUTHORIZED SIGNATORY)
        </h4>

        </table>



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


</body>

</html>