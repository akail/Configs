"
call plug#begin('~/.local/share/nvim/plugged')
" Gruvbox colorscheme
Plug 'morhetz/gruvbox'

" Commenting plugin
Plug 'scrooloose/nerdcommenter'

" File tree explorer
Plug 'scrooloose/nerdtree'

" Status bar for bottom
Plug 'bling/vim-airline'

" Ctrp Fuzzy Searching
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Git management
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Asynchronous Linter
Plug 'w0rp/ale'

" Tagbar
Plug 'majutsushi/tagbar'

" Vim Surround
Plug 'tpope/vim-surround'

" jedi-vim
Plug 'Shougo/deoplete.nvim'
Plug 'zchee/deoplete-jedi'

" SuperTab
Plug 'ervandew/supertab'

" Future plugins to examine
" vim-markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

Plug 'Raimondi/delimitMate'

" Fix python indentation
Plug 'Vimjas/vim-python-pep8-indent'


" Jinja2 syntax support
Plug 'Glench/Vim-Jinja2-Syntax'

call plug#end()

" General Configurations

set encoding=utf-8
set nomodeline
set mouse=a
set nu
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
"set foldmethod=indent
set foldlevel=99
"let g:SimpylFold_docstring_preview = 1 " Enable docstrings to be shown
"autocmd BufWinLeave *.* mkview
"autocmd BufWinEnter *.* silent loadview 


        

""""""""""""""""""""""""""""
" Navigation 
""""""""""""""""""""""""""""
:map <MiddleMouse> <Nop>
:imap <MiddleMouse> <Nop>

" move vertically by visual line
nmap j gj
nmap k gk

" Navigate Splits
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l

" Switch to previous and next buffer entries ctrl n/p
nmap <C-n> :bnext<CR>
nmap <C-p> :bprev<CR>

""""""""""""""""""""""""""""
" Shortcuts
""""""""""""""""""""""""""""
" Clear highlighted items
nmap \q :nohlsearch<CR>


" Toggle file tree browser \e
nmap \e :NERDTreeToggle<CR>

" custom saving and closing bindings
nmap <F2> :wa <Enter>
nmap <F3> :wqa <Enter>
nmap <F4> :qa <Enter>
nmap <F3> :wqa <Enter>

" tagbar config
nmap <F8> :TagbarToggle<CR>

" fzf
nmap \s :Files<CR>

""""""""""""""""""""""""""""
" Colorscheme settings
""""""""""""""""""""""""""""
syntax on
set t_Co=256
colorscheme gruvbox
set background=dark " use light or dark for gruvbox
let g:gruvbox_contrast_dark = "hard"
let g:gruvbox_contrast_light = "hard"
set termguicolors

""""""""""""""""""""""""""""
" Plugin Settings
""""""""""""""""""""""""""""
" Air Line Settings
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1


"CtrlP settings
let g:ctrlp_map = '\s'

" ALe settings
let g:ale_linters = {
  \ 'python': ['flake8', 'isort', 'mypy'] ,
  \ }
let g:ale_python_flake8_options = '--max-line-length=119'

" Deoplete
let g:deoplete#enable_at_startup=1
autocmd CompleteDone * silent! pclose!
let g:deoplete#enable_profile = 1

" DelimitMate
let delimitMate_nesting_quotes = ['"']

""""""""""""""""""""""""""""
" Language Specific
""""""""""""""""""""""""""""

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \| set softtabstop=2
    \| set shiftwidth=2

au BufNewFile,BufRead *.py
    \| set textwidth=119
    \| set expandtab
    \| set autoindent
    \| set fileformat=unix

au FileType python set cc=119
au FileType yaml set tabstop=2 softtabstop=2 shiftwidth=2

highlight BadWhiteSpace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

autocmd BufNewFile *.py 0r ~/nvim/skeleton.py





