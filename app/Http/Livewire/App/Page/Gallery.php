<?php

namespace App\Http\Livewire\App\Page;

use Livewire\Component;

use App\Models\Gallery as Item;

class Gallery extends Component
{
    public $images;
    public $videos;

    public function mount()
    {
        $this->images = Item::where('privacy', 1)->where('type', 1)->get();
        $this->videos = Item::where('privacy', 1)->where('type', 2)->get();
    }

    public function render()
    {
        return view('livewire.app.page.gallery')->extends('layouts.app');
    }
}
