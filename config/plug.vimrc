call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

Plug 'itchyny/lightline.vim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'Yggdroot/LeaderF'
Plug 'Shougo/echodoc.vim'
Plug 'ycm-core/YouCompleteMe'
Plug 'ludovicchabant/vim-gutentags'
Plug 'preservim/nerdtree'
Plug 'skywind3000/gutentags_plus'

" Initialize plugin system
call plug#end()
