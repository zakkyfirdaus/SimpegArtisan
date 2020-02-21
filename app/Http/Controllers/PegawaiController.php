<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PegawaiController extends Controller
{
    public function index(Request $request)
    {
        if ($request->has('cari')) { //fungsi dari form pencarian pada tabel nama_depan saja
            $data_pegawai = \App\Pegawai::where('nama_depan', 'LIKE', '%' . $request->cari . '%')->get();
        } else {
            $data_pegawai = \App\Pegawai::all();
        }
        return view('pegawai.index', ['data_pegawai' => $data_pegawai]);
    }

    public function create(Request $request)
    {

        //insert ke tabel user
        $user = new \App\User;
        $user->role = 'pegawai';
        $user->name = $request->nama_depan;
        $user->email = $request->email;
        $user->password = bcrypt('kazumigaoka');
        $user->remember_token = \Str::random(60);
        $user->save();

        //insert ke tabel pegawai
        $request->request->add(['user_id' => $user->id]);
        $pegawai = \App\Pegawai::create($request->all());
        return redirect('/pegawai')->with('sukses', 'Data pegawai berhasil ditambahkan');
    }

    public function edit($id)
    {
        $pegawai = \App\Pegawai::find($id);
        return view('pegawai/edit', ['pegawai' => $pegawai]);
    }

    public function update(Request $request, $id)
    {
        //dd($request->all());
        $pegawai = \App\Pegawai::find($id);
        $pegawai->update($request->all());
        if ($request->hasFile('avatar')) {
            $request->file('avatar')->move('image/', $request->file('avatar')->getClientOriginalName());
            $pegawai->avatar = $request->file('avatar')->getClientOriginalName();
            $pegawai->save();
        }
        return redirect('/pegawai')->with('sukses', 'Data telah berhasil diupdate');
    }

    public function delete($id)
    {
        $pegawai = \App\Pegawai::find($id);
        $pegawai->delete($pegawai);
        return redirect('/pegawai')->with('sukses', 'Data telah berhasil dihapus');
    }

    public function profile($id)
    {
        $pegawai = \App\Pegawai::find($id);
        return view('pegawai.profile', ['pegawai' => $pegawai]);
    }
}
