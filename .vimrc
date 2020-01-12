" Joenmarz custom .vimrc by Larry Benedicto Marzan Jr.
   
" ===================================================
" HOW TO INSTALL
" 
" clone this git repo from home directory:
" git clone https://github.com/joenmarz/vimrc.git
"
" to auto load, add this path to your ~/.bashrc file:
" /home/$USER/vimrc/.vimrc
" ===================================================

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Enable cursor movement
set term=ansi

" Enable line number
set number

" Set max length of code to 80
set tw=79   " width of document (used by gd)
"set nowrap  " don't automatically wrap on load
set fo-=t   " don't automatically wrap text when typing
set colorcolumn=80
highlight ColorColumn ctermbg=233

" Enable syntax highlighting
syntax enable
syntax on

" Color scheme
" mkdir -p ~/.vim/colors && cd ~/.vim/colors
" wget -O wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400
set t_Co=256
color wombat256mod

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

" Disable stupid backup and swap files - they trigger too many events
" for file system watchers
set nobackup
set nowritebackup
set noswapfile

" Manage Vim plugins
" mkdir -p ~/.vim/autoload ~/.vim/bundle
" curl -so ~/.vim/autoload/pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim
" Now you can install any plugin into a .vim/bundle/plugin-name/ folder
call pathogen#infect()



" ============================================================================
" Python IDE Setup
" ============================================================================

" Settings for vim-powerline
" cd ~/.vim/bundle
" git clone git://github.com/Lokaltog/vim-powerline.git
set laststatus=2

" Settings for ctrlp
" cd ~/.vim/bundle
" git clone https://github.com/kien/ctrlp.vim.git
let g:ctrlp_max_height = 30
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*

" Settings for jedi-vim (python auto-completion)
" cd ~/.vim/bundle
" git clone git://github.com/davidhalter/jedi-vim.git
let g:jedi#usages_command = "<leader>z"
let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 0
map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>
