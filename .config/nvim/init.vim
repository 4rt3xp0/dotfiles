set nocompatible
filetype plugin indent on
syntax enable
set encoding=utf-8
set number relativenumber
set splitbelow splitright
set nohlsearch incsearch ignorecase smartcase
set hidden
set mouse+=a
set scrolloff=4
set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab autoindent
set wrap linebreak
set ruler laststatus=2

call plug#begin()
Plug 'gruvbox-community/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'tomasiser/vim-code-dark'
Plug 'xiyaowong/nvim-transparent'
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim', {'for': 'html'}
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'lambdalisue/suda.vim'
Plug 'junegunn/fzf.vim'
Plug 'ThePrimeagen/vim-be-good'
call plug#end()

" set termguicolors
let g:gruvbox_contrast_dark='hard'
let g:transparent_enabled = v:true
set bg=dark
colors onedark
set nocursorline
set noshowmode
set showtabline=2
let g:lightline = {
    \ 'colorscheme': 'one',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ], [ 'readonly', 'absolutepath', 'modified' ] ]
    \ },
    \ 'tabline': {
    \   'left': [ ['buffers'] ],
    \   'right': [ ['close'] ]
    \ },
    \ 'component_expand': {
    \   'buffers': 'lightline#bufferline#buffers'
    \ },
    \ 'component_type': {
    \   'buffers': 'tabsel'
    \ },
    \ 'component': {
        \   'lineinfo': ' %l:%v'
    \ },
\ }
let g:lightline.separator = {
	\   'left': '', 'right': ''
	\}
let g:lightline.subseparator = {
	\   'left': '', 'right': '' 
	\}
let g:lightline.component_raw = {'buffers': 1}
let g:lightline#bufferline#clickable=1

let g:user_emmet_expandabbr_key = '<Tab>'
let g:AutoPairsShortcutToggle = ''
let g:AutoPairsShortcutBackInsert = ''
let g:AutoPairsShortcutFastWrap = ''
let g:AutoPairsShortcutJump = ''
autocmd FileType cpp setlocal commentstring=//%s
autocmd FileType c setlocal commentstring=//%s

let mapleader=" "
nnoremap <leader>p :PlugUpdate<CR>
nnoremap <leader>P :PlugInstall<CR>:PlugClean<CR>
nnoremap <leader>c :checkhealth<CR>
nnoremap <leader>r :source ~/.config/nvim/init.vim<CR>
nnoremap <leader>s :SudaWrite<CR>
nnoremap <leader>t :TransparentToggle<CR>
nnoremap <leader>g :set termguicolors!<CR>
nnoremap <leader>m :set showmode!<CR>
nnoremap <leader>n :set number! relativenumber!<CR>
nnoremap <leader>l :set cursorline!<CR>
nnoremap <leader>v :VimBeGood<CR>
nnoremap <leader>f :set filetype=
nnoremap <F2> :bprevious<CR>
nnoremap <F3> :bnext<CR>
nnoremap <F4> :buffers<CR>
nnoremap <F10> :bdelete<CR>
" nnoremap <F12> :bdelete<CR>
" cmap w!! w !sudo tee % >/dev/null
nmap <Leader>1 <Plug>lightline#bufferline#go(1)
nmap <Leader>2 <Plug>lightline#bufferline#go(2)
nmap <Leader>3 <Plug>lightline#bufferline#go(3)
nmap <Leader>4 <Plug>lightline#bufferline#go(4)
nmap <Leader>5 <Plug>lightline#bufferline#go(5)
nmap <Leader>6 <Plug>lightline#bufferline#go(6)
nmap <Leader>7 <Plug>lightline#bufferline#go(7)
nmap <Leader>8 <Plug>lightline#bufferline#go(8)
nmap <Leader>9 <Plug>lightline#bufferline#go(9)
nmap <Leader>0 <Plug>lightline#bufferline#go(10)
nmap <C-p> :FZF<CR>

set makeprg=g++\ -o\ %<\ %
autocmd filetype cpp nnoremap <F5> :w<CR>:make<CR>
autocmd filetype cpp nnoremap <F6> :term ./%<<CR>
nnoremap <leader>j :cnext<CR>
nnoremap <leader>k :cprevious<CR>
autocmd filetype tex nnoremap <F5> :w<CR>:!pdflatex %<CR>

nmap Q <Nop>
nmap ö 0
nmap Ó +
nmap á '
nmap Á "
nmap É :
nmap ő [
nmap Ő {
nmap ú ]
nmap Ú }
nnoremap Y y$
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z
vnoremap J :m '>+1'<CR>gv=gv
vnoremap K :m '<-2'<CR>gv=gv
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-Down> <C-w>j
nnoremap <C-Up> <C-w>k
nnoremap <C-Right> <C-w>h
nnoremap <C-Left> <C-w>l
