<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');




// Livewire
Route::namespace('App\Http\Livewire')->group(function()
{
    // App
    Route::namespace('App\Page')->group(function()
    {
        Route::get('research', Research::class)->name('research');
        
        // Gallery
        Route::get('gallery', Gallery::class)->name('gallery');
        
        // // Blog
        // Route::get('blog', Blog\Index::class)->name('blog');
        // Route::get('blog/{url}', Blog\Show::class)->name('blog.show');

        Route::get('about', About::class)->name('about');
        Route::get('contact', Contact::class)->name('contact');
        Route::get('developer', Developer::class)->name('developer');
        
    });
});