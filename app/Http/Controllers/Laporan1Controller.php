<?php

namespace App\Http\Controllers;

use App\Models\laporan1;
use Illuminate\Http\Request;

class Laporan1Controller extends Controller
{
    public function index(){
        $data = laporan1::all();
        
        return view('laporan1', compact('data'));
    }

    public function tambahruang(){
        
        return view('tambahlaporan1');
    }

    public function insertdata(Request $request)
    {
       
        laporan1::create($request->all());
        return redirect()->route('laporan1')->with('success','Data Berhasil Ditambahkan');
    }

    public function tampilkandata($id){
        $data = laporan1::find($id);

        return view('tampillaporan1', compact('data'));
    }

    public function updatedata(Request $request, $id){
        $data = laporan1::find($id);
        $data->update($request->all());
        return redirect()->route('laporan1')->with('success','Data Berhasil Diupdate');
    }

    public function delete($id){
        $data = laporan1::find($id);
        $data->delete();
        return redirect()->route('laporan1')->with('success','Data Berhasil Dihapus');
    }

    public function grafik(){
        
        return view('grafik1');
    }
}
