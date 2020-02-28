<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Pegawai;

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

        $this->validate($request, [
            'nama_depan' => 'required|min:2',
            'nama_belakang' => 'required|min:2',
            'email' => 'required|email|unique:users',
            'avatar' => 'mimes:jpeg,jpg,png'
        ]);
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
        if ($request->hasFile('avatar')) {
            $request->file('avatar')->move('image/', $request->file('avatar')->getClientOriginalName());
            $pegawai->avatar = $request->file('avatar')->getClientOriginalName();
            $pegawai->save();
        }

        return redirect('/pegawai')->with('sukses', 'Data pegawai berhasil ditambahkan');
    }

    public function edit(Pegawai $pegawai)
    {

        return view('pegawai/edit', ['pegawai' => $pegawai]);
    }

    public function update(Request $request, Pegawai $pegawai)
    {
        //dd($request->all());
        $this->validate($request, [
            'nama_depan' => 'required|min:2',
            'nama_belakang' => 'required|min:2',
            'email' => 'required|email|unique:users',
            'avatar' => 'mimes:jpeg,jpg,png'
        ]);

        $pegawai->update($request->all());
        if ($request->hasFile('avatar')) {
            $request->file('avatar')->move('image/', $request->file('avatar')->getClientOriginalName());
            $pegawai->avatar = $request->file('avatar')->getClientOriginalName();
            $pegawai->save();
        }
        return redirect('/pegawai')->with('sukses', 'Data telah berhasil diupdate');
    }

    public function delete(Pegawai $pegawai)
    {

        $pegawai->delete($pegawai);
        return redirect('/pegawai')->with('sukses', 'Data telah berhasil dihapus');
    }

    public function profile(Pegawai $pegawai)
    {

        return view('pegawai.profile', ['pegawai' => $pegawai]);
    }
}
