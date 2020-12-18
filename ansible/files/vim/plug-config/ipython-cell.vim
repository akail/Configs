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


