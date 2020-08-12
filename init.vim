"
call plug#begin('~/.local/share/nvim/plugged')
" Gruvbox colorscheme
Plug 'morhetz/gruvbox'

" Commenting plugin
Plug 'scrooloose/nerdcommenter'

" File tree explorer
Plug 'scrooloose/nerdtree'

" Status bar for bottom
Plug 'vim-airline/vim-airline'

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

" Vim color highlight
Plug 'ap/vim-css-color'

" Denite
"Plug 'Shougo/denite.nvim'

" Better tmux navigation
Plug 'christoomey/vim-tmux-navigator'

" Vim Wiki
Plug 'vimwiki/vimwiki'


" Vimux
Plug 'benmills/vimux'

" Testing stuff
Plug 'janko/vim-test'

Plug 'dhruvasagar/vim-table-mode'


" Python syntax highlighting
" Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plug 'vim-python/python-syntax'

" Snippets plugin
Plug 'sirver/ultisnips'

" Latex support s
Plug 'lervag/vimtex'

" Slime and IPython Cells 
Plug 'jpalardy/vim-slime', { 'for': 'python' }
Plug 'hanschen/vim-ipython-cell', { 'for': 'python' }
"Plug 'kshenoy/vim-signature'

"jeetsukumaran/vim-buffergator

" Vim indentation guides
Plug 'nathanaelkane/vim-indent-guides'

" Easy motion
Plug 'easymotion/vim-easymotion'

" Vim multiple cursors
" Messes with next buffer 
"Plug 'terryma/vim-multiple-cursors'

" Auto-increment dates
Plug 'tpope/vim-speeddating'

" Repeat better with .
Plug 'tpope/vim-repeat'

Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

call plug#end()

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

" Toggle Relative line numbers
nmap \r :set rnu!<CR>

" Clear highlighted items
nmap \q :nohlsearch<CR>


" Toggle file tree browser \e
nmap \e :NERDTreeToggle<CR>

" custom saving and closing bindings
nmap <F2> :wa <Enter>
nmap <F3> :wqa <Enter>
nmap <F4> :qa <Enter>

" tagbar config
nmap <F8> :TagbarToggle<CR>

" fzf
nmap \s :Files<CR>
nmap \b :Buffers<CR>

""""""""""""""""""""""""""""
" Colorscheme settings
""""""""""""""""""""""""""""
syntax on
set t_Co=256
silent! colorscheme gruvbox
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
  \ 'python': ['flake8', 'isort', 'pydocstyle'] ,
  \ 'latex': ['flake8', 'isort'] ,
  \ }
let g:ale_python_flake8_options = '--max-line-length=119'

" Deoplete
let g:deoplete#enable_at_startup=1
autocmd CompleteDone * silent! pclose!
"let g:deoplete#enable_profile = 1
call deoplete#custom#option('profile', v:true)

" DelimitMate
let delimitMate_nesting_quotes = ['"']

" Wiki config
let g:vimwiki_list = [{
            \'path': '~/Nextcloud2/NotesVimWiki/vimwiki/', 
            \ 'auto_export': 1,
            \ 'template_path': '~/Nextcloud2/NotesVimWiki/vimwiki/templates',
            \ 'template_default': 'default',
            \ 'template_ext': '.html'}]
let g:vimwiki_table_mappings=0
let g:vimwiki_table_auto_fmt=0 

" Vim table mode
let g:table_mode_corner='|'
 let g:table_mode_eval_formula_map = '<Leader>tmfe'

" Vimuxh shortcuts
nmap <Leader>vp :VimuxPromptCommand<CR>
nmap <Leader>vl :VimuxRunLastCommand<CR>
nmap <Leader>vc :VimuxCloseRunner<CR>

" vim-test settings
nmap <Leader>tn :TestNearest<CR>
nmap <Leader>tf :TestFile<CR>
nmap <Leader>ts :TestSuite<CR>
nmap <Leader>tl :TestLast<CR>
nmap <Leader>tv :TestVisit<CR>
let test#python#runner = 'pytest'

" fugitive git bindings
nnoremap <leader>ga :Git add %:p<CR><CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gc :Gcommit -v -q<CR>
nnoremap <leader>gt :Gcommit -v -q %:p<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>ge :Gedit<CR>
nnoremap <leader>gr :Gread<CR>
nnoremap <leader>gw :Gwrite<CR><CR>
nnoremap <leader>gl :silent! Glog<CR>:bot copen<CR>
nnoremap <leader>gp :Ggrep<Space>
nnoremap <leader>gm :Gmove<Space>
nnoremap <leader>gb :Git branch<Space>
nnoremap <leader>go :Git checkout<Space>
nnoremap <leader>gps :Git push<CR>
nnoremap <leader>gpl :Dispatch! git pull<CR>

" slim config
let g:slime_target = 'tmux'
let g:slime_python_ipython = 1
let g:slime_default_config = {
            \ 'socket_name': get(split($TMUX, ','), 0),
            \ 'target_pane': '{top-right}' }
let g:slime_dont_ask_default = 1

" vim-ipython-cell
let g:ipython_cell_delimit_cells_by = 'tags'
let g:ipython_cell_tag = '#C'

" map <Leader>r to run script
autocmd FileType python nnoremap <buffer> <Leader>ir :IPythonCellRun<CR>

" map <Leader>R to run script and time the execution
autocmd FileType python nnoremap <buffer> <Leader>iR :IPythonCellRunTime<CR>

" map <Leader>c to execute the current cell
autocmd FileType python nnoremap <buffer> <Leader>ic :IPythonCellExecuteCell<CR>

" map <Leader>C to execute the current cell and jump to the next cell
autocmd FileType python nnoremap <buffer> <Leader>iC :IPythonCellExecuteCellJump<CR>

" map <Leader>l to clear IPython screen
autocmd FileType python nnoremap <buffer> <Leader>il :IPythonCellClear<CR>

" map <Leader>x to close all Matplotlib figure windows
autocmd FileType python nnoremap <buffer> <Leader>ix :IPythonCellClose<CR>

" map [c and ]c to jump to the previous and next cell header
autocmd FileType python nnoremap <buffer> [i :IPythonCellPrevCell<CR>
autocmd FileType python nnoremap <buffer> ]i :IPythonCellNextCell<CR>

" map <Leader>h to send the current line or current selection to IPython
autocmd FileType python nnoremap <buffer> <Leader>ih <Plug>SlimeLineSend


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

"autocmd BufNewFile *.py r ~/nvim/skeleton.py


let g:python_highlight_all = 1


if !empty($TMUX)
    " TMUX Specific settings
    
    " Use vimux for vim-test
    let test#strategy = "vimux"
endif

 
" Snippets configuration
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
"let g:UltiSnipsSnippetDirectories=["UltiSnips", "/home/akail/code/Configs/snippets"]

" vimtex settings
let g:vimtex_compiler_progname = 'nvr'
let g:vimtex_view_method = 'zathura'
let g:tex_flavor='latex'
let g:vimtex_quickfix_mode=0
"let g:vimtex_syntax_enabled=1
set conceallevel=1
let g:tex_conceal='abdmg'

"vimtex deoplete support
call deoplete#custom#var('omni', 'input_patterns', {
            \ 'tex': g:vimtex#re#deoplete
            \})

" Vim color scheme seetings
"let g:indent_guides_enable_on_vim_startup = 1

" Easy motion configuration
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

" Spelling Should be near the bottom
set spell
set spelllang=en_us


