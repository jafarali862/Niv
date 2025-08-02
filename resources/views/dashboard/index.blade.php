<?php
$user = Auth::user();
?>
<style>
    .card {
        transition: transform 0.3s ease, box-shadow 0.3s ease;
    }

    .card:hover {
        transform: scale(1.01);
        box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
    }

    .chart-area {
        position: relative;
        height: 400px;
        width: 100%;
    }

    /* .orange>.bg-orange {
        background-color: #fa690fd2;

    } */

    .orange>.border-left-orange {
        border-left: 4px solid #fa690fd2;
    }

    .text-orange {
        color: #fa690fd2;
    }

    /* .magenta>.bg-magenta {
        background-color: #A30DA8;
    } */


    .magenta>.border-left-magenta {
        border-left: 4px solid #A30DA8;
    }


    .text-magenta {
        color: #A30DA8;
    }

    /* .fuchsia>.bg-fuchsia {
        background-color: #fc036fc5;
    } */

    .fuchsia>.border-left-fuchsia {
        border-left: 4px solid #fc036fc5;
    }

    .text-fuchsia {
        color: #fc036fc5;
    }


    .chart-area canvas,
.chart-pie canvas {
    width: 100% !important;
    height: auto !important;
}

.card-header h5 {
    font-size: 1.125rem;
    font-weight: 600;
}

.badge {
    font-size: 0.9rem;
    padding: 0.5rem 0.75rem;
}

.card h6 {
    font-size: 0.85rem;
    letter-spacing: 0.5px;
}

.card h4 {
    font-size: 1.5rem;
}

.card-body.shadow-sm {
    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.08);
}


.border-pink {
    border-left: 0.25rem solid #e83e8c !important;
}
.text-pink {
    color: #e83e8c !important;
}


</style>


@section('title', 'Home')
@extends('dashboard.layout.app')
@section('content')
    <div class="container-fluid">
        <!-- Content Row -->
        @if ($user->role == 1)
            {{-- <div class="row">
                <!-- Total Insurance Companies Card Example -->
                <div class="col-xl-3 col-md-6 mb-4 ">
                    <div class="card shadow h-100 py-2 bg-danger">
                        <div class="card-body ">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-2">
                                    <div class="text-xs font-weight-bold text-uppercase mb-1">
                                        Total Insurance Companies
                                    </div>
                                    <div class="h5 mb-0 font-weight-bold ">{{ $totalCompany }}</div>
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-building fa-2x mr-2"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Total Employee Card Example -->
                <div class="col-xl-3 col-md-6 mb-4">
                    <div class="card shadow h-100 py-2 bg-warning">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-2">
                                    <div class="text-xs font-weight-bold text-uppercase mb-1">
                                        Total Employees
                                    </div>
                                    <div class="h5 mb-0 font-weight-bold">{{ $totalEmployee }}</div>
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-users fa-2x mr-2"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


                <!-- Total Cases Card Example -->
                <div class="col-xl-3 col-md-6 mb-4">
                    <div class="card shadow h-100 py-2 bg-primary">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-2">
                                    <div class="text-xs font-weight-bold text-uppercase mb-1">
                                        Total Cases
                                    </div>
                                    <div class="h5 mb-0 font-weight-bold">{{ $totalCase }}</div>
                                </div>

                                
                                <div class="col-auto">
                                    <i class="fas fa-clipboard-list fa-2x mr-2"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Pending Investigations Card Example -->
                <div class="col-xl-3 col-md-6 mb-4">
                    <div class="card shadow h-100 py-2 bg-success">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-2">
                                    <div class="text-xs font-weight-bold text-uppercase mb-1">
                                        Total Pending Investigations
                                    </div>
                                    <div class="h5 mb-0 font-weight-bold ">{{ $pendingCase }}</div>
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-clock fa-2x mr-2"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <!-- Total Complete Investigation Card Example -->
                <div class="col-xl-3 col-md-6 mb-4">
                    <div class="card shadow h-100 py-2 bg-info">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-2">
                                    <div class="text-xs font-weight-bold text-uppercase mb-1">
                                        Total Complete Investigation
                                    </div>
                                    <div class="h5 mb-0 font-weight-bold ">{{ $completeCase }}</div>
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-check-circle fa-2x mr-2"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Total Assigned Cases Card Example -->
                <div class="col-xl-3 col-md-6 mb-4 magenta">
                    <div class="card shadow h-100 py-2 bg-magenta">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-2">
                                    <div class="text-xs font-weight-bold text-uppercase mb-1">
                                        Total Assigned Cases
                                    </div>
                                    <div class="h5 mb-0 font-weight-bold ">{{ $assignedCase }}</div>
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-clipboard-check fa-2x mr-2"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Total Submitted Cases Card Example -->
                <div class="col-xl-3 col-md-6 mb-4 orange">
                    <div class="card shadow h-100 py-2 bg-orange">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-2">
                                    <div class="text-xs font-weight-bold text-uppercase mb-1">
                                        Total Submitted Cases
                                    </div>
                                    <div class="h5 mb-0 font-weight-bold ">{{ $totalSubmittedCase }}</div>
                                </div>


                                
                                <div class="col-auto">
                                    <i class="fas fa-paperclip fa-2x mr-2"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Today Submitted Cases Card Example -->
                <div class="col-xl-3 col-md-6 mb-4 fuchsia">
                    <div class="card shadow h-100 py-2 bg-fuchsia">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-2">
                                    <div class="text-xs font-weight-bold text-uppercase mb-1">
                                        Today Submitted Cases
                                    </div>
                                    <div class="h5 mb-0 font-weight-bold ">{{ $todaySubmittedCase }}</div>
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-calendar-day fa-2x mr-2"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div> --}}

            


            <div class="container-fluid py-3">
    <div class="row g-4">
        <!-- Insurance Companies -->
        <div class="col-md-6 col-xl-3">
            <a href="{{ route('company.list') }}" class="text-decoration-none">
                <div class="card shadow border border-success h-100">
                    <div class="card-body shadow-sm p-3 rounded">
                        <div class="d-flex justify-content-between align-items-center">
                            <div>
                                <h6 class="text-uppercase text-success fw-bold mb-2">Insurance Companies</h6>
                                <h4 class="fw-bold text-dark">{{ $totalCompany }}</h4>
                            </div>
                            <div class="text-success fs-2">
                                <i class="fas fa-building"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </a>
        </div>

        <!-- Total Employees -->
        <div class="col-md-6 col-xl-3">
            <a href="{{ route('user.list') }}" class="text-decoration-none">
                <div class="card shadow border border-warning h-100">
                    <div class="card-body shadow-sm p-3 rounded">
                        <div class="d-flex justify-content-between align-items-center">
                            <div>
                                <h6 class="text-uppercase text-warning fw-bold mb-2">Total Employees</h6>
                                <h4 class="fw-bold text-dark">{{ $totalEmployee }}</h4>
                            </div>
                            <div class="text-warning fs-2">
                                <i class="fas fa-users"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </a>
        </div>

        <!-- Total Cases -->
        <div class="col-md-6 col-xl-3">
            <a href="{{ route('case.index') }}" class="text-decoration-none">
                <div class="card shadow border border-primary h-100">
                    <div class="card-body shadow-sm p-3 rounded">
                        <div class="d-flex justify-content-between align-items-center">
                            <div>
                                <h6 class="text-uppercase text-primary fw-bold mb-2">Total Cases</h6>
                                <h4 class="fw-bold text-dark">{{ $totalcaseCount }}</h4>
                            </div>
                            <div class="text-primary fs-2">
                                <i class="fas fa-clipboard-list"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </a>
        </div>

        <!-- Pending Investigations -->
        <div class="col-md-6 col-xl-3">
            <a href="{{ route('case.index') }}" class="text-decoration-none">
                <div class="card shadow border border-danger h-100">
                    <div class="card-body shadow-sm p-3 rounded">
                        <div class="d-flex justify-content-between align-items-center">
                            <div>
                                <h6 class="text-uppercase text-danger fw-bold mb-2">Pending Investigations</h6>
                                <h4 class="fw-bold text-dark">{{ $totalcaseCount }}</h4>
                            </div>
                            <div class="text-danger fs-2">
                                <i class="fas fa-clock"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </a>
        </div>
    </div>
</div>



<div class="container-fluid py-3">
    <div class="row g-4">
        <!-- Total Complete Investigations -->
        <div class="col-md-6 col-xl-3">
            <div class="card shadow border border-info h-100">
                <div class="card-body shadow-sm p-3 rounded">
                    <div class="d-flex justify-content-between align-items-center">
                        <div>
                            <h6 class="text-uppercase text-info fw-bold mb-2">Complete Investigations</h6>
                            <h4 class="fw-bold text-dark">{{ $completeCase }}</h4>
                        </div>
                        <div class="text-info fs-2">
                            <i class="fas fa-check-circle"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Assigned Cases -->
        <div class="col-md-6 col-xl-3">
            <a href="{{ route('assigned.case') }}" class="text-decoration-none">
                <div class="card shadow border border-secondary h-100">
                    <div class="card-body shadow-sm p-3 rounded">
                        <div class="d-flex justify-content-between align-items-center">
                            <div>
                                <h6 class="text-uppercase text-secondary fw-bold mb-2">Assigned Cases</h6>
                                <h4 class="fw-bold text-dark">{{ $assignedCase }}</h4>
                            </div>
                            <div class="text-secondary fs-2">
                                <i class="fas fa-clipboard-check"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </a>
        </div>

        <!-- Submitted and Fake Cases (Two in One) -->
        <div class="col-md-6 col-xl-3">
            <div class="card shadow border border-warning h-100">
                <div class="card-body shadow-sm p-3 rounded">
                    <div class="row g-3">
                        <div class="col-6">
                            <a href="{{ route('assigned.case') }}" class="text-decoration-none">
                                <h6 class="text-uppercase text-warning fw-bold mb-1">Submitted Cases</h6>
                                <h5 class="fw-bold text-dark">{{ $totalSubmittedCase }}</h5>
                            </a>
                        </div>

                  <div class="col-6">
    <a href="{{ route('fake.cases') }}" class="text-decoration-none">
        <div class="d-flex justify-content-between align-items-center">
            <div>
                <h6 class="text-uppercase text-danger fw-bold mb-1 mb-0">Fake Cases</h6>
                <h5 class="fw-bold text-dark mb-0">{{ $fakeCase }}</h5>
            </div>
            <div class="text-muted">
                <i class="fas fa-paperclip fa-lg"></i>
            </div>
        </div>
    </a>
</div>



                    </div>
                  
                </div>
            </div>
        </div>

        <!-- Today Submitted Cases -->
        <div class="col-md-6 col-xl-3">
            <a href="{{ route('case.today') }}" class="text-decoration-none">
                <div class="card shadow border border-pink h-100">
                    <div class="card-body shadow-sm p-3 rounded">
                        <div class="d-flex justify-content-between align-items-center">
                            <div>
                                <h6 class="text-uppercase text-danger fw-bold mb-2">Today Submitted Cases</h6>
                                <h4 class="fw-bold text-dark">{{ $todaySubmittedCase }}</h4>
                            </div>
                            <div class="text-danger fs-2">
                                <i class="fas fa-calendar-day"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </a>
        </div>
    </div>
</div>

           


                <div class="row g-4">
    <!-- Area Chart -->
    <div class="col-lg-8">
        <div class="card border-0 shadow-sm h-100">
            <div class="card-header bg-primary text-white d-flex justify-content-between align-items-center">
                <h5 class="mb-0">📈 Total Cases for {{ $currentYear }}</h5>
            </div>
            <div class="card-body">
                <div class="chart-area">
                    <canvas id="myAreaChart" height="200"></canvas>
                </div>
            </div>
        </div>
    </div>

    <!-- Pie Chart -->
    <div class="col-lg-4">
        <div class="card border-0 shadow-sm h-100">
            <div class="card-header bg-success text-white">
                <h5 class="mb-0">📊 Total Case Status</h5>
            </div>
            <div class="card-body">
                <div class="chart-pie pb-3">
                    <canvas id="PieChart" height="200"></canvas>
                </div>
                <div class="text-center mt-3">
                    <span class="badge bg-primary me-2">
                        <i class="fas fa-circle me-1"></i> Complete: <strong id="completeCount">{{ $completeCase }}</strong>
                    </span>
                    <span class="badge bg-danger">
                        <i class="fas fa-circle me-1"></i> Pending: <strong id="pendingCount">{{ $pendingCase }}</strong>
                    </span>
                </div>
            </div>
        </div>
    </div>
</div>




            {{-- <div class="row">
                <!-- Area Chart -->
                <div class="col-xl-8 col-lg-7">
                    <div class="card shadow mb-4">
                        <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                            <h6 class="m-0 font-weight-bold text-primary">Total Cases for {{ $currentYear }}</h6>
                        </div>
                        <div class="card-body">
                            <div class="chart-area">
                                <canvas id="myAreaChart"></canvas>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Pie Chart -->
                <div class="col-xl-4 col-lg-5">
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Total Case Status</h6>
                        </div>
                        <div class="card-body">
                            <div class="chart-pie pt-4 pb-2">
                                <canvas id="PieChart"></canvas>
                            </div>
                            <div class="mt-4 text-center small">
                                <span class="mr-2">
                                    <i class="fas fa-circle text-primary"></i> Complete: <span
                                        id="completeCount">{{ $completeCase }}</span>
                                </span>
                                <span class="mr-2">
                                    <i class="fas fa-circle text-danger"></i> Pending: <span
                                        id="pendingCount">{{ $pendingCase }}</span>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div> --}}
        @endif
    </div>
    <!-- /.container-fluid -->

    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script>
        const ctx = document.getElementById('myAreaChart').getContext('2d');

        const data = {
            labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
            datasets: [{
                label: 'Total Cases',
                data: @json($casesCount), // Use the data passed from the controller
                backgroundColor: 'rgba(252, 3, 111, 0.3)',
                borderColor: 'rgba(252, 3, 111, 1)',
                borderWidth: 2,
                fill: true,
                tension: 0.3, // Increase tension for a wave-like effect
            }]
        };

        const config = {
            type: 'line', // Line chart to represent wave
            data: data,
            options: {
                responsive: true,
                maintainAspectRatio: false,
                plugins: {
                    legend: {
                        display: true,
                        labels: {
                            font: {
                                size: 14,
                            },
                        },
                    },
                    tooltip: {
                        mode: 'index',
                        intersect: false,
                    },
                },
                scales: {
                    y: {
                        beginAtZero: true,
                        max: 100,
                        ticks: {
                            stepSize: 10,
                            font: {
                                size: 12,
                            },
                        },
                    },
                    x: {
                        display: true,
                        ticks: {
                            font: {
                                size: 12,
                            },
                        },
                    },
                },
            },
        };

        const myAreaChart = new Chart(ctx, config);


        // Pie Chart
        const completeCount = {{ $completeCase }};
        const pendingCount = {{ $pendingCase }};
        const ctxPie = document.getElementById('PieChart').getContext('2d');
        const myPieChart = new Chart(ctxPie, {
            type: 'pie',
            data: {
                labels: ['Complete', 'Pending'],
                datasets: [{
                    data: [completeCount, pendingCount],
                    backgroundColor: ['#007bff', '#FF0000'],
                }],
            },
            options: {
                maintainAspectRatio: false,
                responsive: true,
            },
        });
    </script>
@endsection
