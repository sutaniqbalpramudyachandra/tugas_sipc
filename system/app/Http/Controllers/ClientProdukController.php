<?php

namespace App\Http\Controllers;
use App\Models\Produk;
use App\Models\User;

class ClientProdukController extends Controller
{
	function index(){
		$data['list_produk'] = Produk::paginate(12);
		return view('customer.home', $data);
	}

	function showProduk(){
		$data['list_produk'] = Produk::all();
		return view('customer.produk', $data);
	}

	function show(Produk $produk){
		$data['produk'] = $produk;
		return view('customer.produk_single', $data);
	}

	function kontak(){
		return view('customer.kontak');
	}
	function filter(){
		$nama = request('nama');
		$data['show_produk'] = Produk::where('nama_produk', 'like', "%$nama%")->get();
		$data['nama'] = $nama;
		return view('customer.produk', $data);
	}
}