<?php

namespace App\Http\Livewire\App\Page;

use Livewire\Component;

use App\Models\Research as Researchs;

class Research extends Component
{
    public $researchs;

    public function mount()
    {
        $this->researchs = Researchs::where('privacy', 1)->get();
    }

    public function render()
    {
        return view('livewire.app.page.research')->extends('layouts.app');
    }
}
