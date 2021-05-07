<?php

namespace App\Http\Livewire\Admin\Faq;

use Livewire\Component;

class Edit extends Component
{
    public function render()
    {
        return view('livewire.admin.faq.edit')->extends('layouts.admin');
    }
}
