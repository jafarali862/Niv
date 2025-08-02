@extends('dashboard.layout.app')
@section('title', 'Report Request')

@section('content')
    <div class="container-fluid">
        <div class="text-right">
            <button class="btn btn-danger mr-2 mb-2" onclick="window.history.back()"><i class="fa fa-arrow-left"
                    aria-hidden="true"></i></button>
            <button class="btn btn-warning mr-2 mb-2" onclick="window.location.reload()"><i class="fa fa-spinner"
                    aria-hidden="true"></i></button>
        </div>
        <div class="card">
            <div class="card-header row">
            <div class='col-md-7'><h4>Report Request List</h4></div>
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
                <div class="table-responsive">
                    <table class="table table-striped text-center" id="user-list">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Customer Name</th>
                                <th>Company Name</th>
                                <th>Investigation Date</th>
                                <th>Type</th>
                                <th>Action</th>
                                {{-- <th>Download</i></th> --}}
                            </tr>
                        </thead>
                        <tbody>
                            @if ($reports->isEmpty())
                                <tr>
                                    <td colspan="6">No report requests available.</td>
                                </tr>
                            @else
                                <?php $i=1; ?>
                                @foreach ($reports as $report)
                                    <tr>
                                        <td><?php echo $i++; ?></td>
                                        <td>{{ $report->customer_name }}</td>
                                        <td>{{ $report->company_name }}</td>
                                        <td>{{ \Carbon\Carbon::parse($report->date)->format('d-m-Y') }}</td>
                                        <td>{{ $report->type }}</td>
                                        <td>
                                            <a href="{{ route('request.report.view', $report->report_id) }}" class="btn btn-info"><i class="fa fa-eye" aria-hidden="true"></i></a>
                                            {{-- <form action="{{ route('report.destroy', $report->id) }}" method="POST" style="display:inline;">
                                                @csrf
                                                @method('DELETE')
                                                <button type="submit" class="btn btn-danger">Delete</button>
                                            </form> --}}
                                        </td>
                                        {{-- <td><a href="{{ route('final.report.download', $report->report_id) }}" class="btn btn-success"><i class="fa fa-download" aria-hidden="true"></i></a></td> --}}
                                    </tr>
                                @endforeach
                            @endif
                        </tbody>
                    </table>
                    <div class="d-flex justify-content-right">
                        {{ $reports->links() }}
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('scripts')

@endsection
