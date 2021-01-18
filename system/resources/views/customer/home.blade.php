@extends('customer.base')

@section('content')
    <!-- ***** Fleet Starts ***** -->
    <section class="section" id="trainers">
        <div class="container">
            <br>
            <br>

            <div class="row">
                @foreach($list_produk as $produk)
                <div class="col-lg-4">
                    <div class="trainer-item">
                        <div class="image-thumb">
                            <img style="width:100%" src="{{url("public/$produk->foto")}}" >
                        </div>
                        <div class="down-content">
                            <span>
                                        Rp. {{number_format($produk->harga)}}
                                        Stok : {{$produk->stok}} |
                                        Berat : {{$produk->berat}} 
                                    
                            </span>
                            <h4>{{$produk->nama_produk}}</h4>

                            <ul class="social-icons">
                                <li class="btn btn-success float-right"><a href="{{url('produk_single' ,$produk->id)}}">+ Order</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>

            <br>
                
            <nav aria-label="Page navigation example">
                <div class="container">
                    <div class="col-md-12" style="text-align: center;">
                        <ul class="pagination justify-content-center">
                            {!! $list_produk->links() !!}
                        </ul>
                    </div>
                </div>
            </nav>

        </div>
    </section>
    <!-- ***** Fleet Ends ***** -->
@endsection