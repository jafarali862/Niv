@extends('dashboard.layout.app')
@section('title', 'Password Reset List')

@section('content')
    <div class="container-fluid">
        <div class="text-right">
            <button class="btn btn-danger mr-2 mb-2" onclick="window.history.back()"><i class="fa fa-arrow-left"
                    aria-hidden="true"></i></button>
            <button class="btn btn-warning mr-2 mb-2" onclick="window.location.reload()"><i class="fa fa-spinner"
                    aria-hidden="true"></i></button>
        </div>
        @if (session('error'))
            <div class="alert alert-danger">
                {{ session('error') }}
            </div>
        @endif
        <div class="card">
            <div class="card-header d-flex justify-content-between align-items-center">
                <h4>Password Reset List</h4>
                <a href="{{ route('password.reset.request') }}" class="btn btn-primary">Show Pending All Request <i
                        class="fa fa-list-ul" aria-hidden="true"></i></a>
            </div>

            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-striped text-center" id="request-list">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Request Date</th>
                                <th>Status</th>
                            </tr>
                        </thead>
                        <tbody>
                            @if ($data->isEmpty())
                                <tr>
                                    <td colspan="5" class="text-center">No password reset requests found.</td>
                                </tr>
                            @else
                                @foreach ($data as $request)
                                    <tr>
                                        <td>{{ $loop->iteration }}</td>
                                        <td>{{ $request->user_name }}</td>
                                        <td>{{ $request->request_date }}</td>
                                        <td>
                                            @if ($request->status == 0)
                                                <span class="badge badge-success">Accepted</span>
                                            @elseif($request->status == 1)
                                                <span class="badge badge-warning">Pending</span>
                                            @elseif($request->status == 2)
                                                <span class="badge badge-danger">Rejected</span>
                                            @endif
                                        </td>
                                    </tr>
                                @endforeach
                            @endif
                        </tbody>
                    </table>

                    <div class="d-flex justify-content-right">
                        {{ $data->links() }}
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection
