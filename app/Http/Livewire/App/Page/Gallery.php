<?php

namespace App\Http\Livewire\App\Page;

use Livewire\Component;

use App\Models\Gallery as Item;

class Gallery extends Component
{
    public $identifier;
    public $images = [];
    public $videos = [];

    public function mount($identifier = 'images')
    {
        $this->identifier = $identifier;

        if($identifier == 'images'){
            $this->images = Item::where('privacy', 1)->where('type', 1)->get();
        }else{
            $this->videos = Item::where('privacy', 1)->where('type', 2)->get();
        }
    }

    public function render()
    {
        return view('livewire.app.page.gallery')->extends('layouts.app');
    }
}
