" Custom .vimrc by Larry Benedicto Marzan Jr.
   
" ===================================================
" HOW TO INSTALL
" 
" clone this git repo from home directory:
" git clone https://github.com/LarryMarzanJr/vimrc.git
"
" create symlink (shortcut) to your .vimrc file and .vim folder 
" ln -s ~/vimrc/.vimrc ~/.vimrc
" ln -s ~/vimrc/.vim ~/.vim
" ===================================================

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %
" Enable cursor movement
set term=ansi

" Enable line number
set number

" Set max length of code to 80
set wrap " enable wrap on load
set tw=92   " width of document (used by gd)
"set nowrap  " don't automatically wrap on load
set fo-=t   " don't automatically wrap text when typing
set colorcolumn=92
highlight ColorColumn ctermbg=14

" Enable syntax highlighting
syntax enable
syntax on

" Color scheme located inside the .vim/colors/ folder
set t_Co=256
" Color Themes Collection. To choose theme colors, uncomment one of the following:
"color 256_noir
"color OceanicNext
"color OceanicNextLight
"color PaperColor
color abstract
"color afterglow
"color alduin
"color anderson
"color angr
"color apprentice
"color archery
"color atom
"color ayu
"color carbonized-dark
"color carbonized-light
"color challenger_deep
"color deep-space
"color deus 
"set background=dark
"color dracula
"color flattened_dark
"color flattened_light
"color focuspoint
"color github
"color gotham
"color gotham256
"color gruvbox
"color happy_hacking
"color hybrid
"color hybrid_material
"color hybrid_reverse
"color iceberg
"color jellybeans
"color lightning
"color lucid
"color lucius
"color materialbox
"color meta5
"color minimalist
"color molokai
"color molokayo
"color nord
"color one-dark
"color one
"color onedark
"color orange-moon
"color orbital
"color paramount
"color parsec
"color pink-moon
"color purify
"color pyte
"color rakr
"color rdark-terminal2
"color scheakur
"color seoul256-light
"color seoul256
"color sierra
"color snow
"color solarized
"color solarized8
"color solarized8_flat
"color solarized8_high
"color solarized8_low
"color space-vim-dark
"color stellarized
"color tender
"color termschool
"color twilight256
"color two-firewatch
"color wombat256mod
"color yellow-moon

" Display status bar
set laststatus=2

" Add line to current cursor
set cursorline

" Disable beep on errors & flash the screen instead of beeping on errors
set noerrorbells
set visualbell

" Enable mouse for scrolling and resizing
"set mouse=a

" Display file name that is currently being edited on Windows title
set title

" Allow backspace over indentation, line breaks & insert between lines
set backspace=indent,eol,start

" Increase undo limit to 700
set history=700

" Quicksave command
"noremap <C-Z> :update<CR>
"vnoremap <C-Z> <C-C>:update<CR>
"inoremap <C-Z> <C-O>:update<CR>

" Bind <Leader> key from backslash to comma key
"let mapleader = ","

" Quick Close current window or all windows using <Leader>w or <Leader>W
"noremap <Leader>w :quit<CR>  " Quit current window
"noremap <Leader>W :qa!<CR>   " Quit all windows

" Moving between tabs, <Leader>n to go left, <leader>m to go right
"map <Leader>n <esc>:tabprevious<CR>
"map <Leader>m <esc>:tabnext<CR>

" Disable stupid backup and swap files - they trigger too many events
" for file system watchers
set nobackup
set nowritebackup
set noswapfile

" Use 'Ctrl-a' shortcut to select all text
" https://forums.fedoraforum.org/showthread.php?217724-Selecting-all-in-vi-editor
" Press gg to go to the first line, then v for visual selection, and then shift+g to go to the end of file.
"map <C-A> ggv<S-G>

" MANAGE VIM PLUGINS USING VIM Plug
" 1. Install vim Plug:
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" 2. Specify a directory for plugins,
" add your plugin after plug#begin('~/.vim/plugged') and before plug#end()
" by adding for example:
" Plug('GitUser/Repository')
"
" 3. After adding plugin, install it using :PlugInstall command

call plug#begin('~/.vim/plugged')

    " YouCompleteMe - Autocompletion plugin for python
    "Plug('ycm-core/YouCompleteMe')
    " install cmake:
    " sudo apt install cmake
    " activate your virtual environment mode
    " cd inside the YouCompleteMe directory, type:
    " ./install.py --clang-completer
    " let g:ycm_python_binary_path = 'python3'
    " let g:ycm_autoclose_preview_window_after_completion = 1
    " let g:ycm_min_num_of_chars_for_completion = 1
    " still in virtual environment mode, install package called request
    " by typing:
    " pip3 install requests
    
    "vim-airline - Status Bar plugin, below vim text editor
    Plug('vim-airline/vim-airline')

call plug#end()

" ============================================================================
" HTML Snippets
" ============================================================================
"HTML autocompletion:
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

" Autocomplete HTML Template
" Create file ~/.vim/templates/html.skel
autocmd BufNewFile *.html 0r ~/.vim/templates/html.skel

" ============================================================================
" Python IDE Setup
" ============================================================================

" Vim Modeline
" Auto Indentation for Python
set ai
" Tab Stop 4
set ts=4
" Soft Tab Stop 4
set sts=4
" eXPAND tab
set et
" Shift Width 4
set sw=4

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


" Setup autocompletion:
filetype plugin on
au FileType php setl ofu=phpcomplete#CompletePHP
au FileType ruby,eruby setl ofu=rubycomplete#Complete
au FileType html,xhtml setl ofu=htmlcomplete#CompleteTags
au FileType c setl ofu=ccomplete#CompleteCpp
au FileType css setl ofu=csscomplete#CompleteCSS
