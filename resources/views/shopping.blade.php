@extends('main')
@section('title')
    Shopping    
@endsection
@section('content')
    <div class="container-fluid">
        <br>
        <h4>Catalog</h4>
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="{{url('/')}}">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Shopping Form</li>
            </ol>
        </nav>
    </div>
    <div class="row">
        <div class="col-md-4 offset-md-4">
            <div class="card mt-3">
                <div class="card-header">
                    <strong>BUYER</strong> DETAIL
                </div>
                <div class="card-body">
                    @if($errors->any())
                    <div class="alert alert-danger">
                        <ul class="mb-0">
                            @foreach($errors->all() as $error)
                            <li>{{$error}}</li>
                            @endforeach
                        </ul>
                    </div>
                    @endif
                    @if (Session::has('msg'))
                        <div class="alert alert-success">
                            {{Session::get('msg')}}
                        </div>
                    @endif
                    <form action="{{url('shopping')}}" method="post">
                        @csrf
                        <div class="mb-3">
                            <label for="name"><strong>Full Name</strong></label>
                            <input value="{{old('name')}}" type="text" name="name" id="name" class="form-control @error('name') is-invalid @enderror" placeholder="Input your name ...">                       
                        </div>
                        <div class="mb-3">
                            <label for="whatsapp"><strong>Whatsapp</strong></label>
                            <input value="{{old('whatsapp')}}" type="text" name="whatsapp" id="whatsapp" class="form-control @error('whatsapp') is-invalid @enderror" placeholder="Input your whatsapp number ...">
                        </div>
                        <div class="mb-3">
                            <label for="address"><strong>Address</strong></label>
                            <textarea name="address" id="address" class="form-control @error('address') is-invalid @enderror" placeholder="Input your address ...">{{old('address')}}</textarea>
                        </div>
                <div class="card-header">
                    <strong>BUYER</strong> DETAIL
                </div>
                <div class="card-body">
                        <div class="mb-3">
                            <label for="product">Choose Product</label>
                                <select name="product" id="product" class="form-control">
                                    <option value="">Choose Product</option>
                                    @foreach ($data as $product)
                                        <option value="{{$product->id}}">{{$product->name}} - {{number_format($product->price)}}</option>                                    
                                    @endforeach                                
                                </select>
                            </div>
                            <div class="mb-3">
                                <label for="qty"><strong>Qty</strong></label>
                                <input value="{{old('qty')}}" type="number" name="qty" id="qty" class="form-control @error('qty') is-invalid @enderror" placeholder="Input qty ...">
                            </div>
                            <div class="mb-3">
                                <label for="note"><strong>Note</strong></label>
                        <textarea name="note" id="note" class="form-control @error('note') is-invalid @enderror" placeholder="Input your note *) If Needed">{{old('note')}}</textarea>
                    </div>
                </div> 
                <button type="submit" class="btn btn-primary btn-block">
                    <i class="bi bi-bag-check"></i> BUY
                </button>
            </form>
        </div>
    </div>
@endsection