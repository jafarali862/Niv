@extends('dashboard.layout.app')
@section('title', 'Add Questionnaire')

@section('content')
    <div class="container-fluid">
        <div class="text-right">
            <button class="btn btn-danger mr-2 mb-2" onclick="window.history.back()"><i class="fa fa-arrow-left"
                    aria-hidden="true"></i></button>
            <button class="btn btn-warning mr-2 mb-2" onclick="window.location.reload()"><i class="fa fa-spinner"
                    aria-hidden="true"></i></button>
            <a href="{{ route('company.list') }}" class="btn btn-primary mr-2 mb-2">
                <i class="fa fa-list" aria-hidden="true"></i>
            </a>
        </div>
        <div class="row">
            <div class="col-md-8 offset-md-2">
                <div class="card">
                    <div class="card-header">
                        <h4>Add Questionnaire</h4>
                    </div>
                    <div id="successMessage" class="alert alert-success" style="display: none;"></div>
                    <div class="card-body">
                      
                    <form action="{{ route('companies.store_question') }}" method="POST" id="companyForm">
                    @csrf
                    <div class="form-group">
                    <label for="question">Question</label> <span class="text-danger">*</span>
                    <input type="text" class="form-control" id="question" name="question" required>
                    </div>

                    <div class="form-group">
                    <label for="input_type">Input Type</label> <span class="text-danger">*</span>
                    <select class="form-control" id="input_type" name="input_type" required>
                    <option value="" selected disabled>Select Type</option>
                    <option value="text">Text</option>
                    <option value="textarea">Textarea</option>
                    <option value="select">Select</option>
                    <option value="file">File</option>
                    <option value="date">Date</option>
                    </select>
                    </div>

                    <div class="form-group" id="fileTypeContainer" style="display: none;">
                    <label for="file_type">File Type</label> <span class="text-danger">*</span>
                    <select class="form-control" id="file_type" name="file_type">
                    <option value="" selected disabled>Select File Type</option>
                    <option value="image">Image</option>
                    <option value="audio">Audio</option>
                    <!-- <option value="video">Video</option>
                    <option value="pdf">PDF</option>
                    <option value="doc">Document (Word)</option> -->
                    </select>
                    </div>


                    <div class="form-group">
                    <label for="data_category">Data Category</label> <span class="text-danger">*</span>
                    <select class="form-control" id="data_category" name="data_category" required>
                    <option value="" selected disabled>Select Data Category</option>
                    <option value="garage_data">Garage Data</option>
                    <option value="spot_data">Spot Data</option>
                    <option value="owner_data">Owner Data</option>
                    <option value="driver_data">Driver Data</option>
                    <option value="accident_person_data">Accident Person Data</option>
                    </select>
                    </div>

                    <button type="submit" class="btn btn-primary">Add Question</button>
                    </form>

                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

    <script>
        $(document).ready(function() {
            $('#companyForm').on('submit', function(e) {
                e.preventDefault();

                $.ajax({
                    url: '{{ route('companies.store_question') }}',
                    type: 'POST',
                    data: $(this).serialize(),
                    success: function(response) {
                        if (response.success) {
                            $('#successMessage').text(response.success).show();
                            $('#companyForm')[0].reset(); // Reset form fields
                            $('.text-danger').text(''); // Clear previous error messages
                        }
                    },
                    error: function(xhr) {
                        var errors = xhr.responseJSON.errors;
                        $('.text-danger').text(''); // Clear previous error messages
                        $.each(errors, function(key, value) {
                            $('#' + key + '-error').text(value);
                        });
                    }
                });
            });
        });


        
    </script>

    <script>
    document.getElementById('input_type').addEventListener('change', function () {
        const fileTypeContainer = document.getElementById('fileTypeContainer');
        if (this.value === 'file') {
            fileTypeContainer.style.display = 'block';
            document.getElementById('file_type').setAttribute('required', 'required');
        } else {
            fileTypeContainer.style.display = 'none';
            document.getElementById('file_type').removeAttribute('required');
        }
    });
</script>

@endsection
