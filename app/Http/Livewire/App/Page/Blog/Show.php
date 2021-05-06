<?php

namespace App\Http\Livewire\App\Page\Blog;

use Livewire\Component;

class Show extends Component
{
    public function render()
    {
        return view('livewire.app.page.blog.show')->extends('layouts.app');
    }
}
