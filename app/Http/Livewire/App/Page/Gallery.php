<?php

namespace App\Http\Livewire\App\Page;

use Livewire\Component;

class Gallery extends Component
{
    public function render()
    {
        return view('livewire.app.page.gallery')->extends('layouts.app');
    }
}
