@extends('main')
@section('title')
    Register
@endsection
@section('content')
<div class="container">
    <br>
    <h4>Add Category</h4>
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{url('/')}}">Home</a></li>
            <li class="breadcrumb-item active"><a href="{{url('category')}}">Category</a></li>
            <li class="breadcrumb-item active" aria-current="page">Add</li>

        </ol>
    </nav>
</div>
<div class="row">
    <div class="col-md-4 offset-md-4">
        <div class="card mt-3">
            <div class="card-header">
                Add <strong>Form</strong>
            </div>
            <div class="card-body">
                @if (Session::has('msg'))
                    <div class="alert alert-success">
                        {{Session::get('msg')}}
                    </div>
                @endif
                
                <form action="{{url('formcategory')}}" method="post">

                    @csrf

                    <div class="mb-3">
                        <label for="name">Name</label>
                        <input value="{{old('name')}}" type="text" name="name" id="name" class="form-control @error('name') is-invalid @enderror" placeholder="Type full name ...">
                        @error('name')
                        <div class="invalid-feedback">
                            {{$message}}
                        </div>
                        @enderror
                    </div>
                    
                    <button type="submit" class="btn btn-primary">
                        <i class="bi bi-box-arrow-in-right"></i> Process
                    </button>
                    <button type="reset" class="btn btn-light">
                        Reset
                    </button>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection