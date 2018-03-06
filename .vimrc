set nocompatible
filetype off

" Vim
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Neovim
" set rtp+=~/.config/nvim/bundle/Vundle.vim
" call vundle#begin('~/.config/nvim/bundle')

Plugin 'VundleVim/Vundle.vim'
Plugin 'neomake/neomake'

" Helpers
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'mbbill/undotree'
Plugin 'romgrk/winteract.vim'
Plugin 'junegunn/goyo.vim'
Plugin 'scrooloose/syntastic'
Plugin 'mutewinter/nginx.vim'
Plugin 'vitalk/vim-simple-todo'
Plugin 'irrationalistic/vim-tasks'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'francoiscabrol/ranger.vim'

" Visually
Plugin 'airblade/vim-gitgutter'
Plugin 'godlygeek/tabular'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'majutsushi/tagbar'
Plugin 'ap/vim-css-color'
Plugin 'gregsexton/matchtag'
Plugin 'luochen1990/rainbow'
Plugin 'dylanaraps/wal.vim'
Plugin 'Chiel92/vim-autoformat'

" Themes
Plugin 'morhetz/gruvbox'
Plugin 'kristijanhusak/vim-hybrid-material'

" Languages
Plugin 'fatih/vim-go'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

" NEARDie
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'xuyuanp/nerdtree-git-plugin'
Plugin 'ivalkeen/nerdtree-execute'
Plugin 'nopik/vim-nerdtree-direnter'

call vundle#end()

" Leader
let mapleader=" "

set clipboard=unnamed
set vb

if has("persistent_undo")
        set undodir=~/.undodir/
        set undofile
endif

" Neomake
call neomake#configure#automake('w')

" Visual - Settings
filetype plugin indent on
set number
set tabstop=4
set expandtab
set t_Co=256
set scrolloff=999
let g:indent_guides_enable_on_vim_startup = 1

" Theming = Settings
set background=dark
colorscheme wal

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
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:neomake_javascript_enabled_makers = ['eslint']

" NEARDie - mappings
map <C-n> :NERDTreeToggle<CR>
let NERDTreeMapOpenInTab='<ENTER>'

" Undo
map <C-m> :UndotreeToggle<CR>

" Custom - mappings
nmap <F8> :TagbarToggle<CR>
" Winteract
nmap gw :InteractiveWindow<CR>

" Tabs
noremap <S-l> gt
noremap <S-h> gT

" Quit files
noremap <leader>q :q<CR>
" Save files
noremap <leader>s :w<CR>

noremap <F3> :Autoformat<CR>
