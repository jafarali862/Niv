@extends('dashboard.layout.app')
@section('title', 'Edit Company')

@section('content')

    <div class="container-fluid">
    <h1 class="h3 mb-4 text-gray-800 text-center">Edit Questionnaire</h1>

    <div class="row justify-content-center">
    <div class="col-lg-8 col-md-10">
    <div class="card border-0 shadow-lg rounded-lg">
    <div class="card-header bg-primary text-white border-0 rounded-top">
    <h6 class="m-0 font-weight-bold">Edit Questionnaire</h6>
    </div>
    <div class="card-body">
    <div id="successMessage" class="alert alert-success" style="display: none;"></div>
    <form action="{{ route('questions.update_question', $question->id) }}" method="POST">
    @csrf
    @method('PUT')

    <div class="form-group">
    <label for="question">Question</label>
    <input type="text" class="form-control" name="question" value="{{ $question->question }}" required>
    </div>

    <div class="form-group">
    <label for="input_type">Input Type</label>
    <select class="form-control" name="input_type" required>
    @foreach(['text', 'textarea', 'select', 'file', 'date'] as $type)
    <option value="{{ $type }}" {{ $question->input_type == $type ? 'selected' : '' }}>{{ ucfirst($type) }}</option>
    @endforeach
    </select>
    </div>

    <div class="form-group">
    <label for="data_category">Data Category</label>
    <select class="form-control" name="data_category" required>
    @foreach(['garage_data', 'spot_data', 'owner_data', 'driver_data','accident_person_data'] as $cat)
    <option value="{{ $cat }}" {{ $question->data_category == $cat ? 'selected' : '' }}>{{ ucfirst(str_replace('_', ' ', $cat)) }}</option>
    @endforeach
    </select>
    </div>

    <button type="submit" class="btn btn-success">Update</button>
    <a href="{{ route('questions.index_question') }}" class="btn btn-secondary">Cancel</a>
    </form>
    </div>
    </div>
    </div>
    </div>
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

    <script>
        $(document).ready(function() {
    $('#updateCompany').on('submit', function(e) {
        e.preventDefault();

        const form = $(this);
        const actionUrl = form.attr('action'); // Uses route with ID included

        $.ajax({
            url: actionUrl,
            type: 'POST', // or 'PUT' if you're not spoofing it via hidden method
            data: form.serialize(),
            success: function(response) {
                if (response.success) {
                    $('#successMessage').text(response.success).show();
                    $('.text-danger').text('');
                }
            }
        });
    });
});

    </script>
@endsection
