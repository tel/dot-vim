" Use pathogen to manage vim bundles in ~/.vim/bundle
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

" Set freeleader for custom commands
let mapleader = ","

" Quickly edit and reload vimrc file
nmap <silent> <Leader>ev :e $MYVIMRC<CR>
nmap <silent> <Leader>sv :so $MYVIMRC<CR>

" Effective buffer management
set hidden

" Convenience remappings
nnoremap ; :
nnoremap ' `
nnoremap ` '

" Create more useful backup/swap files
set backupdir=./.backup,/tmp
set directory=.,./.backup,/tmp

" Newbie mode
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" Some <leader> commands
" 1) Easy use of Ack
" 2) Quickly refill text with ,q, "M-q" style
" 3) Reselect just pasted text
nnoremap <leader>a :Ack
nnoremap <leader>q gqip
nnoremap <leader>v V`
nnoremap <silent> <F3> :YRShow<cr>
inoremap <silent> <F3> <ESC>:YRShow<cr>
nnoremap <leader><tab> :Sscratch<cr>
" Window splitting
nnoremap <leader>w <C-w>h<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Back to normal shortcut
inoremap jj <ESC>

" Save on losing focus
au FocusLost * :wa

" Basic configuration
set nocompatible
set wildmenu      " Provide <tab> completion lists
set wildmode=list:longest
                  " Make <tab> completed lists shell-like
set nowrap        " don't wrap lines
set tabstop=4     " a tab is four spaces
set backspace=indent,eol,start
                  " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set ruler         " show current line/column/percentage
set copyindent    " copy the previous indentation on autoindenting
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'

" Sane searches with perl/py regex format
nnoremap / /\v
vnoremap / /\v
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type
set gdefault      " do global replace on lines by default

" <leader><space> clears a search
nnoremap <leader><space> :noh<cr>

" <tab> around to match brackets
nnoremap <tab> %
vnoremap <tab> e

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.cl

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beepass
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep
set shortmess=atI        " Shorten a lot of system messages
			
"set relativenumber       " show motion numbers
"set undofile             " create persistent undos

"Enable filetype stuff
syntax on 
filetype on
filetype plugin on
filetype indent on

if has('autocmd')
	autocmd filetype python set expandtab
endif

if &t_Co >= 16 || has("gui_running")
   colorscheme wombat 
endif

if &t_Co > 2 || has("gui_running")
   " switch syntax highlighting on, when the terminal has colors
   syntax on
endif
