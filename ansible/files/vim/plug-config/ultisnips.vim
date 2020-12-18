" Snippets configuration
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
"let g:UltiSnipsSnippetDirectories=["UltiSnips", "/home/akail/.config/nvim/UltiSnips"]

if !has('python3')
   let g:did_UltiSnips_vim = 1
   let g:did_UltiSnips_vim_after = 1
endif
