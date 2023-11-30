@extends('main')
@section('title')
    Category
@endsection
@section('content')
    <div class="container">
        <br>
        <h4>Category</h4>
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="{{url('/')}}">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Category</li>
            </ol>
        </nav>
        <div class="card">
            <div class="card-header">
                <div class="d-flex">
                    <div class="w-100 pt-2"><strong>Data </strong>Table</div>
                    <div class="w-100 text-end">
                        <a href="{{url('formcategory')}}" class="btn btn-danger">
                            <i class="bi bi-plus-circle"></i> New Data
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="card-body">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th width="20">No</th>
                        <th>Name</th>
                        <th width="200">ACT</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($data as $item)
                    <tr>
                        <td>{{$loop->iteration}}</td>
                        <td>{{$item->name}}</td>
                        <td>
                            <a href="{{url('category-edit')}}/{{$item->id}}" class="btn btn-warning btn-sm">
                                <i class="bi bi-pencil"></i> Edit
                            </a>
                            <a href="{{route('delctgr',['id'=>$item->id])}}" class="btn btn-danger btn-sm"
                            onclick="return confirm('Are u Sure?');">
                                
                                <i class="bi bi-trash"></i> Delete
                            </a>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
@endsection