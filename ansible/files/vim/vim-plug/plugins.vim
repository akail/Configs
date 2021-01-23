if has('nvim')
    let plug_dir = '~/.local/share/nvim/plugged'
else
    let plug_dir = '~/.vim/plugged'
endif

call plug#begin(plug_dir)
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
"Plug 'w0rp/ale'

" Tagbar
Plug 'majutsushi/tagbar'

" Vim Surround
Plug 'tpope/vim-surround'

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

" Better tmux navigation
Plug 'christoomey/vim-tmux-navigator'

" Vimux
Plug 'benmills/vimux'

" Vim indentation guides
Plug 'nathanaelkane/vim-indent-guides'

" Easy motion
Plug 'easymotion/vim-easymotion'

" Repeat better with .
Plug 'tpope/vim-repeat'

if $ENABLE_DEVICONS=="1"
    Plug 'ryanoasis/vim-devicons'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
endif


Plug 'sheerun/vim-polyglot'

if $ENABLE_VIM_FULL==1

    " Testing stuff

    if has('python3')
        Plug 'SirVer/ultisnips'
    endif
    Plug 'mhinz/vim-startify'
    Plug 'janko/vim-test'
    Plug 'honza/vim-snippets'
    Plug 'lervag/vimtex'
    Plug 'jpalardy/vim-slime', { 'for': 'python' }
    Plug 'hanschen/vim-ipython-cell', { 'for': 'python' }
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'vimwiki/vimwiki'
endif


call plug#end()
