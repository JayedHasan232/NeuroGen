<?php

namespace App\Http\Livewire\Admin\Faq;

use Livewire\Component;

class Create extends Component
{
    public function render()
    {
        return view('livewire.admin.faq.create')->extends('layouts.admin');
    }
}
