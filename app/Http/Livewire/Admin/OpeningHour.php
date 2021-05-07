<?php

namespace App\Http\Livewire\Admin;

use Livewire\Component;

class OpeningHour extends Component
{
    public function render()
    {
        return view('livewire.admin.opening-hour')->extends('layouts.admin');
    }
}
