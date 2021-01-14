<p>
							
	{{$produk->harga}}
							
	Stok : {{$produk->stok}} |
	Berat : {{$produk->berat}}kg|
	Seller : {{$produk->seller->nama}} |
	Tanggal Produksi : {{$produk->created_at->diffForHumans()}}
	</p>
	<p>
		{!! nl2br($produk->deskripsi) !!}
							</p>