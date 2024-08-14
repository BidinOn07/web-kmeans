<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\buku;

class ApiController extends Controller
{
    public function getBooksData()
    {
        $books = buku::select('judul_buku', 'totalPembaca')->get();
        return response()->json($books);
    }
}
