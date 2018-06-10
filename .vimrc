if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Vim
call plug#begin('~/.vim/plugged')

Plug 'neomake/neomake'

" Helpers
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'mbbill/undotree'
Plug 'junegunn/goyo.vim'
Plug 'scrooloose/syntastic'
Plug 'mutewinter/nginx.vim'
Plug 'vitalk/vim-simple-todo'
Plug 'irrationalistic/vim-tasks'
Plug 'terryma/vim-multiple-cursors'
Plug 'xojs/vim-xo'

" Visually
Plug 'airblade/vim-gitgutter'
Plug 'godlygeek/tabular'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'majutsushi/tagbar'
Plug 'ap/vim-css-color'
Plug 'gregsexton/matchtag'
Plug 'luochen1990/rainbow'
Plug 'Chiel92/vim-autoformat'
Plug 'mhinz/vim-startify'

" Themes
Plug 'kristijanhusak/vim-hybrid-material'

" Languages
Plug 'fatih/vim-go'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'calviken/vim-gdscript3'
Plug 'sophacles/vim-processing'

" NEARDie
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'ivalkeen/nerdtree-execute'
Plug 'nopik/vim-nerdtree-direnter'

call plug#end()

autocmd VimEnter *
    \ if !empty(filter(copy(g:plugs), '!isdirectory(v:val.dir)'))
    \|  PlugInstall | q
    \| endif

" Leader
let mapleader="\\"

set clipboard=unnamed

if has("persistent_undo")
    set undodir=~/.undodir/
    set undofile
endif

" Neomake
call neomake#configure#automake('w')

" Visual - Settings
set number relativenumber cursorline
set expandtab
set t_Co=256
set scrolloff=999
let g:indent_guides_enable_on_vim_startup = 1
set backupcopy=yes

set shiftwidth=4 tabstop=4 softtabstop=4
set backspace=indent,eol,start

" Theming - Settings
set background=dark
colorscheme hybrid_material
hi Normal ctermfg=252 ctermbg=none

" Go
let g:go_disable_autoinstall = 0
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" JSx
let g:jsx_ext_required = 0

" Rainbow
let g:rainbow_active = 1

" NEARDie - Settings
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'right'
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeShowHidden = 1

" Syntastic - settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_javascript_checkers = ['xo']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

" NEARDie - mappings
map <C-n> :NERDTreeToggle<CR>
let NERDTreeMapOpenInTab='<ENTER>'

" Undo
map <C-m> :UndotreeToggle<CR>

" Custom - mappings
nmap <F8> :TagbarToggle<CR>

" Tabs
noremap <S-l> gt
noremap <S-h> gT

" Quit files
noremap <leader>q :q<CR>
" Save files
noremap <leader>s :w<CR>

noremap <F3> :Autoformat<CR>
