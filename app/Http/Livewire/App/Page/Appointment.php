<?php

namespace App\Http\Livewire\App\Page;

use Livewire\Component;

class Appointment extends Component
{
    public function render()
    {
        return view('livewire.app.page.appointment')->extends('layouts.app');
    }
}
