<?php

namespace App\Http\Livewire\Admin\Research;

use Livewire\Component;

class Create extends Component
{
    public function render()
    {
        return view('livewire.admin.research.create')->extends('layouts.admin');
    }
}
