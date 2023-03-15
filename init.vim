:set number
:set relativenumber
:set autoindent
:set tabstop=2 shiftwidth=2 
:set softtabstop=2
:set mouse=a
:set background=dark
:set noexpandtab
:set clipboard+=unnamedplus
:set completeopt=noinsert,menuone,noselect
:set cursorline
:set title
:set ttimeoutlen=0
:set wildmenu

:set list
set listchars=tab:\ \ ┊

set t_Co=256

syntax on

call plug#begin('/home/tbag/.config/nvim/plugged')

Plug 'EdenEast/nightfox.nvim', {'tag': 'v1.0.0'} " Vim-Plug
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/neoclide/coc.nvim', {'branch': 'master'}  " Auto Completion
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'

Plug 'mxw/vim-prolog' " Syntax highliting for swi-prolog

Plug 'nanozuki/tabby.nvim' " Gerir tabs

Plug 'kien/ctrlp.vim' " Search in file using ctrlp

Plug 'aspeddro/pandoc.nvim' " pandoc

Plug 'safv12/andromeda.vim'

Plug 'cdelledonne/vim-cmake'

Plug 'preservim/vim-indent-guides'

Plug 'digitaltoad/vim-pug'

set encoding=UTF-8

call plug#end()

" Criar comando pra ver PDF
:command! -complete=file -nargs=1 Rpdf :r !pdftotext -nopgbrk <q-args> -

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-B> :NERDTreeToggle<CR>

nnoremap <F8> :TagbarToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

nnoremap <F3> :tabp<CR>
nnoremap <F4> :tabn<CR>


" use s-tab for completion
inoremap <expr> <s-tab> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

:colorscheme duskfox
" :colorscheme andromeda

" Load the colorscheme
" colorscheme tokyonight

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDCommentEmptyLines = 1
let g:NERDToggleCheckAllLines = 1
let NERDTreeShowHidden=1
let NERDTreeMapOpenInTab='<F2>' " Open new tab when opening file from NerdTree

let g:airline#extensions#whitespace#enabled = 0

map ct <plug>NERDCommenterToggle

" Airline configuration
let g:airline_theme='one'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1



" Ctrlp configuration
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" Settings for vim indent guide
" let g:indent_guides_start_level = 2
" let g:indent_guides_guide_size = 2
" let g:indent_guides_enable_on_vim_startup = 1
