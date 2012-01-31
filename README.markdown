yrknote.vim
===========

This is my personal notes format.


I keep all my notes in a single dir, each with CamelCase filenames
ending in ".txt".  I edit them by opening up that dir in
[MacVim](http://code.google.com/p/macvim/).  For jumping around, I
primarily use [Command-T](https://github.com/wincent/Command-T).

Features
--------

This bundle adds a few helpful things, such as:

* Syntax highlighting for sections, lists, etc.
* Snippets (using [SnipMate](https://github.com/garbas/vim-snipmate))
* Some custom commands for navigation, formatting, etc.

### Formatting

My formatting is similar to [Markdown](), but has a few changes based on
the way I worked before I knew about markdown.  Primarily, I have
section dividers/titles that stand out a bit more (when there is no
syntax highlightin), and a less-structured

I divide major sections in files with dividers made of hyphens, and each
section has a title that is all-caps as the first line past the divider.

Sub-Sections are any lines that end with a colon (:).

Lists start with a bullet character, which can be any one of *, +, -, ?
* '*' is for normal bullet points.
* '+' is of positive things (when I'm making a list of pros/cons) and
  get highlighted as green.
* '-' is for negative items, and get highlighted as red.
* '?' is for questions.

I nest lists by indenting sub-lists with 4 spaces.

I put


Installation
------------

I use [vundle](https://github.com/gmarik/vundle) to manage my vim
plugins.  If you do also, you can just add:

    Bundle 'kelan/yrknote.vim'

to your .vimrc, in the vundle section.


License (MIT)
-------------

Copyright (c) 2011 Kelan Champagne

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

