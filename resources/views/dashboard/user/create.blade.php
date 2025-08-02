@extends('dashboard.layout.app')
@section('title', 'Add User')
@section('content')
    <div class="container-fluid">
        <div class="text-right">
            <button class="btn btn-danger mr-2 mb-2" onclick="window.history.back()"><i class="fa fa-arrow-left" aria-hidden="true"></i></button>
            <button class="btn btn-warning mr-2 mb-2" onclick="window.location.reload()"><i class="fa fa-spinner" aria-hidden="true"></i></button>
            <a href="{{ route('user.list') }}" class="btn btn-primary mr-2 mb-2">
                <i class="fa fa-users" aria-hidden="true"></i>
            </a>            
        </div>
        <div class="row">
            <div class="col-md-8 offset-md-2 shadow border">
                <h2 class="my-4">Add User</h2>
                <div id="successMessage" class="alert alert-success" style="display: none;"></div>
                <form id="addUser" action="{{ route('user.store') }}" method="POST">
                    @csrf
                    <div class="form-group">
                        <label for="name">Name</label> <span class="text-danger">*</span>
                        <input type="text" class="form-control" id="name" name="name" placeholder="Enter name" required>
                    </div>
                    <div class="form-group">
                        <label for="email">Email address</label> <span class="text-danger">*</span>
                        <input type="email" class="form-control" id="email" name="email" placeholder="Enter email">
                        <span class="text-danger" id="email-error"></span>
                    </div>
                    <div class="form-group">
                        <label for="contact_number">Contact Number</label> <span class="text-danger">*</span>
                        <input type="text" class="form-control" id="contact_number" name="phone" placeholder="Enter contact number" required>
                        <span class="text-danger" id="phone-error"></span>
                    </div>
                    <div class="form-group">
                        <label for="place">Place</label> <span class="text-danger">*</span>
                        <input type="text" class="form-control" id="place" name="place" placeholder="Enter place" required>
                    </div>
                    <div class="form-group">
                        <label for="role">Role</label> <span class="text-danger">*</span>
                        <select name="role" id="role" class="form-select">
                            <option disabled selected>Select user role</option>
                            <option value="3">Executive</option>
                            <option value="2">Sub Admin</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="email">Password</label> <span class="text-danger">*</span>
                        <input type="password" class="form-control" id="password" name="password" >
                        <span class="text-danger" id="password-error"></span>
                    </div>
                    <button type="submit" class="btn btn-primary mb-2">Add User</button>
                </form>
            </div>
        </div>
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

    <script>
        $(document).ready(function() {
            $('#addUser').on('submit', function(e) {
                e.preventDefault();

                $.ajax({
                    url: '{{ route('user.store') }}',
                    type: 'POST',
                    data: $(this).serialize(),
                    success: function(response) {
                        if (response.success) {
                            $('#successMessage').text(response.success).show();
                            $('#addUser')[0].reset(); // Reset form fields
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
@endsection
