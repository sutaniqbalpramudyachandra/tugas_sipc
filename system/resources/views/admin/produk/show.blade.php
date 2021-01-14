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
							
							@include('admin.produk.show.detail')

							<p>
								<img style="width:100%" src="{{url("public/$produk->foto")}}" >
							</p>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>

@endsection