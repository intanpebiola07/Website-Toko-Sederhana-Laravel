@extends('main')
@section('title')
    Home
@endsection
@section('content')
<div id="gambar" class="carousel slide" data-bs-ride="carousel" class="container-sm">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="{{url('images/gambarone.png')}}" style="height: 350px" class="d-block w-100" alt="gambar 1">
    </div>
    <div class="carousel-item">
      <img src="{{url('images/gambartwo.png')}}" style="height: 350px" class="d-block w-100" alt="gambar 2">
    </div>
    <div class="carousel-item">
      <img src="{{url('images/gambarthree.png')}}" style="height: 350px" class="d-block w-100" alt="gambar 3">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#gambar" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Gambar Sebelumnya</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#gambar" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Gambar Sesudah</span>
  </button>
</div>
<div class="container mt-4">
    <div class="fs-5 mb-3">
      <i class="bi bi-box"></i>
       <strong>Our Product</strong>
  </div>
    
    <div class="row">    
        @foreach($acakproduct as $item)
        <div class="col-md-3 mb-3" >
            <div class="card" {{$acakproduct}}>
                <img src="{{url('images')}}/{{$item->photo}}" alt="" class="img-fluid">
                <div class="p-2">
                    <h5>{{$item->name}}</h5>
                    <h6>Rp{{number_format($item->price)}}</h6>
                    <div>
                        <small class="text-secondary">
                            {{$item->seller->name}}
                        </small>
                    </div>
                    <a href="https://api.whatsapp.com/send?phone=6289687192299&text={{urlencode("Halo saya mau beli $item->name")}}" class="btn btn-success w-100">
                        <i class="bi bi-whatsapp"></i> BUY
                    </a>
                </div>
            </div>
        </div>
        @endforeach
  </div>
@endsection