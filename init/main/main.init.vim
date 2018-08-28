"文字コードをUFT-8に設定
set fenc=utf-8
" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile
" 編集中のファイルが変更されたら自動で読み直す
set autoread

" exchange tab to 2 space
set tabstop=2 shiftwidth=2 expandtab

" numer
set number

" disable mouse
augroup entercmd
  autocmd!
  autocmd VimEnter * highlight statusline ctermfg=7
  "  autocmd VimEnter * silent !xinput disable 12
augroup END

augroup quitcmd
  autocmd!
  autocmd VimLeave * !xinput enable 12
augroup END

nnoremap <silent><space>d :<C-u>!xinput disable 12<cr><esc>:highlight LineNr ctermfg=023<cr><esc>:hi statusline ctermfg=023<cr>
nnoremap <silent><space>e :<C-u>!xinput enable 12<cr><esc>:highlight LineNr ctermfg=239<cr><esc>:hi statusline ctermfg=7<cr>

" terminal mode
tnoremap <silent><ESC> <C-\><C-n>

" normal mode
nnoremap <silent><C-e> :NERDTreeToggle<CR> " nerdtree
nnoremap <silent><space>n :tabnew<cr>
nnoremap <silent><space>t :terminal<cr>

" insert mode
inoremap {<Enter> {}<Left><CR><CR><up><tab>
inoremap <silent><C-f> <right>
inoremap <silent><C-b> <C-[>
inoremap <silent><C-s> <C-p>
inoremap <silent><M-p> <C-p>
inoremap <silent><M-h> <C-h>

" highlight trailing whitespace
augroup HighlightTrailingSpaces
  autocmd!
  autocmd VimEnter,WinEnter,ColorScheme * highlight TrailingSpaces term=underline guibg=Red ctermbg=Red
  autocmd VimEnter,WinEnter * match TrailingSpaces /\s\+$/
augroup END

" highlight two-byte character
augroup highlightIdegraphicSpace
  autocmd!
  autocmd Colorscheme * highlight IdeographicSpace term=underline ctermbg=DarkGreen guibg=DarkGreen
  autocmd VimEnter,WinEnter * match IdeographicSpace /　/
augroup END

" remove trailing whitespace
aug space
  au!
  autocmd BufWritePre *.{c,cpp,py} :%s/\s\+$//ge
aug END
