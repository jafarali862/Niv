<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/home">
        <div class="sidebar-brand-icon rotate-n-15">
            <i class="fas fa-shield-alt"></i>
        </div>
        <div class="sidebar-brand-text mx-3">Insurance</div>
    </a>
    
    <!-- Divider -->
    <hr class="sidebar-divider my-0">
    
    <!-- Nav Item - Dashboard -->
    <li class="nav-item active">
        <a class="nav-link" href="/home">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Dashboard</span>
        </a>
    </li>
    
    <!-- Nav Item - Case Management -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#caseManagement"
            aria-expanded="true" aria-controls="caseManagement">
            <i class="fas fa-fw fa-briefcase"></i>
            <span>Case Management</span>
        </a>
        <div id="caseManagement" class="collapse" aria-labelledby="headingUtilities"
            data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <a class="collapse-item" href="{{route('case.index')}}">Case List</a>
                <a class="collapse-item" href="{{route('insurance.create')}}">Add Case</a>
                <a class="collapse-item" href="{{route('assigned.case')}}">Assigned Case</a>
                <a class="collapse-item" href="">Track Case</a>
            </div>
        </div>
    </li>
    
    <!-- Nav Item - Report Management -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#reportManagement"
            aria-expanded="true" aria-controls="reportManagement">
            <i class="fas fa-fw fa-file-alt"></i>
            <span>Report Management</span>
        </a>
        <div id="reportManagement" class="collapse" aria-labelledby="headingUtilities"
            data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <a class="collapse-item" href="{{route('request.report')}}">Report Requests</a>
                <a class="collapse-item" href="">Report List</a>
                <a class="collapse-item" href="">Add Report</a>
                <a class="collapse-item" href="">All Final Report</a>
            </div>
        </div>
    </li>
    

    <!-- Nav Item - Tables -->
    <li class="nav-item">
        <a class="nav-link" href="{{route('approval.request')}}">
            <i class="fas fa-fw fa-paper-plane"></i>
            <span>Approval Request</span>
        </a>
    </li>

</ul>