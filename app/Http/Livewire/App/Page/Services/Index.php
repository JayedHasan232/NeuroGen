<?php

namespace App\Http\Livewire\App\Page\Services;

use Livewire\Component;

class Index extends Component
{
    public function render()
    {
        return view('livewire.app.page.services.index')->extends('layouts.app');
    }
}
