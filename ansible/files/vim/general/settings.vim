" General Configurations

set encoding=utf-8
set nomodeline
set mouse=a
set nu rnu
set ignorecase
set expandtab
set incsearch
set smartcase
set hlsearch
set nobackup
set nowb
set noswapfile
set hidden

" whitespace settings
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Code Folding
set foldlevel=99

syntax on
set t_Co=256
silent! colorscheme gruvbox
set background=dark " use light or dark for gruvbox
let g:gruvbox_contrast_dark = "hard"
let g:gruvbox_contrast_light = "hard"
set termguicolors

au BufNewFile,BufRead *.js,*.html,*.css
    \ set tabstop=2
    \| set softtabstop=2
    \| set shiftwidth=2

au BufNewFile,BufRead *.py
    \ set textwidth=119
    \| set expandtab
    \| set autoindent
    \| set fileformat=unix

au FileType python set cc=119
au FileType yaml set tabstop=2 softtabstop=2 shiftwidth=2

highlight BadWhiteSpace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/


let g:python_highlight_all = 1


