<?php

namespace App\Http\Livewire\Admin\Gallery;

use Livewire\Component;

class Edit extends Component
{
    public function render()
    {
        return view('livewire.admin.gallery.edit')->extends('layouts.admin');
    }
}
