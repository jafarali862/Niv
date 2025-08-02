@extends('dashboard.layout.app')
@section('title', 'Company List')

@section('content')
    <div class="container-fluid">
        <div class="text-right">
            <button class="btn btn-danger mr-2 mb-2" onclick="window.history.back()"><i class="fa fa-arrow-left"
                    aria-hidden="true"></i></button>
            <button class="btn btn-warning mr-2 mb-2" onclick="window.location.reload()"><i class="fa fa-spinner"
                    aria-hidden="true"></i></button>
            <a href="{{ route('company.create') }}" class="btn btn-primary mr-2 mb-2">
                <i class="fa fa-plus" aria-hidden="true"></i>
            </a>
        </div>
        <div class="card">
            <div class="card-header row">
                <div class='col-md-7'><h4>Company List</h4></div>
                <div class="col-md-5">
                        <form action="" class="row" method="GET">
                            <div class="col-md-4">
                                  <input type="text" name="search" placeholder="Search..." value="" class="form-control">
                            </div>
                            <div class="col-md-2">
                                   <button type="submit" class="btn btn-primary">Search</button>
                            </div>       
                        </form>
            </div>
            <div class="card-body">
                <table class="table table-striped text-center">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Company Name</th>
                            <th>Email</th>
                            <th>Phone</th>
                            <th>Template</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <?php $i = 1; ?>
                    <tbody>
                        @foreach ($companies as $company)
                            <tr>
                                <td><?php echo $i++; ?></td>
                                <td>{{ $company->name }}</td>
                                <td>{{ $company->email }}</td>
                                <td>{{ $company->phone }}</td>
                                <td>@if($company->template) Template {{$company->template }} @else  Template Default @endif</td>
                                @if ($company->status == 1)
                                    <td><span class="badge bg-success">Active</span></td>
                                @else
                                    <td><span class="badge bg-danger">Deactive</span></td>
                                @endif
                                <td>
                                    <a href="{{ route('companies.edit', $company->id) }}" class="btn btn-primary"><i
                                            class="fas fa-fw fa-pencil-alt"></i></a>
                                    {{-- <a href="/view-company/{{ $company->company_id }}" class="btn btn-info btn-sm">View</a> --}}
                                    {{-- <a href="/delete-company/{{ $company->company_id }}" class="btn btn-danger btn-sm">Delete</a> --}}
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
                      <div class="d-flex justify-content-center">
                    {{ $companies->links() }}
                </div>
            </div>
        </div>
    </div>
@endsection
