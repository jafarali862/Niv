@extends('dashboard.layout.app')
@section('title', 'Approval Request')

@section('content')
    <div class="container-fluid">
        <div class="text-right">
            <button class="btn btn-danger mr-2 mb-2" onclick="window.history.back()"><i class="fa fa-arrow-left"
                    aria-hidden="true"></i></button>
            <button class="btn btn-warning mr-2 mb-2" onclick="window.location.reload()"><i class="fa fa-spinner"
                    aria-hidden="true"></i></button>
        </div>
        <div class="card">
            <div class="card-header">
                <h4>Mobile Approval Request</h4>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-striped text-center" id="user-list">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Place</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($users as $user)
                                <tr id="user-row-{{ $user->id }}">
                                    <td>{{ $loop->iteration }}</td>
                                    <td>{{ $user->name }}</td>
                                    <td>{{ $user->email }}</td>
                                    <td>{{ $user->place }}</td>
                                    <td>
                                        <form action="{{ route('approval.request.update', $user->id) }}" method="POST"
                                            class="approveForm" data-user-id="{{ $user->id }}">
                                            @csrf
                                            <button type="button" class="btn btn-primary approveBtn">Approve</button>
                                        </form>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="confirmationModal" tabindex="1" aria-labelledby="confirmationModalLabel"
        aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="confirmationModalLabel">Confirm Approval</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    Are you sure you want to approve this user?
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                    <button type="button" class="btn btn-primary" id="confirmApproveBtn">Approve</button>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function() {
            let currentForm;

            $('.approveBtn').on('click', function() {
                currentForm = $(this).closest('form');
                $('#confirmationModal').modal('show');
                
            });

            $('#confirmApproveBtn').on('click', function() {
                $.ajax({
                    url: currentForm.attr('action'),
                    type: 'POST',
                    data: currentForm.serialize(),
                    success: function(response) {
                        $('#user-row-' + currentForm.data('user-id')).fadeOut();
                        $('#confirmationModal').modal('hide'); // Hide modal
                       
                    },
                    error: function(xhr) {
                        alert('Error: ' + xhr.responseText); // Show error message
                    }
                });
            });
        });
    </script>

@endsection
