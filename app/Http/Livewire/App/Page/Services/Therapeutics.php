<?php

namespace App\Http\Livewire\App\Page\Services;

use Livewire\Component;

use App\Models\Text;

class Therapeutics extends Component
{
    public $test;

    public function mount()
    {
        $this->test = Text::where('identifier', 'therapeutics')->firstOrFail();
    }

    public function render()
    {
        return view('livewire.app.page.services.therapeutics')->extends('layouts.app');
    }
}
