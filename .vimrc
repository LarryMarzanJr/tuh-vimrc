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

" Set max length of code to 80
set tw=79   " width of document (used by gd)
set nowrap  " don't automatically wrap on load
set fo-=t   " don't automatically wrap text when typing
set colorcolumn=80
highlight ColorColumn ctermbg=233

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

" Quicksave command
noremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
inoremap <C-Z> <C-O>:update<CR>

" Bind <Leader> key from backslash to comma key
let mapleader = ","

" Quick Close current window or all windows using <Leader>w or <Leader>W
noremap <Leader>w :quit<CR>  " Quit current window
noremap <Leader>W :qa!<CR>   " Quit all windows

" Moving between tabs, <Leader>n to go left, <leader>m to go right
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>




" ============================================================================
" Python IDE Setup
" ============================================================================
