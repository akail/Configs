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

" Toggle Relative line numbers
nmap \r :set rnu!<CR>

" Clear highlighted items
nmap \q :nohlsearch<CR>

" custom saving and closing bindings
nmap <F2> :wa <Enter>
nmap <F3> :wqa <Enter>
nmap <F4> :qa <Enter>


