set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable 
set showcmd 
set ruler
set encoding=utf-8
set showmatch
set sw=3
set relativenumber
set laststatus=2
set bg=dark	
set bg=dark	
set tabstop=2 
set expandtab  
set shiftwidth=2
set autoindent  
set smartindent  
setlocal spell spelllang=es


set noshowmode

call plug#begin('~/.vim/plugged')

" Themes 
Plug 'morhetz/gruvbox'

" IDE
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'itchyny/lightline.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mattn/emmet-vim'
Plug 'codota/tabnite-vim' 

call plug#end()

colorscheme gruvbox
let g:gruvbox_constrast_dark = "hard"
let NERDTreeQuitOnOpen=1

let mapleader=" "

nmap <Leader>s <Plug>(easymotion-s2)

nmap <Leader>nt :NERDTreeFind<CR>
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>br o<br><Esc>
nmap <Leader>tg a<><Esc>i
nmap <Leader>c :!
nmap <Leader>cht a</<C-x><C-o><Esc>
nmap <Leader>tt i<C-t><Esc>
nmap :setlocal spell spelllang=es_es<cr> 
nmap :setlocal spell spelllang=en_en<cr>

" HTML
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
"autocmd FileType python let b:coc_suggest_disable = 1
"autocmd FileType javascript let b:coc_suggest_disable = 1
autocmd FileType scss setl iskeyword+=@-@

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

if $filetype == "javascript" || &filetype == "python"
  inoremap <c-space> <C-x><C-u>
else
  inoremap <silent><expr> <c-space> coc#refresh()
endif

let g:user_emmet_leader_key=","

" Comandos en modo insert de prueba "

inoremap UU <Esc>
