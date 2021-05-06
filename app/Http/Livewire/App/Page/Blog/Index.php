<?php

namespace App\Http\Livewire\App\Page\Blog;

use Livewire\Component;

class Index extends Component
{
    public function render()
    {
        return view('livewire.app.page.blog.index')->extends('layouts.app');
    }
}
