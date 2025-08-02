@extends('dashboard.layout.app')
@section('title', 'User List')

@section('content')
<div class="container-fluid">
    <div class="text-right">
        <button class="btn btn-danger mr-2 mb-2" onclick="window.history.back()"><i class="fa fa-arrow-left" aria-hidden="true"></i></button>
        <button class="btn btn-warning mr-2 mb-2" onclick="window.location.reload()"><i class="fa fa-spinner" aria-hidden="true"></i></button>
        <a href="{{route('user.create')}}" class="btn btn-primary mr-2 mb-2"><i class="fa fa-user-plus" aria-hidden="true"></i></a>
    </div>
    <div class="card">
        <div class="card-header row">
            <div class='col-md-2'>
                <h4>User List</h4>
            </div>
            <div class="col-md-5">
                <form action="" class="row" method="GET" >
                    <div class="col-md-4">
                        <input type="text" name="search" placeholder="Search..." value="" class="form-control">
                    </div>
                    <div class="col-md-2">
                        <button type="submit" class="btn btn-primary">Search</button>
                    </div>
                </form>
            </div>
            <div class='col-md-5'>
                <form id='statusForm' action="" class="row" method="GET">
                    <div class="col-md-3">
                        <input type="radio" name="status" id="triggerSubmit1" @if($status==1) checked @endif value="1" class="form-check-input">
                        <label class="form-check-label" for="status_active">Active</label>
                    </div> 
                    <div class="col-md-2">   
                        <input type="radio" name="status" id="triggerSubmit2" @if($status==0) checked @endif value="0"  class="form-check-input">
                        <label class="form-check-label" for="status_inactive">Inactive</label>
                    </div>    
                </form>
            </div>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-striped text-center" id="user-list">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Role</th>
                            <th>IMEI</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($users as $user)
                        <tr>
                            <td>{{ $loop->iteration }}</td>
                            <td>{{ $user->name }}</td>
                            <td>{{ $user->email }}</td>
                            @if($user->role==2)
                            <td>Sub Admin</td>
                            @elseif($user->role==3)
                            <td>Executive</td>
                            @endif
                            <td>{{ $user->imei }}</td>
                            <td>
                                @if ($user->status == 1)
                                <span class="badge badge-success">Active</span>
                                @else
                                <span class="badge badge-danger">Deactive</span>
                                @endif
                            </td>
                            <td>
                                <a href="{{route('user.edit', $user->id)}}" class="btn btn-primary "><i class="fas fa-fw fa-pencil-alt"></i></a>
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
                <div class="d-flex justify-content-center">
                    {{ $users->links() }}
                </div>
            </div>
        </div>
    </div>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script>

    $('#triggerSubmit1').change(function() {
        if ($(this).is(':checked')) {
           
            $('#statusForm').submit();
        }
    });

    $('#triggerSubmit2').change(function() {
        if ($(this).is(':checked')) {
           
            $('#statusForm').submit();
        }
    });
</script>
@endsection