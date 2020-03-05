<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pegawai extends Model
{
    protected $table = 'pegawaisektama';
    protected $fillable = ['nama_depan', 'nama_belakang', 'jenis_kelamin', 'satuan_kerja', 'alamat', 'avatar', 'user_id'];

    public function getAvatar()
    {
        if (!$this->avatar) {
            return asset('image/default.png');
        }

        return asset('image/' . $this->avatar);
    }

    public function ket_satuan_kerja()
    {
        return $this->belongsToMany(KetSatuanKerja::class)->withPivot(['harga']);
    }
}
