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
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

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

" Enable filetype stuff
syntax on
filetype on
filetype plugin on
filetype indent on

if has('autocmd')
	autocmd filetype python set expandtab
endif

if &t_Co >= 256 || has("gui_running")
   colorscheme mustang
endif

if &t_Co > 2 || has("gui_running")
   " switch syntax highlighting on, when the terminal has colors
   syntax on
endif
