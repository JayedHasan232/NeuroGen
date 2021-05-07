<?php

namespace App\Http\Livewire\Admin\Blog\SubCategory;

use Livewire\Component;

class Edit extends Component
{
    public function render()
    {
        return view('livewire.admin.blog.sub-category.edit')->extends('layouts.admin');
    }
}
