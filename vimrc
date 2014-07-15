" ~/.vimrc (configuration file for vim only)
" skeletons
" Andrew Kail's vimrc configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""
" Installed Plugins & Software
"
"   - NERDTree
"   - miniBuffExplorer
"   - Bclose
"   - Taglist
"   - a.vim
"   - bufkill.vim
"   - cvim
"   - DoxygenToolkit
"   - NERDCommenter
"   - pathogen
"   - snipmate
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""


execute pathogen#infect()

" Simple Commands
set nomodeline
set ts=4
set shiftwidth=4	
set mouse=a
set nu
set ignorecase
set expandtab
"set font=Source\ Code\ Pro\ Semi-Bold\ 10
set incsearch
set smartcase
set hlsearch
set nobackup
set nowb
set noswapfile
set hidden

:map <MiddleMouse> <Nop>
:imap <MiddleMouse> <Nop>

nmap j gj
nmap k gk
nmap \q :nohlsearch<CR>
nmap <C-n> :bnext<CR>
nmap <C-p> :bprev<CR>
nmap \e :NERDTreeToggle<CR>
nmap <F3> :wqa <Enter>
"nmap <F4> :ConqueTermTab cgdb <Enter>
nmap <F8> :TagbarToggle<CR>
"nmap <F5> :make clean <Enter> <Enter>
"nmap <F6> :make <Enter>
"nmap <F7> :make run <Enter>
"let g:BASH_Ctrl_j='off'
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l

" File backup and undo
filetype plugin on
filetype indent on
"let g:C_Ctrl_j='off'

"autocmd GUIEnter * NERDTree | wincmd p

" Minibufexpl controls

let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplUseSingleClick = 1

" Command to close the buffer using Bclose
"command BC Bclose
"

" Smart way to move between windows

set t_Co=256
let g:solarized_termcolors=256
"colorscheme busybee
colorscheme molokai
"colorscheme solarized
"set background=dark

"au BufWinLeave * mkview
"au BufWinEnter * silent loadview

syntax on


set laststatus=2



