colorscheme solarized

inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

let g:lightline = { 'colorscheme': 'solarized' }

map <C-n> :NERDTreeToggle<CR>

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

set autoread
set background=dark
set backspace=indent,eol,start
set cursorcolumn
set cursorline
set expandtab
set fenc=utf-8
set hidden
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set nobackup
set noswapfile
set number
set shiftwidth=2
set showcmd
set showmatch
set smartindent
set smartcase
set tabstop=2
set virtualedit=onemore

syntax enable
