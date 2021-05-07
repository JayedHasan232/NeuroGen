<?php

namespace App\Http\Livewire\Admin\Blog\Category;

use Livewire\Component;

class Create extends Component
{
    public function render()
    {
        return view('livewire.admin.blog.category.create')->extends('layouts.admin');
    }
}
