<?php

namespace App\Http\Livewire\Admin\Team;

use Livewire\Component;

class Edit extends Component
{
    public function render()
    {
        return view('livewire.admin.team.edit')->extends('layouts.admin');
    }
}
