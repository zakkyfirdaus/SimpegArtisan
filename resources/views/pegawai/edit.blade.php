@extends('layouts.master')
@section('content')

        @if(session('sukses'))
        <div class="alert alert-success" role="alert">
            {{session('sukses')}}
        </div>
        @endif
        <!-- DataTales Example -->
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h1 class="m-0 font-weight-bold text-primary">Edit Data Pegawai</h1>
            </div>
            <div class="col-10">
            <form action="/pegawai/{{$pegawai->id}}/update" method="POST" enctype="multipart/form-data">
                {{csrf_field()}}
                <div class="form-group">
                    <label for="exampleInputEmail1">Nama Depan</label>
                <input name="nama_depan" value="{{$pegawai->nama_depan}}" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                    <small id="emailHelp" class="form-text text-muted">Kami tidak akan pernah membagikan nama depan Anda dengan orang lain.</small>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Nama Belakang</label>
                    <input name="nama_belakang" value="{{$pegawai->nama_belakang}}" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                    <small id="emailHelp" class="form-text text-muted">Kami tidak akan pernah membagikan nama belakang Anda dengan orang lain.</small>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlSelect1">Jenis Kelamin</label>
                    <select name="jenis_kelamin" class="form-control" id="exampleFormControlSelect1">
                        <option value="Lainnya" @if($pegawai->jenis_kelamin == 'Lainnya') selected @endif>...</option>
                        <option value="L" @if($pegawai->jenis_kelamin == 'L') selected @endif>Laki-Laki</option>
                        <option value="P" @if($pegawai->jenis_kelamin == 'P') selected @endif>Perempuan</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlSelect1">Agama</label>
                    <select name="agama" class="form-control" id="exampleFormControlSelect1">
                        <option value="Lainnya" @if($pegawai->agama == 'Lainnya') selected @endif>...</option>
                        <option value="Islam" @if($pegawai->agama == 'Islam') selected @endif>Islam</option>
                        <option value="Kristen" @if($pegawai->agama == 'Kristen') selected @endif>Kristen</option>
                        <option value="Hindu" @if($pegawai->agama == 'Hindu') selected @endif>Hindu</option>
                        <option value="Budha" @if($pegawai->agama == 'Budha') selected @endif>Budha</option>
                        <option value="Budha" @if($pegawai->agama == 'Shinto') selected @endif>Shinto</option>
                        <option value="Lainnya" @if($pegawai->agama == 'Lainnya') selected @endif>Lainnya</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlTextarea1">Alamat</label>
                    <textarea name="alamat" class="form-control" id="exampleFormControlTextarea1" rows="3">{{$pegawai->alamat}}</textarea>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlTextarea1">Foto Profil</label>
                    <input type="file" name="avatar" class="form-control">
                </div>
                <button type="submit" class="btn btn-success btn-icon-split float-right" data-toggle="modal" data-target="#exampleModal">
                    <span class="icon text-white-50">
                        <i class="fas fa-check"></i>
                    </span>
                    <span class="text">Update Data Pegawai</span>
                </button>
            </form>
            </div>
            
        </div>

@endsection
