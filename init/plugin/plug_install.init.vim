" update plugins ->
" :PlugInstall
" :UpdateRemotePlugins

call plug#begin()
Plug 'roxma/nvim-completion-manager'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" differences
Plug 'brooth/Far.vim'

" git
Plug 'tpope/vim-fugitive'

" indent guides
"Plug 'nathanaelkane/vim-indent-guides'  " do not use
Plug 'Yggdroot/indentLine'              " use

" colorlise status line
" Plug 'itchyny/lightline.vim'
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
Plug 'liuchengxu/space-vim-dark'        " space-vim-dark -> recommended 'hi Comment cterm=italic'

" others
Plug 'scrooloose/nerdtree'
call plug#end()

