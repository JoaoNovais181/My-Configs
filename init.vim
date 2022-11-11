:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
" set background=dark
set clipboard=unnamedplus
set completeopt=noinsert,menuone,noselect
set cursorline
set title
set ttimeoutlen=0
set wildmenu

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
" Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
" Plug 'Nopik/vim-nerdtree-direnter'  " not opening directories in new tabs
" Plug 'jistr/vim-nerdtree-tabs'    " Make nerdtree open in every tab

Plug 'nanozuki/tabby.nvim' " Gerir tabs

Plug 'kien/ctrlp.vim' " Search in file using ctrlp

set encoding=UTF-8

call plug#end()

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-B> :NERDTreeToggle<CR>

nnoremap <F8> :TagbarToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

nnoremap <F3> :tabp<CR>
nnoremap <F4> :tabn<CR>
" :set completeopt-=preview " For No Previews


:colorscheme duskfox

" Example config in VimScript
" let g:tokyonight_style = "night"
" let g:tokyonight_italic_functions = 1
" let g:tokyonight_sidebars = [ "qf", "vista_kind", "terminal", "packer" ]

" Change the "hint" color to the "orange" color, and make the "error" color bright red
" let g:tokyonight_colors = {
  " \ 'hint': 'orange',
  " \ 'error': '#ff0000'
" \ }

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

" function! s:check_back_space() abort
	" let col = col('.') - 1 
	" return !col || getline('.')[col - 1] =~ '\s'
" endfunction

" inoremap <silent><expr> <Tab>
	" \ pumvisible() ? "\<C-n>" :
	" \ <SID>check_back_space() ? "\<Tab>" :
	" \ coc#refresh()

" Airline configuration
let g:airline_theme='one'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1



" Ctrlp configuration
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
