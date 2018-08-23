" update plugins ->
" :PlugInstall
" :UpdateRemotePlugins

call plug#begin()
Plug 'roxma/nvim-completion-manager'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" differences
Plug 'brooth/Far.vim'

" indent guides
"Plug 'nathanaelkane/vim-indent-guides'  " do not use
Plug 'Yggdroot/indentLine'              " use

" colorlise status line
Plug 'itchyny/lightline.vim'
" syntastic
Plug 'vim-syntastic/syntastic'

" pathogen for syntastic
Plug 'tpope/vim-pathogen'

" haskell
Plug 'eagletmt/neco-ghc'                " completion
Plug 'dag/vim2hs'                       " syntax, indent

" python3
Plug 'davidhalter/jedi-vim'             " completion

" c++
Plug 'octol/vim-cpp-enhanced-highlight' " syntax highlight
"Plug 'justmao945/vim-clang'             " completion

" :Unite colorscheme -auto-preview
Plug 'Shougo/unite.vim'
Plug 'ujihisa/unite-colorscheme'

" colorschemes
Plug 'altercation/vim-colors-solarized' " solarized
Plug 'croaker/mustang-vim'              " mustang
Plug 'jeffreyiacono/vim-colors-wombat'  " wombat
Plug 'nanotech/jellybeans.vim'          " jellybeans
Plug 'vim-scripts/Lucius'               " lucius
Plug 'vim-scripts/Zenburn'              " zenburn
Plug 'mrkn/mrkn256.vim'                 " mrkn256
Plug 'jpo/vim-railscasts-theme'         " railscasts
Plug 'therubymug/vim-pyte'              " pyte
Plug 'tomasr/molokai'                   " molokai
Plug 'chriskempson/vim-tomorrow-theme'  " tomorrow night
Plug 'vim-scripts/twilight'             " twilight
Plug 'w0ng/vim-hybrid'                  " hybrid
Plug 'freeo/vim-kalisi'                 " kalisi
Plug 'morhetz/gruvbox'                  " gruvbox
Plug 'toupeira/vim-desertink'           " desertink
Plug 'sjl/badwolf'                      " badwolf
Plug 'itchyny/landscape.vim'            " landscape
Plug 'joshdick/onedark.vim'             " onedark in atom
Plug 'gosukiwi/vim-atom-dark'           " atom-dark
Plug 'joshdick/onedark.vim'             " onedark

" others
Plug 'scrooloose/nerdtree'
call plug#end()

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
let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ }

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
  "  autocmd VimEnter * silent !xinput disable 12
augroup END

augroup quitcmd
  autocmd!
  autocmd VimLeave * !xinput enable 12
augroup END

nnoremap <silent><space>d :<C-u>!xinput disable 12<cr><esc>:highlight LineNr ctermfg=023<cr>
nnoremap <silent><space>e :<C-u>!xinput enable 12<cr><esc>:highlight LineNr ctermfg=239<cr>

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

" colorscheme
execute pathogen#infect()
syntax on
set background=dark
set t_Co=256
colorscheme onedark
