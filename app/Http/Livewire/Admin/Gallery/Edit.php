<?php

namespace App\Http\Livewire\Admin\Gallery;

use Livewire\Component;
use Livewire\WithFileUploads;

use Storage;
use App\Models\Gallery;

class Edit extends Component
{
    use WithFileUploads;

    public $item;

    public $privacy;
    public $type;
    public $title;
    public $image;
    public $video_link;

    public function mount($id)
    {
        $this->item = Gallery::findOrFail($id);

        $this->privacy = $this->item->privacy;
        $this->type = $this->item->type;
        $this->title = $this->item->title;

        if($this->type == 2){
            $this->video_link = $this->item->source;
        }
    }

    public function store()
    {
        $this->validate([
            'privacy' => 'required',
            'type' => 'required',
            'title' => 'string',
        ]);

        if($this->type == 2){
            $this->validate([
                'video_link' => 'required',
            ]);
        }

        $this->item->update([
            'privacy' => $this->privacy,
            'type' => $this->type,
            'title' => $this->title,
            'source' => $this->video_link,
            'updated_by' => auth()->id(),
            'updated_at' => now(),
        ]);

        if($this->image){

            Storage::delete($this->item->image);

            $this->item->source = $this->image->store('images/gallery');
            $this->item->save();
        }

        return back()->with('success', 'Success!');
    }

    public function render()
    {
        return view('livewire.admin.gallery.edit')->extends('layouts.admin');
    }
}
