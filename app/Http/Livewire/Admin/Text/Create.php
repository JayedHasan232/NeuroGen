<?php

namespace App\Http\Livewire\Admin\Text;

use Livewire\Component;

class Create extends Component
{
    public function render()
    {
        return view('livewire.admin.text.create')->extends('layouts.admin');
    }
}
