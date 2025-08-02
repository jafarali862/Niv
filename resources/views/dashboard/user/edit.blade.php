@extends('dashboard.layout.app')
@section('title', 'Edit User')

@section('content')
    <div class="container-fluid">
        <h1 class="h3 mb-4 text-gray-800 text-center">Edit User</h1>

        <div class="row justify-content-center">
            <div class="col-lg-8 col-md-10">
                <div class="card  shadow-lg rounded-lg">
                    <div class="card-header bg-primary text-white  rounded-top">
                        <h4 class="m-0 font-weight-bold">Edit User</h4>
                    </div>
                    <div class="card-body">
                        <div id="successMessage" class="alert alert-success" style="display: none;"></div>
                        <form action="{{ route('user.update') }}" method="POST" id="updateUser">
                            @csrf
                            <input type="hidden" name="id" value="{{ $user->id }}">

                            <div class="mb-4">
                                <label for="name" class="form-label font-weight-bold">Name</label>
                                <input type="text" id="name" name="name" class="form-control  rounded-pill shadow-sm" value="{{ old('name', $user->name) }}" required>
                                <span class="text-danger" id="name-error"></span>
                            </div>

                            <div class="mb-4">
                                <label for="phone" class="form-label font-weight-bold">Phone</label>
                                <input type="tel" id="phone" name="phone" class="form-control  rounded-pill shadow-sm" value="{{ old('phone', $user->phone) }}" required>
                                <span class="text-danger" id="phone-error"></span>
                            </div>

                            <div class="mb-4">
                                <label for="email" class="form-label font-weight-bold">Email</label>
                                <input type="email" id="email" name="email" class="form-control  rounded-pill shadow-sm" value="{{ old('email', $user->email) }}" required>
                                <span class="text-danger" id="email-error"></span>
                            </div>

                            <div class="mb-4">
                                <label for="role" class="form-label font-weight-bold">Role</label>
                                <select id="role" name="role" class="form-select  rounded-pill shadow-sm" required>
                                    <option value="2" {{ old('role', $user->role) == '2' ? 'selected' : '' }}>Sub Admin</option>
                                    <option value="3" {{ old('role', $user->role) == '3' ? 'selected' : '' }}>Executive</option>
                                </select>
                            </div>

                            <div class="mb-4">
                                <label for="status" class="form-label font-weight-bold">Status</label>
                                <select id="status" name="status" class="form-select  rounded-pill shadow-sm" required>
                                    <option value="1" {{ old('status', $user->status) == '1' ? 'selected' : '' }}>Active</option>
                                    <option value="0" {{ old('status', $user->status) == '0' ? 'selected' : '' }}>Inactive</option>
                                </select>
                            </div>

                            <div class="mb-4">
                                <label for="password" class="form-label font-weight-bold">Password</label>
                                <input type="password" id="password" name="password" class="form-control  rounded-pill shadow-sm" value="" >
                                <span class="text-danger" id="email-error"></span>
                            </div>

                            <div class="d-flex justify-content-between">
                                <button type="submit" class="btn btn-primary rounded-pill px-4">Update User</button>
                                <a href="{{ route('user.list') }}" class="btn btn-outline-secondary rounded-pill px-4">Cancel</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

    <script>
        $(document).ready(function() {
            $('#updateUser').on('submit', function(e) {
                e.preventDefault();

                $.ajax({
                    url: '{{ route('user.update') }}',
                    type: 'POST',
                    data: $(this).serialize(),
                    success: function(response) {
                        if (response.success) {
                            $('#successMessage').text(response.success).show();
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
