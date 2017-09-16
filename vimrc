" ~/.vimrc (configuration file for vim only)
" Andrew Kail's vimrc configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""
" Installed Plugins & Software
"
"   - NERDTree
"   - miniBuffExplorer
"   - NERDCommenter
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""

" Vundle Settings and installation
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let vundle manage vundle
Plugin 'VundleVim/Vundle.vim'

" Gruvbox colorscheme
Plugin 'morhetz/gruvbox'

" Commenting plugin
Plugin 'scrooloose/nerdcommenter'

" File tree explorer
Plugin 'scrooloose/nerdtree'

" Buffer Explorer Tabs
Plugin 'fholgado/minibufexpl.vim'

" Status bar for bottom
Plugin 'bling/vim-airline'

" Folding Plugin
" Plugin 'tmhedberg/SimpylFold'

" Python autocomplete
"Plugin 'davidhalter/jedi-vim'

" Syntax Checking
" Plugin 'vim-syntastic/syntastic'

" Python Mode
" Plugin 'python-mode/python-mode'


call vundle#end()
filetype plugin indent on " required (?)



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

"au! BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Python specific space settings 
"au BufNewFile,BufRead *.py
    "\ set textwidth=79
    "\ set expandtab
    "\ set autoindent
    "\ set fileformat=unix
        

:map <MiddleMouse> <Nop>
:imap <MiddleMouse> <Nop>

nmap j gj
nmap k gk

nmap \q :nohlsearch<CR>

nmap <C-n> :bnext<CR>
nmap <C-p> :bprev<CR>

nmap \e :NERDTreeToggle<CR>

nmap <F3> :wqa <Enter>
nmap <F8> :TagbarToggle<CR>
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l

" Set colorscheme
set t_Co=256
colorscheme gruvbox
let python_highlight_all=1
set background=dark " use light or dark for gruvbox
let g:gruvbox_contrast_light = "hard"
syntax on

" Air Line Settings
set laststatus=2

" Code Folding
"set foldmethod=indent
"set foldlevel=99
"let g:SimpylFold_docstring_preview = 1 " Enable docstrings to be shown
"autocmd BufWinLeave *.* mkview
"autocmd BufWinEnter *.* silent loadview 

" syntastic settings
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 0
"let g:syntastic_check_on_wq = 0

"let g:syntastic_python_checkers = ['pylint']

"let g:syntastic_mode_map = {
            "\ "mode": "passive",
            "\ "passive_filetypes": ["python"] }

" Airline settings
let g:airline_powerline_fonts = 1

"autocmd FileType python setlocal completeopt-=preview

" Python vim mode
let g:pymode_python = 'python3'
let g:pymode_folding = 0 " disable folding
"let g:pymode_lint_checkers = ['pylint']
let g:pymode_lint_ignore = "E501"
