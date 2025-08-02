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
                <div class='col-md-7'><h4>Final Report</h4></div>
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
                                <th>Date</th>
                                <th>Type</th>
                                <th>Download Pdf</i></th>
                                <!-- <th>Preview</th> -->
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
                                        <td>{{ $report->date }}</td>
                                        <td>{{ $report->type }}</td>
                                        <!-- <td><a href="{{ route('final.report.download', $report->report_id) }}" class="btn btn-success"><i class="fa fa-download" aria-hidden="true"></i>Download Report</a></td> -->
                                        <td><a onclick=downloadPdf({{$report->report_id}}) class="btn btn-success"><i class="fa fa-download" aria-hidden="true"></i>
                                        Download Report</a></td>
                                        
                                        <!-- <td>
                                        <a href="" target="_blank" class="btn btn-info">
                                        <i class="fa fa-eye"></i> Preview</a> -->

                                                                               
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

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
 
     

    function downloadPdf(id) 
    {
        if (id != null) 
        {
        $.ajax({
        url: '{{route("final.report.download")}}', 
        type: 'POST',
        data: 
        {
            report_id: id,
            _token: '{{ csrf_token() }}', 
        },
        xhrFields: 
        {
            responseType: 'blob' // Ensuring we handle binary data as a Blob
        },
        success: function(response) 
        {
            // Log response type to see what we are receiving
            console.log("Response type:", response.type);
            console.log("Response size:", response.size);
            
            if (response instanceof Blob) 
            {
                var link = document.createElement('a');
                link.href = URL.createObjectURL(response);
                link.download = 'insurance.pdf';
                document.body.appendChild(link);
                link.click();
                document.body.removeChild(link);
            } 
            else 
            {
                console.error("Response is not a Blob. Likely an error message.");
                alert("The report could not be downloaded. Please check if the report exists.");
            }
        },
        error: function(xhr, status, error) 
        {
            console.error("Download failed:", status, error);
            alert('Error: ' + error + '\nStatus: ' + status + '\nXHR Response: ' + xhr.responseText);
        }
        });
        }
    }



</script>    
@endsection

@section('scripts')

@endsection
