<?php

namespace App\Http\Livewire\Admin\Blog\Category;

use Livewire\Component;

class Edit extends Component
{
    public function render()
    {
        return view('livewire.admin.blog.category.edit')->extends('layouts.admin');
    }
}
