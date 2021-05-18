<?php

namespace App\Http\Livewire\App\Page;

use Livewire\Component;

use App\Models\About as Data;

class About extends Component
{
    public $about;

    public function mount()
    {
        $this->about = Data::find(1);
    }

    public function render()
    {
        return view('livewire.app.page.about')->extends('layouts.app');
    }
}
