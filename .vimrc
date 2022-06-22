set nocompatible
set encoding=utf-8
let mapleader=","
filetype indent plugin on

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Raimondi/delimitMate'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'maxboisvert/vim-simple-complete'
Plug 'vimwiki/vimwiki'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'matze/vim-move'
Plug 'junegunn/goyo.vim'
Plug 'elixir-editors/vim-elixir', { 'for': 'elixir' }
call plug#end()

colorscheme avanier
set t_Co=256
set background=dark

set number
set backspace=indent,eol,start
set showmode
set showcmd
set autoread
set laststatus=2
set splitright
set splitbelow
set visualbell
set history=500
set ruler
set nostartofline
set ttyfast
set mouse=a
set incsearch
set hlsearch
set ignorecase
set smartcase
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set expandtab
set softtabstop=2
set tabstop=2
set colorcolumn=81
set linebreak
set textwidth=0
set nolist
set lazyredraw
set wildmode=longest,list,full
set wildmenu
set scrolloff=10
set sidescrolloff=15
set sidescroll=1

set foldmethod=indent
set foldlevel=99

let g:airline_theme='monochrome'

autocmd!

au! BufWritePost *.wiki :silent Vimwiki2HTML

" purge trailing whitespace on save
au BufWritePre * %s/\s\+$//e

" reload vimrc on save
au! BufWritePost .vimrc so ~/.vimrc

" return to last edit position
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

au FileType {make,gitconfig,go} setl noexpandtab

nmap <Tab> <C-w>w
nnoremap <space> za
nmap 7 :vertical res-5<CR>
nmap 8 :vertical res+5<CR>
nmap 9 :res-5<CR>
nmap 0 :res+5<CR>
nmap <C-f> :Files!<CR>
nmap <Leader>g :Goyo<CR>
nmap <Leader>f :FZF<CR>

if bufname("%")=="COMMIT_EDITMSG"
  set spell
  set spelllang=en
endif

let delimitMate_expand_cr = 1
let g:move_key_modifier = 'C'
let g:gitgutter_sign_modified = '~'
let g:airline_extensions = []

let g:goyo_width = 120
let g:goyo_height = '90%'

set signcolumn=yes
set complete-=t
set complete-=i

let g:vimwiki_list = [{
  \ 'path': '$HOME/grimoire',
  \ 'path_html': '$HOME/vimwiki_html',
  \ 'template_path': '$HOME/grimoire/templates',
  \ 'template_default': 'default',
  \ 'template_ext': '.html'}]

if has('syntax')
  syntax on
  syntax enable
endif

