@extends('layouts.master')
@section('content')

                <!-- DataTales Example -->
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h1 class="m-0 font-weight-bold text-primary">Informasi Data Pegawai Sekretariat Utama</h1>
                        <button type="button" class="btn btn-primary btn-icon-split float-right" data-toggle="modal" data-target="#exampleModal">
                            <span class="icon text-white-50">
                                <i class="fas fa-flag"></i>
                            </span>
                            <span class="text">Tambah Data Pegawai</span>
                        </button>
                    </div>

                        <div class="card-body">
                            <table class="table table-bordered table-hover" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                    <tr>
                                        <th scope="col">No.</th>
                                        <th>Nama Depan</th>
                                        <th>Nama Belakang</th>
                                        <th>Jenis Kelamin</th>
                                        <th>Satuan Kerja</th>
                                        <th>Alamat</th>
                                        <th>Aksi</th>
                                    </tr>
                                </thead>

                                @php $i = 1; @endphp
                                @foreach ($data_pegawai as $pegawai)

                                <tr>
                                    <th scope="row">{{ $i++ }}</th>
                                    <td><a href="/pegawai/{{ $pegawai->id }}/profile">{{$pegawai->nama_depan}}</a></td>
                                    <td><a href="/pegawai/{{ $pegawai->id }}/profile">{{$pegawai->nama_belakang}}</a></td>
                                    <td>{{$pegawai->jenis_kelamin}}</td>
                                    <td>{{$pegawai->satuan_kerja}}</td>
                                    <td>{{$pegawai->alamat}}</td>
                                    <td>
                                        <a href="/pegawai/{{$pegawai->id}}/edit" class="btn btn-outline-warning mt-1">Edit</a>
                                        <a href="#" class="btn btn-outline-danger mt-1 delete" pegawai-id="{{ $pegawai->id }}">Hapus</a>
                                    </td>
                                </tr>

                                @endforeach
                            </table>
                        </div>

                </div>


                
        <!-- Modal -->
        <div class="modal fade bd-example-modal-lg" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Form Tambah Data Pegawai</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                </div>
                <div class="modal-body">
                    <form action="/pegawai/create" method="POST" enctype="multipart/form-data">
                        {{csrf_field()}}
                        <div class="form-group{{ $errors->has('nama_depan') ? 'has-error' : '' }}">
                            <label for="exampleInputEmail1">Nama Depan</label>
                        <input name="nama_depan" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="{{ old('nama_depan') }}">
                        </div>
                        @if ($errors->has('nama_depan'))
                        <span class="block">{{ $errors->first('nama_depan') }}</span>
                        @endif
                        <div class="form-group{{ $errors->has('nama_belakang') ? 'has-error' : '' }}">
                            <label for="exampleInputEmail1">Nama Belakang</label>
                            <input name="nama_belakang" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="{{ old('nama_belakang') }}">
                        </div>
                        @if ($errors->has('nama_belakang'))
                        <span class="block">{{ $errors->first('nama_belakang') }}</span>
                        @endif
                        <div class="form-group{{ $errors->has('email') ? 'has-error' : '' }}">
                            <label for="exampleInputEmail1">Email</label>
                            <input name="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="{{ old('email') }}">
                        </div>
                        @if ($errors->has('email'))
                        <span class="block">{{ $errors->first('email') }}</span>
                        @endif
                        <div class="form-group">
                            <label for="exampleFormControlSelect1">Jenis Kelamin</label>
                            <select name="jenis_kelamin" class="form-control" id="exampleFormControlSelect1">
                                <option value="Lainnya"{{ (old('jenis_kelamin') == 'Lainnya') ? ' selected' : ''}}>...</option>
                                <option value="L"{{ (old('jenis_kelamin') == 'Laki-laki') ? ' selected' : ''}}>Laki-Laki</option>
                                <option value="P"{{ (old('jenis_kelamin') == 'Perempuan') ? 'selected' : ''}}>Perempuan</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="exampleFormControlSelect1">Satuan Kerja</label>
                            <select name="agama" class="form-control" id="exampleFormControlSelect1">
                                <option value="Lainnya"{{ (old('satuan_kerja') == 'Lainnya') ? 'selected' : ''}}>...</option>
                                <option value="Sekretariat Utama"{{ (old('satuan_kerja') == 'Sekretariat Utama') ? 'selected' : ''}}>Sekretariat Utama</option>
                                <option value="Deputi 1"{{ (old('satuan_kerja') == 'Deputi 1') ? 'selected' : ''}}>Deputi 1</option>
                                <option value="Deputi 2"{{ (old('satuan_kerja') == 'Deputi 2') ? 'selected' : ''}}>Deputi 2</option>
                                <option value="Deputi 3"{{ (old('satuan_kerja') == 'Deputi 3') ? 'selected' : ''}}>Deputi 3</option>
                                <option value="Deputi 4"{{ (old('satuan_kerja') == 'Deputi 4') ? 'selected' : ''}}>Deputi 4</option>
                                <option value="Deputi 5"{{ (old('satuan_kerja') == 'Deputi 5') ? 'selected' : ''}}>Deputi 5</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="exampleFormControlTextarea1">Alamat</label>
                            <textarea name="alamat" class="form-control" id="exampleFormControlTextarea1" rows="3">{{ old('alamat') }}</textarea>
                        </div>
                        <div class="form-group{{ $errors->has('avatar') ? 'has-error' : '' }}">
                            <label for="exampleFormControlTextarea1">Foto Profil</label>
                            <input type="file" name="avatar" class="form-control">
                        </div>
                        @if ($errors->has('avatar'))
                        <span class="block">{{ $errors->first('avatar') }}</span>
                        @endif
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">Tambah</button>
                        </div>
                    </form>
                </div>
            </div>
            </div>
        </div>

@endsection

