@extends('admin.template.base')
@section('content')
<div class="container">
	<div class="row">
		<div class="col-md-12 mt-5">
			<div class="card">
				<div class="card-header">
					Alamat
				</div>
				<div class="card-body">
					<div class="row">
						<div class="col-md-3">
							<label class="control-label">Provinsi</label>
							<select name="" class="form-control select2" onchange="gantiProvinsi(this.value)">
								<option value="">Pilih Provinsi</option>
								@foreach($list_provinsi as $provinsi)
									<option value="{{$provinsi->id}}">{{$provinsi->name}}</option>
								@endforeach
							</select>
						</div>
						<div class="col-md-3">
							<label class="control-label">Kabupaten</label>
							<select name="" class="form-control select2" id="kabupaten" onchange="gantiKabupaten(this.value)">
								<option value="">Pilih Provinsi Terlebih Dahulu</option>
									<option value=""></option>
							</select>
						</div>
						<div class="col-md-3">
							<label class="control-label">Kecamatan</label>
							<select name="" class="form-control select2" id="kecamatan" onchange="gantiKecamatan(this.value)">
								<option value="">Pilih Kabupaten Terlebih Dahulu</option>
									<option value=""></option>
							</select>
						</div>
						<div class="col-md-3">
							<label class="control-label">Desa</label>
							<select name="" class="form-control select2" id="desa">
								<option value="">Pilih Kecamatan Terlebih Dahulu</option>
									<option value=""></option>
							</select>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

@endsection

@push('script')
<script>
	function gantiProvinsi(id){
		// alert(id); /*untuk melihat id Provinsi*/
		$.get("api/provinsi/"+id, function(result){
			result = JSON.parse(result)
			option = ""
			for(item of result){
				option += `<option value="${item.id}">${item.name}</option>`;
			}
			$("#kabupaten").html(option)
		});
	}
	function gantiKabupaten(id){
		// alert(id); untuk melihat id Provinsi
		$.get("api/kabupaten/"+id, function(result){
			result = JSON.parse(result)
			option = ""
			for(item of result){
				option += `<option value="${item.id}">${item.name}</option>`;
			}
			$("#kecamatan").html(option)
		});
	}
	function gantiKecamatan(id){
		// alert(id); untuk melihat id Provinsi
		$.get("api/kecamatan/"+id, function(result){
			result = JSON.parse(result)
			option = ""
			for(item of result){
				option += `<option value="${item.id}">${item.name}</option>`;
			}
			$("#desa").html(option)
		});
	}
</script>
@endpush
<!-- @section('content')
<div class="container mt-5">	
	Jasa Pengiriman: <br>
	<div class="col-md-12 bg-danger">
		<div class="card ">
			<div class="card-header">
				<div class="form-check disabled">
				  <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios3" value="option3" disabled>
				  <label class="form-check-label" for="exampleRadios3">
				    Silahkan Pilih Ekspedisi
				  </label>
				</div>
				<div class="form-check">
				  <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
				  <label class="form-check-label" for="exampleRadios1">
				    JNE
				  </label>
				</div>
				<div class="form-check">
				  <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios2" value="option2">
				  <label class="form-check-label" for="exampleRadios2">
				    J&T Express
				  </label>
				</div>
				<div class="form-check">
				  <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
				  <label class="form-check-label" for="exampleRadios1">
				    ID Express
				  </label>
				</div>
				<div class="form-check">
				  <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios2" value="option2">
				  <label class="form-check-label" for="exampleRadios2">
				    POS Indonesia
				  </label>
				</div>
				  <div class="form-check">
				  <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
				  <label class="form-check-label" for="exampleRadios1">
				    SI CEPAT
				  </label>
				</div>
				<div class="form-check">
				  <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios2" value="option2">
				  <label class="form-check-label" for="exampleRadios2">
				    NINJA Express
				  </label>
				</div>
			</div>
		</div>
	</div>
		<div class="row">
			<div class="col-md-12">
				<div class="card-header">
					Alamat :
				</div>
				<div class="card-body">
					<div class="row">
						<div class="col-md-3">
							<label for="" class="control-label">Provinsi</label>
							<select name="" class="form-control" onchange="gantiProvinsi(this.value)">
								<option value="">Pilih Provinsi</option>
								@foreach($list_provinsi as $provinsi)	
									<option value="{{$provinsi->id}}">{{$provinsi->name}}</option>
								@endforeach
							</select>
						</div>
						<div class="col-md-3">
							<label for="" class="control-label">Kabupaten/Kota</label>
							<select name="" class="form-control" id="kabupaten" onchange="gantiKabupaten(this.value)">
								<option value="">Pilih Provinsi Terlebih Dahulu </option>
							</select>
						</div>
						<div class="col-md-3">
							<label for="" class="control-label">Kecamatan</label>
							<select name="" class="form-control" id="kecamatan" onchange="gantiKecamatan(this.value)">
								<option value="">Pilih Kabupaten Terlebih Dahulu </option>
							</select>
						</div>
						<div class="col-md-3">
							<label for="" class="control-label">Desa</label>
							<select name="" class="form-control" id="desa">
								<option value="">Pilih Kecamatan Terlebih Dahulu </option>
							</select>
						</div>
					</div>
				</div>
			</div>
		</div>

<div class="col-md-12 bg-danger mb-5">
		<div class="card ">
			<div class="card-header">
				<button> Pesan Sekarang </button>
			</div>
		</div>
</div>

</div>
@endsection    

@push('script')

	<script>
	contoh = {
		"id": 6101,
		"id_provinsi": "61",
		"name": "KABUPATEN KETAPANG"
	}


    function gantiProvinsi(id) {
        $.get("api/provinsi/"+id, function(result){
            result = JSON.parse(result)
            option = ""
            for (item of result){
                option += `<option value="${item.id}">${item.name}</option>`
            }
            $("#Kabupaten").html(option)
        });
    }
    function gantiKabupaten(id) {
        $.get("api/kabupaten/"+id, function(result) {
            result = JSON.parse(result)
            option = ""
            for (item of result) {
                option += `<option value="${item.id}">${item.name}</option>`
            }
            $("#kecamatan").html(option)
        });
    }
    function gantiKecamatan(id) {
        $.get("api/kecamatan/" +id, function(result) {
            result = JSON.parse(result)
            option = ""
            for (item of result) {
                option += `<option value="${item.id}">${item.name}</option>`
            }
            $("#desa").html(option)
        });
    }
</script>
@endpush   -->