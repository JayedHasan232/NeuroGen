<?php

namespace App\Http\Livewire\Admin\Research;

use Livewire\Component;

class Edit extends Component
{
    public function render()
    {
        return view('livewire.admin.research.edit')->extends('layouts.admin');
    }
}
