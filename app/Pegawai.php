<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pegawai extends Model
{
    protected $table = 'pegawai';
    protected $fillable = ['nama_depan', 'nama_belakang', 'jenis_kelamin', 'agama','alamat'];
}
