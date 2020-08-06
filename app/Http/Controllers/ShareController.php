<?php

namespace App\Http\Controllers;

use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ShareController extends Controller
{
    public function add($post)
    {
        $user = Auth::user();
        $isShare = $user->share_posts()->where('post_id',$post)->count();

        if ($isShare == 0)
        {
            $user->share_posts()->attach($post);
            Toastr::success('Post Shared!','Success');
            return redirect()->back();
        } else {
            $user->share_posts('Post removed form your timeline','Success');
            return redirect()->back();
        }
    }
}
