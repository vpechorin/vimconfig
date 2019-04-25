set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'L9'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'altercation/vim-colors-solarized'
Plugin 'majutsushi/tagbar'
Plugin 'airblade/vim-rooter'
Plugin 'tpope/vim-sensible'
Plugin 'vim-perl/vim-perl'
Plugin 'nathangrigg/vim-beancount'
Plugin 'udalov/kotlin-vim'

" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" show existing tab with 4 spaces width
set tabstop=4
" " when indenting with '>', use 4 spaces width
set shiftwidth=4
" " On pressing tab, insert 4 spaces
set expandtab

map <F3> :NERDTreeToggle<CR>
nmap <F4> :TagbarToggle<CR>
map <C-PageUp> :bp<CR>
map <C-PageDown> :bn<CR>

syntax enable

if has('gui_running')
    colorscheme solarized
    set background=dark
else
    set background=dark
endif

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

if has('gui_running')
  set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 12
endif


