"""""""""""""""""""""""""
""""    vim-plug     """"
"""""""""""""""""""""""""
call plug#begin('~/.local/share/nvim/plugged')

Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'majutsushi/tagbar'
Plug 'sbdchd/neoformat'
Plug 'artur-shaik/vim-javacomplete2'
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'neomake/neomake'
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-sensible'
Plug 'airblade/vim-rooter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'altercation/vim-colors-solarized'
Plug 'airblade/vim-gitgutter'
Plug 'Yggdroot/indentLine'

" Initialize plugin system
call plug#end()

"""""""""""""""""""""""""
""""    deoplete     """"
"""""""""""""""""""""""""
"let g:deoplete#enable_at_startup = 1
"let g:deoplete#omni_patterns = {}
"let g:deoplete#omni_patterns.java = '[^. *\t]\.\w*'
"let g:deoplete#sources = {}
"let g:deoplete#sources._ = []
"let g:deoplete#file#enable_buffer_path = 1


"""""""""""""""""""""""""
""""  Java Complete  """"
"""""""""""""""""""""""""
"autocmd FileType java setlocal omnifunc=javacomplete#Complete

"""""""""""""""""""""""""
""""     neomake     """"
"""""""""""""""""""""""""
"autocmd! BufWritePost,BufEnter * Neomake
" When writing a buffer (no delay).
"call neomake#configure#automake('w')
" When writing a buffer (no delay), and on normal mode changes (after 750ms).
"call neomake#configure#automake('nw', 750)
" When reading a buffer (after 1s), and when writing (no delay).
"call neomake#configure#automake('rw', 1000)
" Full config: when writing or reading a buffer, and on changes in insert and
" normal mode (after 1s; no delay when writing).
"call neomake#configure#automake('nrwi', 500)

"""""""""""""""""""""""""
""""     neoformat   """"
"""""""""""""""""""""""""
augroup astyle
  autocmd!
  autocmd BufWritePre * Neoformat
augroup END

" show existing tab with 4 spaces width
set tabstop=4
" " when indenting with '>', use 4 spaces width
set shiftwidth=4
" " On pressing tab, insert 4 spaces
set expandtab
set mouse=a

map <F3> :NERDTreeToggle<CR>
nmap <F4> :TagbarToggle<CR>
map <C-PageUp> :bp<CR>
map <C-PageDown> :bn<CR>


set noshowmode

syntax enable

if has('gui_running')
    colorscheme solarized
    set background=dark
else
    set background=dark
endif

let g:airline#extensions#tabline#enabled = 2
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#right_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = '|'
let g:airline_powerline_fonts = 1

if has('gui_running')
  set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 12
endif

