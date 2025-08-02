@extends('dashboard.layout.app')
@section('title', 'Case List')

@section('content')
    <div class="container-fluid">
        <div class="text-right">
            <button class="btn btn-danger mr-2 mb-2" onclick="window.history.back()"><i class="fa fa-arrow-left"
                    aria-hidden="true"></i></button>
            <button class="btn btn-warning mr-2 mb-2" onclick="window.location.reload()"><i class="fa fa-spinner"
                    aria-hidden="true"></i></button>
            <a href="{{ route('insurance.create') }}" class="btn btn-primary mr-2 mb-2">
                <i class="fa fa-plus" aria-hidden="true"></i>
            </a>
        </div>
        <div class="card">
            <div class="card-header row">
                <h4>Case List</h4>
                <div class='col-md-7'></div>
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
            </div>

        <div class="card-body">
            <div class="table-responsive">
                @if(session('success'))
                <div class="alert alert-success">
                {{ session('success') }}
                </div>
                @endif

                @php
                use Carbon\Carbon;
                @endphp
                <table class="table table-striped text-center" id="customers-table">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Company</th>
                              <th>Case Type</th>
                                <th>Crime Number</th>
                                <th>Police Station</th>
                               
                                <th>Assign Date</th>
                            <!-- <th>ASSIGN</th> -->
                            {{-- <th>Status</th> --}}
                            <!-- <th>CASE STATUS</th> -->
                            <th>Action</th>
                        </tr>
                    </thead>
                    <?php $i = 1; ?>
                    <tbody>
                        @foreach ($customers as $customer)
                            <tr>
                                <td><?php echo $i++; ?></td>
                                <td>{{ $customer->name }}<br/>
                                    {{ $customer->phone }}
                                </td>
                                <td>{{ $customer->custname }}</td>
                                <td>{{ $customer->insurance_type }}</td>
                                <td>{{ $customer->crime_number }}</td>

                                <td>{{ $customer->police_station }}</td>  
                                <td>{{ Carbon::parse($customer->created_at)->format('d-m-Y') }}</td>


                                <td>
                                    
                            
                                <button class="btn btn-primary open-assign-modal" data-url="{{ route('assign.case', $customer->id) }}">
                                <i class="fa fa-plus-circle" aria-hidden="true"></i> 
                                </button>


                                {{-- <td>
                                    @if ($customer->status == 1)
                                        <span class="badge badge-success">Active</span>
                                    @else
                                        <span class="badge badge-danger">Deactivate</span>
                                    @endif
                                </td> --}}
                            
                                    @if ($customer->case_status == 1)
                                        <span class="badge badge-danger">Pending</span>
                                    @elseif ($customer->case_status == 0)
                                        <span class="badge badge-success">Complete</span>
                                    @elseif ($customer->case_status == 2)
                                        <span class="badge badge-warning">Assigned</span>
                                    @else
                                        <span class="badge badge-secondary">Unknown</span>
                                    @endif
                                
                                
                                <a  href="{{route('case.edit', $customer->id )}}" class="btn btn-primary"><i class="fas fa-fw fa-pencil-alt"></i></a>

                                <button class="btn btn-info open-view-modal"
                                data-url="{{ route('view.case', $customer->id) }}">
                                <i class="fa fa-eye" aria-hidden="true"></i> 
                                </button>

                                @if($customer->intimation_report)
                                <a href="{{ asset('storage/' . $customer->intimation_report) }}" 
                                class="btn btn-success" 
                                download 
                                title="Download Intimation Report">
                                <i class="fas fa-download"></i>
                                </a>
                                @endif

                                </td>
                                
                            </tr>
                        @endforeach
                    </tbody>
                </table>
                <div class="d-flex justify-content-center">
                    {{ $customers->links() }}
                </div>
            </div>
        </div>
    </div>
</div>


    <div class="modal fade" id="assignModal" tabindex="-1" aria-labelledby="assignModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-xl"> <!-- modal-xl for larger modal -->
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="assignModalLabel">Assign Executive</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" id="assignModalBody">
        <div class="text-center py-5">
          <div class="spinner-border text-primary" role="status"></div>
        </div>
      </div>
    </div>
  </div>
</div>




<!-- View Modal -->
<div class="modal fade" id="viewModal" tabindex="-1" aria-labelledby="viewModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="viewModalLabel">Case Details</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" id="viewModalBody">
        <!-- AJAX-loaded content -->
      </div>
    </div>
  </div>
</div>




<script>
document.addEventListener('DOMContentLoaded', function () {
  // When any assign button is clicked
  document.querySelectorAll('.open-assign-modal').forEach(button => {
    button.addEventListener('click', function () {
      const url = this.getAttribute('data-url');
      const modal = new bootstrap.Modal(document.getElementById('assignModal'));
      const modalBody = document.getElementById('assignModalBody');

      // Loading Spinner
      modalBody.innerHTML = `
        <div class="text-center py-5">
          <div class="spinner-border text-primary" role="status"></div>
        </div>
      `;

      modal.show();

      fetch(url)
        .then(response => {
          if (!response.ok) throw new Error('Network response was not OK');
          return response.text();
        })
        .then(html => {
          modalBody.innerHTML = html;

          // 🚨 Important: Execute <script> tags inside loaded HTML
          modalBody.querySelectorAll('script').forEach(script => {
            const newScript = document.createElement('script');
            if (script.src) {
              newScript.src = script.src;
              newScript.async = false;
              document.head.appendChild(newScript);
            } else {
              newScript.textContent = script.textContent;
              document.body.appendChild(newScript);
            }
          });
        })
        .catch(error => {
          modalBody.innerHTML = `<div class="alert alert-danger">Failed to load form. Please try again later.</div>`;
          console.error('Error loading modal content:', error);
        });
    });
  });
});

// ✅ Global function exe1 (move it out of modal into main JS)
function exe1() {
  const insPerson = window.insuranceCustomer || {};
  const exe1Val = $('#executive_1').val();
  const exe2 = $('#executive_2');
  const exe3 = $('#executive_3');
  const exe4 = $('#executive_4');
  const exe5 = $('#executive_5');
  const exe6 = $('#executive_6');
  const accident = $('#accident');

  console.log('Selected Executive:', exe1Val);

  if (exe1Val !== '') {
    $('#sub-executive-group').show();
    exe2.val(exe1Val);
    exe3.val(exe1Val);
    exe4.val(exe1Val);
    exe5.val(exe1Val);

    if (insPerson.insurance_type === 'MACT') {
      accident.show();
      exe6.val(exe1Val);
    } 
    else
    {
      accident.hide();
      exe6.val('');
    }
  } else {
    $('#sub-executive-group').hide();
  }
}



document.addEventListener('DOMContentLoaded', function () {
  document.querySelectorAll('.open-view-modal').forEach(button => {
    button.addEventListener('click', function () {
      const url = this.getAttribute('data-url');
      const modal = new bootstrap.Modal(document.getElementById('viewModal'));
      const modalBody = document.getElementById('viewModalBody');

      modalBody.innerHTML = `
        <div class="text-center py-5">
          <div class="spinner-border text-info" role="status"></div>
        </div>
      `;

      modal.show();

      fetch(url)
        .then(response => {
          if (!response.ok) throw new Error('Failed to load');
          return response.text();
        })
        .then(html => {
          modalBody.innerHTML = html;
        })
        .catch(error => {
          modalBody.innerHTML = `<div class="alert alert-danger">Error loading details. Try again.</div>`;
          console.error('Error loading view modal:', error);
        });
    });
  });
});



</script>

@endsection
