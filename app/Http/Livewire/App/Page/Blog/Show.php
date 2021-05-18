<?php

namespace App\Http\Livewire\App\Page\Blog;

use Livewire\Component;

use App\Models\Blog;

class Show extends Component
{
    public $blog;

    public function mount($url)
    {
        $this->blog = Blog::where('url', $url)->where('privacy', 1)->firstOrFail();
    }
    
    public function render()
    {
        return view('livewire.app.page.blog.show')->extends('layouts.app');
    }
}
