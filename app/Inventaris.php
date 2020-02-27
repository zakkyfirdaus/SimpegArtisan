<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Inventaris extends Model
{
    protected $table = 'inventaris';
    protected $fillable = ['kode', 'nama', 'jabatan'];

    public function pegawai()
    {
        return $this->belongsToMany(Pegawai::class)->withPivot(['harga']);
    }
}
