<?php

namespace App\Http\Controllers;

use App\Models\laporan2;
use Illuminate\Http\Request;

class Laporan2Controller extends Controller
{
    public function index(){
        $data = laporan2::all();
        
        return view('laporan2', compact('data'));
    }

    public function tambahruang(){
        
        return view('tambahlaporan2');
    }

    public function insertdata(Request $request)
    {
       
        laporan2::create($request->all());
        return redirect()->route('laporan2')->with('success','Data Berhasil Ditambahkan');
    }

    public function tampilkandata($id){
        $data = laporan2::find($id);

        return view('tampillaporan2', compact('data'));
    }

    public function updatedata(Request $request, $id){
        $data = laporan2::find($id);
        $data->update($request->all());
        return redirect()->route('laporan2')->with('success','Data Berhasil Diupdate');
    }

    public function delete($id){
        $data = laporan2::find($id);
        $data->delete();
        return redirect()->route('laporan2')->with('success','Data Berhasil Dihapus');
    }

    public function grafik(){
        
        return view('grafik2');
    }
}
