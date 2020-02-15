<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PegawaiController extends Controller
{
    public function index()
    {
        $data_pegawai = \App\Pegawai::all();
        return view('pegawai.index',['data_pegawai' => $data_pegawai]);
    }

    public function create(Request $request)
    {
        \App\Pegawai::create($request->all());
        return redirect('/pegawai')->with('sukses','Data pegawai berhasil ditambahkan');
    }
}
