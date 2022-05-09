<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Servis;
use App\Comment;
use Illuminate\Support\Arr;
use App\Exports\ServisExport;
use App\Imports\ServisImport;
use Maatwebsite\Excel\Facades\Excel;
use DB;

class ServisController extends Controller
{

    public function home()
    {
        return view('home');
    }

    //USER DAN ADMIN
    public function index()
    {
        $role = auth()->user()->role;
        $id = auth()->user()->id;
        if($role=='pelanggan'){
            $servis = auth()->user()->servis->where('status', 'NOT CLOSED');
            return view('servis/user/index', compact(['servis']));
        }else
        {
            $servis = Servis::all();
            return view('servis/admin/index', compact(['servis']));
        }
        
    }

    public function abc()
    {
        return view('abc');      
    }

    //PELANGGAN
    public function history()
    {
        $servis = auth()->user()->servis->where('status', 'CLOSED');
        return view('servis/user/history', compact(['servis']));
    }

    public function dtl_servis_pelanggan($id)
    {
        $servis = Servis::Find($id);
        $komentar = Comment::All();
        return view('servis/user/dtl_servis', compact(['servis', 'komentar', 'id']));
    }

    public function insertKomentarPelanggan(Request $req, $id)
    {
        $servis = Servis::find($id);
        $komentar = new Comment();
        $komentar->message = $req->komentar;
        $komentar->servis_id = $req->id;
        $komentar->user_id = auth()->user()->id;
        $komentar->save();
        return redirect()->action('ServisController@dtl_servis_pelanggan', ['id'=>$id]);
    }

    //ADMIN
    public function export()
    {
        return Excel::download(new ServisExport, 'Servis.xlsx');
    }

    public function import_excel(Request $request) 
	{
		// validasi
		$this->validate($request, [
			'file' => 'required|mimes:csv,xls,xlsx'
		]);	
 
		// import data
		Excel::import(new ServisImport, request()->file('file'));
 
		// alihkan halaman kembali
		return redirect('servis/index')->with('status', 'Data Berhasil di Update !');
	}

	public function dtl_servis_admin($id)
    { 
        $servis = Servis::Find($id);
		$komentar = Comment::all();
        return view('servis/admin/dtl_servis', compact(['servis', 'komentar', 'id']));
    }

    public function insertKomentarAdmin(Request $req, $id)
    {
        $servis = Servis::find($id);
        $komentar = new Comment();
        $komentar->message = $req->komentar;
        $komentar->servis_id = $req->id;
        $komentar->user_id = auth()->user()->id;
        $komentar->save();
        return redirect()->action('ServisController@dtl_servis_admin', ['id'=>$id]);
    }
}

