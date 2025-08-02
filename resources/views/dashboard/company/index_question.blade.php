@extends('dashboard.layout.app')
@section('title', 'Company List')

@section('content')
    <div class="container-fluid">
        <div class="text-right">
            <button class="btn btn-danger mr-2 mb-2" onclick="window.history.back()"><i class="fa fa-arrow-left"
                    aria-hidden="true"></i></button>
            <button class="btn btn-warning mr-2 mb-2" onclick="window.location.reload()"><i class="fa fa-spinner"
                    aria-hidden="true"></i></button>
            <a href="{{ route('company.create_question') }}" class="btn btn-primary mr-2 mb-2">
                <i class="fa fa-plus" aria-hidden="true"></i>
            </a>
        </div>
        <div class="card">
            <div class="card-header row">
                <div class='col-md-7'><h4>Questionnaire List</h4></div>
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
                <th>Question</th>
                <th>Input Type</th>
                <th>Data Category</th>
                <!-- <th>Column Name</th> -->
                <th>Actions</th>
            </tr>
        </thead>
               <?php $i = 1; ?>
        <tbody>
            @foreach($questions as $q)
            <tr>
                <td>{{ $q->question }}</td>
                <td>{{ $q->input_type }}</td>
                <td>{{ $q->data_category }}</td>
                <!-- <td>{{ $q->column_name }}</td> -->
                <td>
                    <a href="{{ route('questions.edit_question', $q->id) }}" class="btn btn-sm btn-primary">Edit</a>
                    <form action="{{ route('questions.destroy_question', $q->id) }}" method="POST" style="display:inline;">
                        @csrf
                        @method('DELETE')
                        <button onclick="return confirm('Are you sure?')" class="btn btn-sm btn-danger">Delete</button>
                    </form>
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>

                <div class="d-flex justify-content-center">
                    {{ $questions->links() }}
                </div>
            </div>
        </div>
    </div>
@endsection
