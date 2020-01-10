" Joenmarz custom .vimrc by Larry Benedicto Marzan Jr.
   
" ===================================================
" For private use only
" ===================================================

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Enable cursor movement
set term=ansi

" Enable line number
set number

" Enable syntax highlighting
syntax enable

" Display status bar
set laststatus=2

" Add line to current cursor
set cursorline

" Disable beep on errors & flash the screen instead of beeping on errors
set noerrorbells
set visualbell

" Enable mouse for scrolling and resizing
set mouse=a

" Display file name that is currently being edited on Windows title
set title

" Allow backspace over indentation, line breaks & insert between lines
set backspace=indent,eol,start

" Increase undo limit to 700
set history=700
