<?php

namespace App\Http\Controllers\Admin;

use App\User;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class UserController extends Controller
{
    public function index()
    {
       $users = User::users()
           ->withCount('posts')
           ->withCount('comments')
           ->withCount('favorite_posts')
           ->get();
       return view('admin.users',compact('users'));
    }

    public function destroy($id)
    {
        $user = User::findOrFail($id)->delete();
        Toastr::success('Users Deleted','Success');
        return redirect()->back();
    }
}
