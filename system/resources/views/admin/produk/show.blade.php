@extends('admin.template.base')

@section('content')
<div class="container">
	<div class="row">
		<div class="col-md-12 mt-5">
			<div class="card">
				<div class="card-header">
					Detail Data Produk
				</div>
				<div class="card-body">
					<table class="table">
						<tbody>
							<div class="form-group">
							<label for="" class="control-label">Nama</label>
							<h3>{{$produk->nama_produk}}</h3>
							</div>
							
							<p>
							<div class="form-group">
							<label for="" class="control-label">Harga</label>
							<h5>Rp.{{number_format($produk->harga)}}</h5>
							</div>
							Stok : {{$produk->stok}} |
							Berat : {{$produk->berat}} |
							Seller : {{$produk->seller->nama}}
							</p>
							<p>
								{!! nl2br($produk->deskripsi) !!}
							</p>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>

@endsection