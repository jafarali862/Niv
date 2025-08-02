<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insurance Final Report Data</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
    <div class="container my-5">
        <!-- Company Details Header Section -->
        <div style="border-bottom: 2px solid #333; padding-bottom: 20px; margin-bottom: 30px;">
            <div style="text-align: center; margin-bottom: 10px;">
                <h1 style="font-size: 32px; color: #2C3E50; font-weight: bold;">{{$finalReport->insurance_com_name}}</h1>
                <p style="font-size: 18px; color: #7F8C8D;">{{$finalReport->insurance_com_email}}</p>
                <p style="font-size: 18px; color: #7F8C8D;">{{$finalReport->insurance_com_address}}</p>
                <p style="font-size: 18px; color: #7F8C8D;">{{$finalReport->insurance_com_contact_person}}</p>
                <p style="font-size: 18px; color: #7F8C8D;">{{$finalReport->insurance_com_phone}}</p>
  

            </div>
        </div>

        <!-- Personal Information Section -->
    <div class="card mb-4">
    <div class="card-header bg-primary text-white">
        <h3>Customer Information</h3>
    </div>
    <div class="card mb-4">
            <div class="card-body">
                <div style="margin-bottom: 15px;display: inline-block;">
                    <span style="font-size: 16px; color: #2C3E50; font-weight: bold; display: inline-block; min-width: 150px;">Customer Name:</span>
                    <span style="font-size: 16px; color: #7F8C8D; display: inline-block;">{{ $finalReport->customer_name ?? 'N/A' }}</span>
                
                    <span style="font-size: 16px; color: #2C3E50; font-weight: bold; padding-left:150px; display: inline-block; min-width: 150px;">Father's Name:</span>
                    <span style="font-size: 16px; color: #7F8C8D; display: inline-block;">{{ $finalReport->customer_father_name ?? 'N/A' }}</span>
                </div>

                <div style="margin-bottom: 15px;display: inline-block;">
                    <span style="font-size: 16px; color: #2C3E50; font-weight: bold; display: inline-block; min-width: 150px;">Phone:</span>
                    <span style="font-size: 16px; color: #7F8C8D; display: inline-block;">{{ $finalReport->customer_phone ?? 'N/A' }}</span>
                
                    <span style="font-size: 16px; color: #2C3E50; font-weight: bold; padding-left:150px; display: inline-block; min-width: 150px;">Emergency Contact:</span>
                    <span style="font-size: 16px; color: #7F8C8D; display: inline-block;">{{ $finalReport->customer_emergancy_contact_no ?? 'N/A' }}</span>
                </div>

                <div style="margin-bottom: 15px;display: inline-block;">
                    <span style="font-size: 16px; color: #2C3E50; font-weight: bold; display: inline-block; min-width: 150px;">Email:</span>
                    <span style="font-size: 16px; color: #7F8C8D; display: inline-block;">{{ $finalReport->customer_email ?? 'N/A' }}</span>
                
                    <span style="font-size: 16px; color: #2C3E50; font-weight: bold;padding-left:50px; display: inline-block; min-width: 150px;">Present Address:</span>
                    <span style="font-size: 16px; color: #7F8C8D; display: inline-block;">{{ $finalReport->customer_present_address ?? 'N/A' }}</span>
                </div>

                <div style="margin-bottom: 15px;display: inline-block;">
                    <span style="font-size: 16px; color: #2C3E50; font-weight: bold; display: inline-block; min-width: 150px;">Permanent Address:</span>
                    <span style="font-size: 16px; color: #7F8C8D; display: inline-block;">{{ $finalReport->customer_premanent_address ?? 'N/A' }}</span>
                
                    <span style="font-size: 16px; color: #2C3E50; font-weight: bold;padding-left:100px; display: inline-block; min-width: 150px;">Policy No:</span>
                    <span style="font-size: 16px; color: #7F8C8D; display: inline-block;">{{ $finalReport->customer_policy_no ?? 'N/A' }}</span>
                </div>

                <div style="margin-bottom: 15px;display: inline-block;">
                    <span style="font-size: 16px; color: #2C3E50; font-weight: bold; display: inline-block; min-width: 150px;">Policy Start Date:</span>
                    <span style="font-size: 16px; color: #7F8C8D; display: inline-block;">{{ $finalReport->customer_policy_start ?? 'N/A' }}</span>
                
                    <span style="font-size: 16px; color: #2C3E50; font-weight: bold;padding-left:150px; display: inline-block; min-width: 150px;">Policy End Date:</span>
                    <span style="font-size: 16px; color: #7F8C8D; display: inline-block;">{{ $finalReport->customer_policy_end ?? 'N/A' }}</span>
                </div>

                <div>
                    <span style="font-size: 16px; color: #2C3E50; font-weight: bold; display: inline-block; min-width: 150px;">Insurance Type:</span>
                    <span style="font-size: 16px; color: #7F8C8D; display: inline-block;">{{ $finalReport->customer_insurance_type ?? 'N/A' }}</span>
                </div>
            </div>
        </div>


    <div class="card-header bg-primary text-white">
      <h3>Accident Information</h3>
    </div>
        <div class="card mb-4">
            <div class="card-body">
                <!-- Wrap each row inside a flex container to keep it aligned -->
                <div style="margin-bottom: 15px; display: flex; justify-content: space-between;">
                    <span style="font-size: 16px; color: #2C3E50; font-weight: bold; min-width: 200px;">Was anyone injured in the accident?</span>
                    <span style="font-size: 16px; color: #7F8C8D;">{{ $finalReport->was_anyone_injured_in_the_accident ?? 'N/A' }}</span>
                </div>

                <div style="margin-bottom: 15px;">
                <div style="display: flex; justify-content: space-between; align-items: center;">
                <span style="font-size: 16px; color: #2C3E50; font-weight: bold; min-width: 200px;">
                Upload photos of the vehicle damage
                </span>

                </div>

                @if (!empty($finalReport->upload_photos_of_the_vehicle_damage) && is_array($finalReport->upload_photos_of_the_vehicle_damage))
                <div style="display: flex; flex-wrap: wrap; gap: 10px; margin-top: 10px;">
                @foreach ($finalReport->upload_photos_of_the_vehicle_damage as $photo)
                <img src="{{ asset('storage/' . $photo) }}" alt="Damage Photo"
                style="max-width: 200px; border: 1px solid #ccc; padding: 5px;">
                @endforeach
                </div>
                @else
                <p style="color: #999; margin-top: 10px;">No photos uploaded.</p>
                @endif
                </div>


                 <div style="margin-bottom: 15px; display: flex; justify-content: space-between;">
                    <span style="font-size: 16px; color: #2C3E50; font-weight: bold; min-width: 200px;">Describe what happened in the accident	?</span>
                    <span style="font-size: 16px; color: #7F8C8D;">{{ $finalReport->describe_what_happened_in_the_accident ?? 'N/A' }}</span>
                </div>

               
            </div>
        </div>


         <div class="card mb-4">
            <div class="card-header bg-success text-white">
                <h3>Driver Information</h3>
            </div>
            <div class="card mb-4">
            <div class="card-body">

                <div style="margin-bottom: 15px;">
                    <span style="font-size: 16px; color: #2C3E50; font-weight: bold; display: inline-block; min-width: 150px;">List any previous driving offenses?</span>
                    <span style="font-size: 16px; color: #7F8C8D; display: inline-block;">{{ $finalReport->list_any_previous_driving_offenses ?? 'N/A' }}</span>
                 </div>

                    <div style="margin-bottom: 15px;">
                    <span style="font-size: 16px; color: #2C3E50; font-weight: bold; display: inline-block; min-width: 150px;">Did the driver receive any injuries?</span>
                    <span style="font-size: 16px; color: #7F8C8D; display: inline-block;">{{ $finalReport->did_the_driver_receive_any_injuries ?? 'N/A' }}</span>
                 </div>

                  <div style="margin-bottom: 15px;">
                    <span style="font-size: 16px; color: #2C3E50; font-weight: bold; display: inline-block; min-width: 150px;">Was the driver under influence?	</span>
                    <span style="font-size: 16px; color: #7F8C8D; display: inline-block;">{{ $finalReport->was_the_driver_under_influence ?? 'N/A' }}</span>
                 </div>

                 <div style="margin-bottom: 15px;">
                    <span style="font-size: 16px; color: #2C3E50; font-weight: bold; display: inline-block; min-width: 150px;">What is the driver's contact number?</span>
                    <span style="font-size: 16px; color: #7F8C8D; display: inline-block;">{{ $finalReport->what_is_the_drivers_contact_number ?? 'N/A' }}</span>
                 </div>

                 <div style="margin-bottom: 15px;">
                    <span style="font-size: 16px; color: #2C3E50; font-weight: bold; display: inline-block; min-width: 150px;">Full name of the driver at the time of the accident?</span>
                    <span style="font-size: 16px; color: #7F8C8D; display: inline-block;">{{ $finalReport->full_name_of_the_driver_at_the_time_of_the_accident ?? 'N/A' }}</span>
                 </div>


                
            </div>
        </div>
        </div>


        <!-- Owner Information Section -->
        <div class="card mb-4">
            <div class="card-header bg-success text-white">
                <h3>Owner Information</h3>
            </div>
            <div class="card mb-4">
            <div class="card-body">
                <div style="margin-bottom: 15px;">
                    <span style="font-size: 16px; color: #2C3E50; font-weight: bold; display: inline-block; min-width: 150px;">Next steps discussed in the meeting?</span>
                    <span style="font-size: 16px; color: #7F8C8D; display: inline-block;">{{ $finalReport->next_steps_discussed_in_the_meeting ?? 'N/A' }}</span>
                 </div>
                 <div style="margin-bottom: 15px;">
                    <span style="font-size: 16px; color: #2C3E50; font-weight: bold;  display: inline-block; min-width: 150px;">Was any agreement or document signed?</span>
                    <span style="font-size: 16px; color: #7F8C8D; display: inline-block;">{{ $finalReport->was_any_agreement_or_document_signed ?? 'N/A' }}</span>
                </div>

                <div style="margin-bottom: 15px;">
                    <span style="font-size: 16px; color: #2C3E50; font-weight: bold;  display: inline-block; min-width: 150px;">Date of the meeting?</span>
                    <span style="font-size: 16px; color: #7F8C8D; display: inline-block;">{{ $finalReport->date_of_the_meeting ?? 'N/A' }}</span>
                </div>

                <div style="margin-bottom: 15px;">
                    <span style="font-size: 16px; color: #2C3E50; font-weight: bold;  display: inline-block; min-width: 150px;">What was discussed in the meeting?</span>
                    <span style="font-size: 16px; color: #7F8C8D; display: inline-block;">{{ $finalReport->what_was_discussed_in_the_meeting ?? 'N/A' }}</span>
                </div>

                 <div style="margin-bottom: 15px;">
                <div style="display: flex; justify-content: space-between; align-items: center;">
                <span style="font-size: 16px; color: #2C3E50; font-weight: bold; min-width: 200px;">
                Upload Record summary of meeting conversation
                </span>

                </div>

                @if (!empty($finalReport->record_a_summary_of_the_meeting_conversation) && is_array($finalReport->record_a_summary_of_the_meeting_conversation))
                <div style="display: flex; flex-wrap: wrap; gap: 10px; margin-top: 10px;">
                @foreach ($finalReport->record_a_summary_of_the_meeting_conversation as $photo)
                <img src="{{ asset('storage/' . $photo) }}" alt="Damage Photo"
                style="max-width: 200px; border: 1px solid #ccc; padding: 5px;">
                @endforeach
                </div>
                @else
                <p style="color: #999; margin-top: 10px;">No photos uploaded.</p>
                @endif
                </div>

                    <div style="margin-bottom: 15px;">
                    <span style="font-size: 16px; color: #2C3E50; font-weight: bold;  display: inline-block; min-width: 150px;">Who did you meet regarding the accident (name & role)?</span>
                    <span style="font-size: 16px; color: #7F8C8D; display: inline-block;">{{ $finalReport->who_did_you_meet_regarding_the_accident_name_role ?? 'N/A' }}</span>
                </div>



            </div>
        </div>
        </div>

        <!-- Spot Information Section -->
        <div class="card mb-4">
            <div class="card-header bg-success text-white">
                <h3>Spot Information</h3>
            </div>
            <div class="card mb-4">
            <div class="card-body">
                 <div style="margin-bottom: 15px;">
                    <span style="font-size: 16px; color: #2C3E50; font-weight: bold; display: inline-block; min-width: 150px;">Was there any police presence at the location?</span>
                    <span style="font-size: 16px; color: #7F8C8D; display: inline-block;">{{ $finalReport->was_there_any_police_presence_at_the_location ?? 'N/A' }}</span>
                 </div>
                 <div style="margin-bottom: 15px;">
                    <span style="font-size: 16px; color: #2C3E50; font-weight: bold;  display: inline-block; min-width: 150px;">Were any traffic signals nearby?</span>
                    <span style="font-size: 16px; color: #7F8C8D; display: inline-block;">{{ $finalReport->were_any_traffic_signals_nearby ?? 'N/A' }}</span>
                </div>

                <div style="margin-bottom: 15px;">
                    <span style="font-size: 16px; color: #2C3E50; font-weight: bold;  display: inline-block; min-width: 150px;">Enter the address or coordinates of the accident spot?</span>
                    <span style="font-size: 16px; color: #7F8C8D; display: inline-block;">{{ $finalReport->enter_the_address_or_coordinates_of_the_accident_spot ?? 'N/A' }}</span>
                </div>

            </div>
        </div>
        </div>

        <!-- Garage Information Section -->
       
        
        <!-- <div class="card mb-4">
        <div class="card-header bg-success text-white">
        <h3>Garage Information</h3>
        </div>
        <div class="card-body">
        @forelse ($validQuestions as $question)
        @php
        $column = $question->column_name;
        $answer = $finalReport->$column ?? 'N/A';
        @endphp
        <div style="margin-bottom: 15px;">
        <span style="font-size: 16px; color: #2C3E50; font-weight: bold; display: inline-block; min-width: 150px;">
        {{ $question->question_text ?? ucfirst(str_replace('_', ' ', $column)) }}:
        </span>
        <span style="font-size: 16px; color: #7F8C8D; display: inline-block;">
        {{ $answer }}
        </span>
        </div>
        @empty
        <p>No garage-related information available.</p>
        @endforelse
        </div>
        </div> -->


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




        <!-- Garage Information Section -->
        <div class="card mb-4">
            <div class="card-header bg-success text-white">
                <h3>Executive Information</h3>
            </div>
            <div class="card mb-4">
            <div class="card-body">
                 <div style="margin-bottom: 15px;">
                    <span style="font-size: 16px; color: #2C3E50; font-weight: bold; display: inline-block; min-width: 150px;">Driver Representing Executive:</span>
                    <span style="font-size: 16px; color: #7F8C8D; display: inline-block;">{{ $finalReport->driver_executive ?? 'N/A' }}</span>
                 </div>
                 <div style="margin-bottom: 15px;">
                    <span style="font-size: 16px; color: #2C3E50; font-weight: bold;  display: inline-block; min-width: 150px;">Garage Representing Executive:</span>
                    <span style="font-size: 16px; color: #7F8C8D; display: inline-block;">{{ $finalReport->garage_executive ?? 'N/A' }}</span>
                </div>
                <div style="margin-bottom: 15px;">
                    <span style="font-size: 16px; color: #2C3E50; font-weight: bold;  display: inline-block; min-width: 150px;">Spot Representing Executive:</span>
                    <span style="font-size: 16px; color: #7F8C8D; display: inline-block;">{{ $finalReport->spot_executive ?? 'N/A' }}</span>
                </div>
                <div style="margin-bottom: 15px;">
                    <span style="font-size: 16px; color: #2C3E50; font-weight: bold;  display: inline-block; min-width: 150px;">Meeting Representing Executive:</span>
                    <span style="font-size: 16px; color: #7F8C8D; display: inline-block;">{{ $finalReport->owner_executive ?? 'N/A' }}</span>
                </div>
                <div style="margin-bottom: 15px;">
                    <span style="font-size: 16px; color: #2C3E50; font-weight: bold;  display: inline-block; min-width: 150px;">Accident Representing Executive:</span>
                    <span style="font-size: 16px; color: #7F8C8D; display: inline-block;">{{ $finalReport->accident_executive ?? 'N/A' }}</span>
                </div>
            </div>
        </div>
        </div>

        <!-- Images Section -->
        <div class="card mb-4">
            <div class="card-header bg-secondary text-white">
                <h3>Selected Images</h3>
            </div>
            <div class="card-body">
                
                <div style="display: flex; flex-wrap: wrap; justify-content: start; gap: 10px;">
                @if($finalReport->final_images)
                    @foreach(json_decode($finalReport->final_images) as $image)
                        <div style="flex: 1 0 21%; box-sizing: border-box; margin-bottom: 10px;">
                            @if (file_exists(storage_path('app/public/' . $image)))
                                <img src="data:image/{{ pathinfo($image, PATHINFO_EXTENSION) }};base64,{{ base64_encode(file_get_contents(storage_path('app/public/' . $image))) }}" 
                                    alt="Image"
                                    style="width: 100%; height: auto; border: 1px solid #ccc;">
                            @else
                                <p>Image not found: {{ $image }}</p>
                            @endif
                        </div>
                    @endforeach
                @endif    
                </div>
            </div>
        </div>

    </div>

    <!-- Bootstrap JS & Popper.js -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

</body>

</html>
