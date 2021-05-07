<?php

namespace App\Http\Livewire\Admin\Team;

use Livewire\Component;

class Create extends Component
{
    public function render()
    {
        return view('livewire.admin.team.create')->extends('layouts.admin');
    }
}
