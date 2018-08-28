" indent-guides
"let g:indent_guides_enable_on_vim_startup=1 " enable indent-guides
let g:indent_guides_guide_size =1
let g:indent_guides_start_level=1
let g:indent_guides_auto_colors=0 " enable auto colors
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd   ctermbg=237
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven  ctermbg=237

" indentLine
"let g:indentLine_enabled = 0 " disable by default
let g:indentLine_char = '⎸'

" fugitive.vim
set statusline+=%{FugitiveStatusline()}

" syntasic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = {
      \ 'mode': 'passive',
      \ 'active_filetypes': ['c','cpp','python3']
      \}

" lightline
" let g:lightline = {
"      \ 'colorscheme': 'onedark',
"      \ }
