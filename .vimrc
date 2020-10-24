set number
set rnu
set tabstop=4 
set encoding=utf-8
let NERDTreeQuitOnOpen = 1

syntax on

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'morhetz/gruvbox'

"html
Plug 'mattn/emmet-vim'

"java
Plug 'artur-shaik/vim-javacomplete2'
call plug#end()

set background=dark
let g:gruvbox_contrast_dark = 'soft'
colorscheme gruvbox

autocmd FileType java setlocal omnifunc=javacomplete#Complete
nmap <F4> <Plug>(JavaComplete-Imports-AddSmart)
nmap <F5> <Plug>(JavaComplete-Imports-Add)
nmap <F6> <Plug>(JavaComplete-Imports-AddMissing)
nmap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)


"emmet Setting
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_leader_key='<C-l>'


"tabline enable
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'


"NerdTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-n> :NERDTreeToggle<CR>


"tabs control
map <C-a> :q!<CR>
map <C-s> :w<CR>
map <C-q> :q<CR>
map <C-w> :wq<CR>

let mapleader = "-"

map <leader>h :bp<CR>
map <leader>l :bn<CR>
map <leader>d: bdelete<CR>
map <leader>b :b<Space>
