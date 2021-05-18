<?php

namespace App\Http\Livewire\Admin\Text;

use Livewire\Component;

class Edit extends Component
{
    public function render()
    {
        return view('livewire.admin.text.edit')->extends('layouts.admin');
    }
}
