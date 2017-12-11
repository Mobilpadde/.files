set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Helpers
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'mbbill/undotree'
Plugin 'thinca/vim-quickrun'

" Visually
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'godlygeek/tabular'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'majutsushi/tagbar'

" Themes
Plugin 'kristijanhusak/vim-hybrid-material'
Plugin 'vim-airline/vim-airline-themes'

" Languages
Plugin 'fatih/vim-go'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

" NEARDie
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'

call vundle#end()

" Leader
let mapleader = " "

" Visual - Settings
filetype plugin indent on
set number
let g:airline#extensions#tabline#enabled = 1
"let g:airline_theme = 'deus_theme'
let g:indent_guides_enable_on_vim_startup = 1

" Theming = Settings
set background=dark
colorscheme hybrid_material

" NEARDie - Settings
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" NEARDie - mappings
map <C-n> :NERDTreeToggle<CR>
" undotree - mappings
nnoremap <C-m> :UndotreeToggle<CR>
" quickrun = mappings
nnoremap <Leader><C-b> :QuickRun
" Custom - mappings
" map <Leader><C-s> :setlocal spell! spelllang=en_us<CR>
nmap <F8> :TagbarToggle<CR>
