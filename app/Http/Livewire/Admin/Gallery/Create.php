<?php

namespace App\Http\Livewire\Admin\Gallery;

use Livewire\Component;
use Livewire\WithFileUploads;

use App\Models\Gallery;

class Create extends Component
{
    use WithFileUploads;

    public $privacy = 1;
    public $type = 1;
    public $title;
    public $image;
    public $video_link;

    public function store()
    {
        $this->validate([
            'privacy' => 'required',
            'type' => 'required',
            'title' => 'string',
        ]);

        if($this->type == 1){
            $this->validate([
                'image' => 'required|image',
            ]);
        }else{
            $this->validate([
                'video_link' => 'required',
            ]);
        }

        $gallery = Gallery::create([
            'privacy' => $this->privacy,
            'type' => $this->type,
            'title' => $this->title,
            'source' => $this->video_link,
            'created_by' => auth()->id(),
            'created_at' => now(),
        ]);

        if($gallery && $this->image){
            $gallery->source = $this->image->store('images/gallery');
            $gallery->save();
        }
            
        $this->reset();

        return back()->with('success', 'Success!');
    }

    public function render()
    {
        return view('livewire.admin.gallery.create')->extends('layouts.admin');
    }
}
