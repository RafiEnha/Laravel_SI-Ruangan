<?php

namespace App\Http\Controllers;

use App\Models\laporan3;
use Illuminate\Http\Request;

class Laporan3Controller extends Controller
{
    public function index(){
        $data = laporan3::all();
        
        return view('laporan3', compact('data'));
    }

    public function tambahruang(){
        
        return view('tambahlaporan3');
    }

    public function insertdata(Request $request)
    {
       
        laporan3::create($request->all());
        return redirect()->route('laporan3')->with('success','Data Berhasil Ditambahkan');
    }

    public function tampilkandata($id){
        $data = laporan3::find($id);

        return view('tampillaporan3', compact('data'));
    }

    public function updatedata(Request $request, $id){
        $data = laporan3::find($id);
        $data->update($request->all());
        return redirect()->route('laporan3')->with('success','Data Berhasil Diupdate');
    }

    public function delete($id){
        $data = laporan3::find($id);
        $data->delete();
        return redirect()->route('laporan3')->with('success','Data Berhasil Dihapus');
    }

    public function grafik(){
        
        return view('grafik3');
    }
}
