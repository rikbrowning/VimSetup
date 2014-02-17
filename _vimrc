syntax on
filetype on
filetype plugin on
filetype indent on
set omnifunc=syntaxcomplete#Complete
set smartindent
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set backspace=2 " make backspace work like most other apps
set smartcase "smart case for searching
set mousehide "Hide the mouse when typing text
set scrolloff=5 "keep 5 lines above/below
set number "set line numbers
set noerrorbells "no anoying bells please
set hlsearch
set nowrap
set nobackup
set noswapfile
set wildmode=longest:full
set wildmenu " allow some tab auto complete



if has("gui_running")
    set background=dark
    colorscheme solarized
    " set up my nice font
    set guifont=Consolas:h12
    "x on an English Windows version.
    au GUIEnter * simalt ~x

endif

"mappings
nore ; :
nore x dd
