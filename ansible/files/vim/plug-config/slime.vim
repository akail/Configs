let g:slime_target = 'tmux'
let g:slime_python_ipython = 1
let g:slime_default_config = {
            \ 'socket_name': get(split($TMUX, ','), 0),
            \ 'target_pane': '{top-right}' }
let g:slime_dont_ask_default = 1

" map <Leader>h to send the current line or current selection to IPython
autocmd FileType python nnoremap <buffer> <Leader>ih <Plug>SlimeLineSend


