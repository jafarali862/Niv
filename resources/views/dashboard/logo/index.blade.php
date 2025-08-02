@extends('dashboard.layout.app')
@section('title', 'User List')

@section('content')
<div class="container-fluid">
    <div class="text-right">
        <button class="btn btn-danger mr-2 mb-2" onclick="window.history.back()"><i class="fa fa-arrow-left" aria-hidden="true"></i></button>
        <button class="btn btn-warning mr-2 mb-2" onclick="window.location.reload()"><i class="fa fa-spinner" aria-hidden="true"></i></button>
        @if(count($logos)==0)
        <a href="{{route('logo')}}" class="btn btn-primary mr-2 mb-2" ><i class="fa fa-user-plus" aria-hidden="true"></i></a>
        @endif
    </div>
    <div class="card">
    @if(session('success'))
        <div class="alert alert-success">
            {{ session('success') }}
        </div>
    @endif
        <div class="card-header">

            <h4>Company Info List</h4>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-striped text-center" id="user-list">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Company Name</th>
                            <th>Company Email address</th>
                            <th>Contact Number</th>
                            <th>Place</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($logos as $logo)
                        <tr>
                            <td>{{ $loop->iteration }}</td>
                            <td>{{ $logo->name  }}</td>
                            <td>{{ $logo->email }}</td>
                            <td>{{ $logo->phone }}</td>
                            <td>{{ $logo->place }}</td>
                            <td><img src="{{ asset('storage/' . $logo->logo) }}" alt="Ration card Image" class="img-fluid mb-2" style="max-width: 200px;"></td>    
                            <td>
                                <a href="{{route('logo.edit', $logo->id)}}" class="btn btn-primary "><i class="fas fa-fw fa-pencil-alt"></i></a>
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
                <div class="d-flex justify-content-right">
                    {{ $logos->links() }}
                </div>
            </div>
        </div>
    </div>
</div>

@endsection

