<?php

namespace App\Http\Livewire\App\Page\Services;

use Livewire\Component;

use App\Models\Text;

class GeneticTest extends Component
{
    public $test;

    public function mount()
    {
        $this->test = Text::where('identifier', 'genetic-test')->firstOrFail();
    }

    public function render()
    {
        return view('livewire.app.page.services.genetic-test')->extends('layouts.app');
    }
}
