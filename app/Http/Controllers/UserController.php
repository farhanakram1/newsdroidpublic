<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function profile($username)
    {
        $user = User::where('username',$username)->first();
        $posts = $user->posts()->approved()->published()->get();
        $shareposts = Auth::user()->share_posts;
        return view('profile',compact('user','posts','shareposts'));
    }
}
