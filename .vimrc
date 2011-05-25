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
nnoremap j gj
nnoremap k gk
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
cnoremap <C-A> <Home>
cnoremap <C-E> <End>

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
" spellcheck
map <silent> <leader>s :set spell!<CR>
set nospell

" Insert linebreak
nnoremap K mqi<CR><ESC>'q

" Back to normal shortcut
inoremap jj <ESC>

" Save on losing focus
au FocusLost * :wa

" Basic configuration
set nocompatible
map Y y$
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
set pastetoggle=<F2> "Easy pastemode swapping
set winaltkeys=no " stop allowing alt to access the menu

" Sane searches with perl/py regex format
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
set grepprg=grep\ -nH\ $* " Make grep behave nicely for LaTeX

"set relativenumber       " show motion numbers
"set undofile             " create persistent undos

" Custom bundle configurations
set ruler
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
set laststatus=2

" Whitespace
" Call the strip trailing whitespace function as a command
command! StripTrailingWhitespaces call s:StripTrailingWhitespaces()

" A function to strip trailing whitespace and clean up afterwards so
" that the search history remains intact and cursor does not move.
" Taken from: http://vimcasts.org/episodes/tidying-whitespace
function! s:StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

map <leader>w :StripTrailingWhitespaces<CR>


" Haskell Mode
au Bufenter *.hs compiler ghc
let g:haddock_browser = "open"
let g:haddock_browser_callformat = "%s %s"



" NERDTree

map <leader>x :NERDTreeToggle<CR>
map <leader>b :NERDTreeFromBookmark<Space>
nnoremap <silent> <leader>f :NERDTreeFind<CR>
" files/dirs to ignore in NERDTree (mostly the same as my svn ignores)
let NERDTreeIgnore=[
    \'\~$',
    \'\.pt.cache$',
    \'\.Python$',
    \'\.svn$',
    \'\.git*$',
    \'\.pyc$',
    \'\.pyo$',
    \'\.mo$',
    \'\.o$',
    \'\.lo$',
    \'\.la$',
	\'\.aux$',
	\'\.log$',
	\'\.bbl$',
    \'\..*.rej$',
    \'\.rej$',
    \'\.\~lock.*#$',
    \'\.AppleDouble$',
    \'\.DS_Store$']
" set the sort order to alphabetical
let NERDTreeSortOrder=[]
" when the root is changed, change Vim's working dir
let NERDTreeChDirMode=2


" Fuzzy Finder

" max results, lot o' files in a buildout :)
let g:fuzzy_ceiling=35000
" show full paths
let g:fuzzy_path_display = 'highlighted_path'
" ignored files
let g:fuzzy_ignore = "*.png;*.PNG;*.pyc;*.pyo;*.JPG;*.jpg;*.GIF;*.gif;.svn/**;.git/**;*.mo;.DS_Store;.AppleDouble"
" available modes
let g:FuzzyFinderOptions = {
    \'File': {'mode_available': 1},
    \'Buffer': {'mode_available': 0},
    \'Dir': {'mode_available': 0},
    \'MruFile': {'mode_available': 0},
    \'MruCmd': {'mode_available': 0},
    \'Bookmark': {'mode_available': 0},
    \}
" Don't delete a full path when using backspace in file mode
let g:FuzzyFinderOptions.File.smart_bs = 0

" Shortcuts for opening fuzzy finder
nmap <leader>ff :FufFile<Space>../**/
nmap <leader>ft :FufTag<Space>


" TagList
nnoremap <leader>lt :Tlist<CR>
nnoremap <leader>la :TlistAddFilesRecursive 
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Close_On_Select = 1

" Enable filetype stuff
syntax on 
filetype on
filetype plugin on
filetype indent on
let g:tex_flavor='latex'


if has('autocmd')
	autocmd filetype python set expandtab
endif

" Solarized colorscheme
syntax enable
set background=dark
colorscheme solarized
