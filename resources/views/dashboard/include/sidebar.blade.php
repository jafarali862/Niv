<style>

  /* sidebar-custom.css */

/* Base Sidebar */
.sidebar {
    background: linear-gradient(180deg, #1a1d2e, #0c0f1a);
    width: 250px;
    padding-top: 20px;
    font-family: 'Segoe UI', sans-serif;
}

/* Sidebar Brand */
.sidebar .sidebar-brand {
    font-weight: bold;
    color: #fff;
    font-size: 20px;
    padding: 10px 20px;
}

.sidebar .sidebar-brand img {
    max-width: 40px;
    border-radius: 6px;
    margin-right: 10px;
}

/* Nav Items */
.sidebar .nav-item {
    margin-bottom: 5px;
}

.sidebar .nav-link {
    color: #d1d3e2;
    padding: 12px 20px;
    display: flex;
    align-items: center;
    transition: all 0.3s ease-in-out;
    border-left: 4px solid transparent;
}

.sidebar .nav-link:hover {
    background-color: #343a40;
    color: #fff;
    border-left: 4px solid #4e73df;
}

.sidebar .nav-item.active .nav-link {
    background-color: #4e73df;
    color: #fff;
    font-weight: 600;
}

/* Icons */
.sidebar .nav-link i {
    margin-right: 10px;
    font-size: 16px;
}

/* Collapse Inner Items */
.collapse-inner .collapse-item {
    padding: 8px 25px;
    color: #6c757d;
    font-size: 14px;
    transition: background 0.2s ease;
}

.collapse-inner .collapse-item:hover {
    background-color: #f8f9fc;
    color: #4e73df;
    font-weight: 500;
}

/* Divider */
.sidebar-divider {
    border-top: 1px solid rgba(255, 255, 255, 0.1);
    margin: 10px 0;
}

/* Toggler Button */
#sidebarToggle {
    background-color: #4e73df;
    color: white;
}

/* Scrollbar */
.sidebar::-webkit-scrollbar {
    width: 6px;
}
.sidebar::-webkit-scrollbar-thumb {
    background: rgba(255, 255, 255, 0.2);
    border-radius: 10px;
}


</style>

<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="{{ route('dashboard') }}">
        <div class="sidebar-brand-icon">
        @if($companyLogo && $companyLogo->logo)
            <img src="{{ asset('storage/' . $companyLogo->logo) }}" alt="Company Logo" class="w-50">
        @else
            <img src="{{ asset('dashboard/img/icon.png') }}" alt="" class="w-50">
        @endif
            
        </div>
        <div class="sidebar-brand-text" style="margin-left:-25px">Insurance</div>
    </a>

    <!-- Divider -->
    <hr class="sidebar-divider my-0">

    <!-- Nav Item - Dashboard -->
    <li class="nav-item active">
        <a class="nav-link" href="{{ route('dashboard') }}">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Dashboard</span>
        </a>
    </li>

    <!-- Nav Item - User Management -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#userManagement"
            aria-expanded="true" aria-controls="userManagement">
            <i class="fas fa-fw fa-users-cog"></i>
            <span>User Management</span>
        </a>
        <div id="userManagement" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <a class="collapse-item" href="{{ route('user.create') }}">Add User</a>
                <a class="collapse-item" href="{{ route('user.list') }}">User List</a>
            </div>
        </div>
    </li>

    <!-- Nav Item - Insurance Company -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#insuranceCompany"
            aria-expanded="true" aria-controls="insuranceCompany">
            <i class="fas fa-fw fa-building"></i>
            <span>Insurance Company</span>
        </a>
        <div id="insuranceCompany" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <a class="collapse-item" href="{{ route('company.create') }}">Add Company</a>
                <a class="collapse-item" href="{{ route('company.list') }}">Company List</a>

                   <!-- <a class="collapse-item" href="{{ route('company.create_question') }}">Add Questionnaire</a> -->
                       <a class="collapse-item" href="{{ route('questions.index_question') }}">Questionnaire List</a> 
            </div>
        </div>
    </li>

    <!-- Nav Item - Case Management -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#caseManagement"
            aria-expanded="true" aria-controls="caseManagement">
            <i class="fas fa-fw fa-briefcase"></i>
            <span>Case Management</span>
        </a>
        <div id="caseManagement" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <a class="collapse-item" href="{{ route('insurance.create') }}">Add Case</a>
                <a class="collapse-item" href="{{ route('case.index') }}">Case List</a>
                <a class="collapse-item" href="{{ route('assigned.case') }}">Assigned Case</a>
                {{-- <a class="collapse-item" href="">Track Case</a> --}}
            </div>
        </div>
    </li>

    <!-- Nav Item - Customer Management -->
    {{-- <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#customerManagement"
            aria-expanded="true" aria-controls="customerManagement">
            <i class="fas fa-fw fa-user"></i>
            <span>Customer Management</span>
        </a>
        <div id="customerManagement" class="collapse" aria-labelledby="headingUtilities"
            data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <a class="collapse-item" href="">Customer List</a>
                <a class="collapse-item" href="">Add Customer</a>
            </div>
        </div>
    </li> --}}

    <!-- Nav Item - Report Management -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="{{ route('request.report') }}"  data-target="#reportManagement"
            aria-expanded="true" aria-controls="reportManagement">
            <i class="fas fa-fw fa-file-alt"></i>
            <span>Report Management</span>
        </a>
     
    </li>

    <!-- Nav Item - Tables -->
    <li class="nav-item">
        <a class="nav-link" href="{{route('odometer.list')}}">
            <i class="fas fa-fw fa-bicycle"></i>
            <span>Odometer Reading</span>
        </a>
    </li>


    <li class="nav-item">
        <a class="nav-link" href="{{ route('approval.request') }}">
            <i class="fas fa-fw fa-paper-plane"></i>
            <span>Approval Request</span>
        </a>
    </li>

    <li class="nav-item">
        <a class="nav-link" href="{{ route('password.reset.request') }}">
            <i class="fa fa-lock" aria-hidden="true"></i>
            <span>Passord Reset Request</span>
        </a>
    </li>
    
    
    <li class="nav-item">
        <a class="nav-link" href="{{route('logos')}}">
        <i class="fab fa-pied-piper"></i>
            <span>Company Management</span>
        </a>
    </li>

    <li class="nav-item">
        <a class="nav-link" href="{{ route('final.report.create') }}">
            <i class="fa fa-fw fa-file" aria-hidden="true"></i>
            <span>Make Final Report</span>
        </a>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">

    <!-- Sidebar Toggler (Sidebar) -->
    <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>

</ul>
