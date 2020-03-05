<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class KetSatuanKerja extends Model
{
    protected $table = 'ket_satuan_kerja';
    protected $fillable = ['organisasi', 'unit_kerja', 'sub_unit_kerja', 'jabatan', 'nip', 'golongan_ruang'];

    public function pegawai()
    {
        return $this->belongsToMany(Pegawai::class)->withPivot(['harga']);
    }
}
