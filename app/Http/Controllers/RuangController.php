<?php

namespace App\Http\Controllers;

use App\Models\ruang;
use Illuminate\Http\Request;

class RuangController extends Controller
{
    public function index(){
        $data = ruang::all();
        
        return view('ruang', compact('data'));
    }

    public function tambahruang(){
        
        return view('tambahruang');
    }

    public function insertdata(Request $request)
    {
       
        ruang::create($request->all());
        return redirect()->route('ruang')->with('success','Data Berhasil Ditambahkan');
    }

    public function tampilkandata($id){
        $data = ruang::find($id);

        return view('tampildata', compact('data'));
    }

    public function updatedata(Request $request, $id){
        $data = ruang::find($id);
        $data->update($request->all());
        return redirect()->route('ruang')->with('success','Data Berhasil Diupdate');
    }

    public function delete($id){
        $data = ruang::find($id);
        $data->delete();
        return redirect()->route('ruang')->with('success','Data Berhasil Dihapus');
    }
}