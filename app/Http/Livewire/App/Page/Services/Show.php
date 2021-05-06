<?php

namespace App\Http\Livewire\App\Page\Services;

use Livewire\Component;

class Show extends Component
{
    public function render()
    {
        return view('livewire.app.page.services.show')->extends('layouts.app');
    }
}
