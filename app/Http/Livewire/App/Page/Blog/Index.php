<?php

namespace App\Http\Livewire\App\Page\Blog;

use Livewire\Component;

use App\Models\Blog;

class Index extends Component
{
    public $blogs;

    public function mount()
    {
        $this->blogs = Blog::where('privacy', 1)->get();
    }
    
    public function render()
    {
        return view('livewire.app.page.blog.index')->extends('layouts.app');
    }
}
