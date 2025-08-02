@extends('dashboard.layout.app')

@section('title', 'Odometer List')

@section('content')
<div class="container-fluid">

    <div class="text-right">
        <button class="btn btn-danger mr-2 mb-2" onclick="window.history.back()"><i class="fa fa-arrow-left"
                aria-hidden="true"></i></button>
        <button class="btn btn-warning mr-2 mb-2" onclick="window.location.reload()"><i class="fa fa-spinner"
                aria-hidden="true"></i></button>
    </div>
    <h1 class="h3 mb-4 text-gray-800">Odometer List</h1>
    
    <div class="table-responsive">
        <table class="table table-bordered table-hover text-center">
            <thead class="thead-light">
                <tr>
                    <th>S.No</th>
                    <th>Name</th>
                    <th>Check In Time</th>
                    <th>Check Out Time</th>
                    <th>Date</th>
                    <th>View</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($odometerRecords as $index => $record)
                <tr>
                    <td>{{ $odometerRecords->firstItem() + $index }}</td>
                    <td>{{ $record->user_name }}</td> 
                    <td>{{ $record->check_in_time }}</td>
                    <td>
                        @if($record->check_out_time)
                            {{ $record->check_out_time }}
                        @else
                            <span class="text-danger">Exec not closed</span>
                        @endif
                    </td>
                    <td>
                        @if($record->check_out_date)
                            {{ $record->check_out_date }}
                        @else
                            <span class="text-danger">Exec not closed</span>
                        @endif
                    </td>
                    <td><a href="{{ route('odometer.view', $record->id) }}" class="btn btn-info btn-sm"><i class="fa fa-eye" aria-hidden="true"></i></a></td>
                </tr>
                @endforeach
            </tbody>            
        
        </table>
    </div>

    <!-- Pagination Links -->
    <div class="d-flex justify-content-between">
        <div>
            Showing {{ $odometerRecords->firstItem() }} to {{ $odometerRecords->lastItem() }} of {{ $odometerRecords->total() }} records
        </div>
        <div>
            {{ $odometerRecords->links() }} 
        </div>
    </div>
</div>
@endsection
