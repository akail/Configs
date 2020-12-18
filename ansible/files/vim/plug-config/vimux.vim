nmap <Leader>vp :VimuxPromptCommand<CR>
nmap <Leader>vl :VimuxRunLastCommand<CR>
nmap <Leader>vc :VimuxCloseRunner<CR>

if !empty($TMUX)
    " TMUX Specific settings
    
    " Use vimux for vim-test
    let test#strategy = "vimux"
endif
