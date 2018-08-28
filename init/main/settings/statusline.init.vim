


function! InsertStatuslineColor(mode)
  if a:mode == 'i'
    hi statusline ctermfg=6 ctermbg=236
  elseif a:mode == 'r'
    hi statusline ctermfg=5 ctermbg=236
  else
    hi statusline ctermfg=1 ctermbg=236
  endif
endfunction

au InsertEnter * call InsertStatuslineColor(v:insertmode)
au InsertLeave * hi statusline ctermfg=9 ctermbg=236

" default the statusline to green when entering Vim
autocmd ColorScheme * hi statusline ctermfg=9 ctermbg=236


" Dictionary: take mode() input -> longer notation of current mode
" mode() is defined by Vim
let g:currentmode={ 
      \ 'n'  : 'Normal ',    'no' : 'N·Operator Pending ', 
      \ 'v'  : 'Visual ',    'V'  : 'V·Line ', 
      \ '^V' : 'V·Block ',   's'  : 'Select ',
      \ 'S'  : 'S·Line ',    '^S' : 'S·Block ',
      \ 'i'  : 'Insert ',    'R'  : 'Replace ',
      \ 'Rv' : 'V·Replace ', 'c'  : 'Command ', 
      \ 'cv' : 'Vim Ex ',    'ce' : 'Ex ',
      \ 'r'  : 'Prompt ',    'rm' : 'More ',
      \ 'r?' : 'Confirm ',   '!'  : 'Shell ', 
      \ 't'  : 'Terminal '}


function! ModeCurrent() abort
	let l:modecurrent = mode()
	" use get() -> fails safely, since ^V doesn't seem to register
	"     " 3rd arg is used when return of mode() == 0, which is case
	"     with ^V
	"         " thus, ^V fails -> returns 0 -> replaced with 'V Block'
	let l:modelist = toupper(get(g:currentmode, l:modecurrent, 'V·Block '))
	let l:current_status_mode = l:modelist
	return l:current_status_mode
endfunction


set laststatus=2
set statusline=
set statusline+=\ %{ModeCurrent()}

set statusline+=%#StatusLine#
set statusline+=\ %f
set statusline+=\ %*

set statusline+=%=

set statusline+=%#function#
set statusline+=\ \ %p%%
set statusline+=\ \ \ \%*

set statusline+=%#keyword#
set statusline+=\ %l:%L
set statusline+=\ %*
"
"
"
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"
"
"
"hi User1 ctermbg=green ctermfg=red   guibg=green guifg=red
"hi User2 ctermbg=red   ctermfg=blue  guibg=red   guifg=blue
"hi User3 ctermbg=blue  ctermfg=green guibg=blue  guifg=green



" Formats the statusline
"set statusline=%f                           " file name
"set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
"set statusline+=%{&ff}] "file format
"set statusline+=%y      "filetype
"set statusline+=%h      "help file flag
"set statusline+=%m      "modified flag
"set statusline+=%r      "read only flag
"
"
"set statusline+=\ %=                        " align left
"set statusline+=Line:%l/%L[%p%%]            " line X of Y [percent of file]
"set statusline+=\ %=                        " align left
"set statusline+=Line:%l/%L[%p%%]            " line X of Y [percent of file]
"set statusline+=\ Col:%c                    " current column
"set statusline+=\ Buf:%n                    " Buffer number
"set statusline+=\ [%b][0x%B]\               " ASCII and byte code under cursor
"
"
"
