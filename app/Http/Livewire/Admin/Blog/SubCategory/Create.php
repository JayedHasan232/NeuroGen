<?php

namespace App\Http\Livewire\Admin\Blog\SubCategory;

use Livewire\Component;

class Create extends Component
{
    public function render()
    {
        return view('livewire.admin.blog.sub-category.create')->extends('layouts.admin');
    }
}
