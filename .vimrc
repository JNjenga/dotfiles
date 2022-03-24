
set nocompatible 
filetype off 

set exrc
set secure

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

	Plugin 'majutsushi/tagbar'
	Plugin 'romainl/Apprentice'
	Plugin 'mattn/emmet-vim'
	Plugin 'vim-scripts/OmniCppComplete'


	Plugin 'VundleVim/Vundle.vim'
	Plugin 'tomtom/tlib_vim'
	" Plugin 'garbas/vim-snipmate'
	Plugin 'scrooloose/nerdtree'
	" Plugin 'Valloric/YouCompleteMe'
	Plugin 'tpope/vim-fugitive'
	Plugin 'vim-syntastic/syntastic'
	Plugin 'vim-airline/vim-airline'
    " Plugin 'kien/ctrlp.vim'
	Plugin 'morhetz/gruvbox'
	" Plugin 'majutsushi/tagbar'
	Plugin 'Yggdroot/indentLine'
	Plugin 'tomasr/molokai'
	Plugin 'rstacruz/sparkup'
	Plugin 'vim-airline/vim-airline-themes'
	Plugin 'junegunn/fzf.vim'
	Plugin 'junegunn/fzf'
	Plugin 'habamax/vim-gruvbit'
call vundle#end()

set number

set autoread

set autoindent
set smartindent
set smartcase 
set ignorecase 

set foldmethod=indent

set foldlevelstart=99

set showcmd

set encoding=utf-8

" set guifont=DejaVu\ Sans\ Mono\ 12
set guifont=Monospace\ 12


" UI
set cursorline

set hlsearch
set incsearch

set laststatus=2
set t_Co=256

colorscheme gruvbit  " gruvbox molokai
set bg=dark
syntax on

hi CursorLine cterm=NONE ctermbg=brown ctermfg=white guibg=darkmagenta guifg=white

" NERDTree
let NERDTreeWinSize=30
map <silent> <c-k> : NERDTreeToggle<CR>
" TagBar
" set tags=./tags,tags;/
" let g:tagbar_width=20   " Set tagbar window width
" map <silent> <c-t> : TagbarToggle<CR>

" Vim-airline
" let g:airline_powerline_fonts=1 " Let airline plugin use the arrow effect of powerline
"set vim statusbar theme
let g:airline_theme="molokai"
" autocmd VimEnter * NERDTree
"
" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0



" Indentation
autocmd FileType html setlocal shiftwidth=3 tabstop=3

set backspace=indent,eol,start

" configure expanding of tabs for various file types
au BufRead,BufNewFile *.py set expandtab
au BufRead,BufNewFile *.c set noexpandtab
au BufRead,BufNewFile *.h set noexpandtab
au BufRead,BufNewFile Makefile* set noexpandtab

" --------------------------------------------------------------------------------
" configure editor with tabs and nice stuff...
" --------------------------------------------------------------------------------
set expandtab           " enter spaces when tab is pressed
set textwidth=120       " break lines when line length increases
set tabstop=4           " use 4 spaces to represent tab
set softtabstop=4
set shiftwidth=4        " number of spaces to use for auto indent
set autoindent          " copy indent from current line when starting a new line
set smartindent
set smarttab
set expandtab
set number

" make backspaces more powerfull
set backspace=indent,eol,start

set ruler                           " show line and column number
syntax on               " syntax highlighting
set showcmd             " show (partial) command in status line

filetype on
filetype plugin on
filetype indent on

" Fzf
" Empty value to disable preview window altogether
" let g:fzf_preview_window = ''

" Always enable preview window on the right with 60% width
" let g:fzf_preview_window = 'right:60%'

" let $FZF_DEFAULT_COMMAND = 'ag -g ""'
let $FZF_DEFAULT_COMMAND = 'fdfind --type f ""'
let g:fzf_layout = { 'down': '40%' }
map <silent> <c-p> : FZF<CR>

set vb t_vb=

" --------------------------------------------
hi CursorLine cterm=NONE ctermbg=brown ctermfg=white guibg=darkmagenta guifg=white

" TagBar
set tags=./tags,tags;/
let g:tagbar_width=20   " Set tagbar window width
map <silent> <c-t> : TagbarToggle<CR>

" Emmmet
"let g:user_emmet_install_global = 0
"autocmd FileType html,css EmmetInstall

" Omini Completion
filetype plugin on


