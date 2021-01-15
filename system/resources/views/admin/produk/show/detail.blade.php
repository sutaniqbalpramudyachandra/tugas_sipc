	<p>
		<!-- <div class="form-group">
	<	label for="" class="control-label">Harga</label>
		<h5> -->
		Rp.{{number_format($produk->harga)}}<!-- </h5> -->
		Stok : {{$produk->stok}} |
		Berat : {{$produk->berat}} kg|
		Seller : {{$produk->seller->nama}} |  
		tanggal prodak : {{$produk->created_at->diffForHumans()}}
	</p>
	