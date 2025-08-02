@extends('dashboard.layout.app')
@section('title', 'Edit Company')

@section('content')
    <div class="container-fluid">
        <h1 class="h3 mb-4 text-gray-800 text-center">Edit Company</h1>

        <div class="row justify-content-center">
            <div class="col-lg-8 col-md-10">
                <div class="card border-0 shadow-lg rounded-lg">
                    <div class="card-header bg-primary text-white border-0 rounded-top">
                        <h6 class="m-0 font-weight-bold">Company Details</h6>
                    </div>
                    <div class="card-body">
                        <div id="successMessage" class="alert alert-success" style="display: none;"></div>
                       
                        <form method="POST" action="{{ route('company.update') }}" id="updateCompany">
                        @csrf
                        <input type="hidden" name="id" value="{{ $company->id }}" required>

                        <div class="mb-4">
                        <label for="name" class="form-label font-weight-bold">Company Name</label>
                        <input type="text" class="form-control border-0 rounded-pill shadow-sm" id="name" name="name" value="{{ old('name', $company->name) }}" required>
                        <span class="text-danger" id="name-error"></span>
                        </div>

                        <!-- <ul class="nav nav-tabs" id="insuranceTabs" role="tablist">
                        @foreach(['garage','driver','spot','meeting','accident'] as $tabId)
                        <li class="nav-item" role="presentation">
                        <button class="nav-link {{ $loop->first ? 'active' : '' }}" id="{{ $tabId }}-tab"
                        data-bs-toggle="tab" data-bs-target="#{{ $tabId }}" type="button" role="tab"
                        aria-controls="{{ $tabId }}" aria-selected="{{ $loop->first ? 'true' : 'false' }}">
                        {{ ucfirst($tabId) }} Data
                        </button>
                        </li>
                        @endforeach
                        </ul>

                        <div class="tab-content mt-3" id="tabContent">
                        @foreach(['garage','driver','spot','meeting','accident'] as $tabId)
                        <div class="tab-pane fade {{ $loop->first ? 'show active' : '' }}" id="{{ $tabId }}" role="tabpanel" aria-labelledby="{{ $tabId }}-tab"></div>
                        @endforeach
                        </div> -->


                        <ul class="nav nav-tabs" id="insuranceTabs" role="tablist">
                        @foreach(['garage','driver','spot','meeting','accident'] as $tabId)
                        <li class="nav-item" role="presentation">
                        <button class="nav-link {{ $loop->first ? 'active' : '' }}" id="{{ $tabId }}-tab"
                        data-bs-toggle="tab" data-bs-target="#{{ $tabId }}" type="button" role="tab"
                        aria-controls="{{ $tabId }}" aria-selected="{{ $loop->first ? 'true' : 'false' }}">
                        {{ ucfirst($tabId) }} Data
                        </button>
                        </li>
                        @endforeach
                        </ul>

                        <div class="tab-content mt-3" id="tabContent">
                        @foreach(['garage','driver','spot','meeting','accident'] as $tabId)
                        <div class="tab-pane fade {{ $loop->first ? 'show active' : '' }}"
                        id="{{ $tabId }}" role="tabpanel" aria-labelledby="{{ $tabId }}-tab">

                        {{-- Example required field for each tab --}}
                       

                        </div>
                        @endforeach
                        </div>


                        <div class="mb-4">
                        <label for="contact_person" class="form-label font-weight-bold">Contact Person</label>
                        <input type="text" class="form-control border-0 rounded-pill shadow-sm" id="contact_person" name="contact_person" value="{{ old('contact_person', $company->contact_person) }}" required>
                        <span class="text-danger" id="contact_person-error"></span>
                        </div>

                        <div class="mb-4">
                        <label for="email" class="form-label font-weight-bold">Email Address</label>
                        <input type="email" class="form-control border-0 rounded-pill shadow-sm" id="email" name="email" value="{{ old('email', $company->email) }}" required>
                        <span class="text-danger" id="email-error"></span>
                        </div>

                        <div class="mb-4">
                        <label for="phone" class="form-label font-weight-bold">Phone Number</label>
                        <input type="tel" class="form-control border-0 rounded-pill shadow-sm" id="phone" name="phone" value="{{ old('phone', $company->phone) }}" required>
                        <span class="text-danger" id="phone-error"></span>
                        </div>

                        <div class="mb-4">
                        <label for="address" class="form-label font-weight-bold">Address</label>
                        <textarea class="form-control border-0 rounded-lg shadow-sm" id="address" name="address" rows="4" required>{{ old('address', $company->address) }}</textarea>
                        <span class="address-danger" id="name-error"></span>
                        </div>

                        <div class="mb-4">
                        <label for="status" class="form-label font-weight-bold">Status</label>
                        <select class="form-select border-0 rounded-pill shadow-sm" id="status" name="status" required>
                        <option value="1" {{ old('status', $company->status) == '1' ? 'selected' : '' }}>Active</option>
                        <option value="0" {{ old('status', $company->status) == '0' ? 'selected' : '' }}>Inactive</option>
                        </select>
                        </div>
                        <div class="form-group">
                        <label for="place">Select Final Report Template</label> <span class="text-danger">*</span>
                        <select class="form-select" style="width: 200px;" id="selectTemplate" name="template">
                        <option value="" disabled <?= empty($company->template) ? 'selected' : '' ?>>Please select</option>

                        
                        
                        <option value="1" <?= $company->template == 1 ? 'selected' : '' ?>>Template 1</option>
                        <option value="2" <?= $company->template == 2 ? 'selected' : '' ?>>Template 2</option>
                        <option value="3" <?= $company->template == 3 ? 'selected' : '' ?>>Template 3</option>
                        <option value="4" <?= $company->template == 4 ? 'selected' : '' ?>>Template 4</option>
                        <option value="5" <?= $company->template == 5 ? 'selected' : '' ?>>Template 5</option>
                        <option value="6" <?= $company->template == 6 ? 'selected' : '' ?>>Template 6</option>
                        <option value="7" <?= $company->template == 7 ? 'selected' : '' ?>>Template 7</option>
                        <option value="8" <?= $company->template == 8 ? 'selected' : '' ?>>Template 8</option>
                        <option value="9" <?= $company->template == 9 ? 'selected' : '' ?>>Default Template</option>
                        </select>
                        <span class="address-danger" id="template-error"></span>
                        </div>

                        <div class="d-flex justify-content-between">
                        <button type="submit" class="btn btn-primary rounded-pill px-4">Update Company</button>
                        <a href="{{ route('company.list') }}" class="btn btn-outline-secondary rounded-pill px-4">Cancel</a>
                        </div>
                        </form>


            </div>
            </div>
            </div>
            </div>
            </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

    <script>
    window.existingSelections = @json($questionnaires);
    </script>

<script>
const categoryMap = {
    garage: 'garage_data',
    driver: 'driver_data',
    spot: 'spot_data',
    meeting: 'owner_data',
    accident: 'accident_person_data',
};

const existingSelections = window.existingSelections || {};

document.addEventListener('DOMContentLoaded', () => {
    const tabs = document.querySelectorAll('#insuranceTabs .nav-link');

    tabs.forEach(tab => {
        const tabId = tab.getAttribute('data-bs-target').substring(1);
        const dataCategory = categoryMap[tabId];

        // 🔁 Load questions when tab becomes active
        tab.addEventListener('shown.bs.tab', async () => {
            await loadTabQuestions(tabId, dataCategory);
        });

        tab.addEventListener('click', async () => {
            const tabPane = document.getElementById(tabId);
            const isActive = tab.classList.contains('active');
            const notLoaded = tabPane.dataset.loaded !== 'true';

            if (isActive && notLoaded) {
                await loadTabQuestions(tabId, dataCategory);
            }
        });
    });
});

async function loadTabQuestions(tabId, dataCategory) {
    const tabPane = document.getElementById(tabId);
    if (tabPane.dataset.loaded === 'true') return;

    try {
        const response = await fetch(`/questions/${dataCategory}`);
        const questions = await response.json();

        tabPane.innerHTML = `<h5>${dataCategory.replace('_', ' ').toUpperCase()} Insurance Questions</h5>`;

        questions.forEach(q => {
            const checked = existingSelections[tabId] && existingSelections[tabId][q.column_name] ? 'checked' : '';
            const colId = `check_${tabId}_${q.column_name}`;
            const isFile = q.input_type === 'file';

            let fileTypeInput = '';
            if (isFile && q.file_type) {
                fileTypeInput = `
                    <input type="hidden"
                        name="file_types[${tabId}][${q.column_name}]"
                        value="${q.file_type}">
                `;
            }

            tabPane.innerHTML += `
                <div class="form-check mb-3">
                    <input class="form-check-input" type="checkbox"
                        name="selected_questions[${tabId}][]"
                        value="${q.column_name}"
                        id="${colId}" ${checked}>

                    <input type="hidden"
                        name="question_types[${tabId}][${q.column_name}]"
                        value="${q.input_type}">

                    ${fileTypeInput}

                    <label class="form-check-label" for="${colId}">
                        ${q.question}
                    </label>
                </div>
            `;
        });

        tabPane.dataset.loaded = 'true';
    } catch (error) {
        tabPane.innerHTML = `<p class="text-danger">Could not load questions.</p>`;
        console.error('Error loading questions:', error);
    }
}
</script>





    <script>
        $(document).ready(function() {
            $('#updateCompany').on('submit', function(e) {
                e.preventDefault();

                $.ajax({
                    url: '{{ route('company.update') }}',
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
