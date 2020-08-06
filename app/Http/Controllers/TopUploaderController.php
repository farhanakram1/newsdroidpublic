<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;

class TopUploaderController extends Controller
{
    public function topUploaders()
    {
        $topUploaders = User::all();
        return view('topuploaders',compact('topUploaders'));
    }
}
