vnoremap < <gv
vnoremap > >gv
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'wincent/command-t'
Plugin 'Valloric/YouCompleteMe'
Plugin 'kchmck/vim-coffee-script'
Plugin 'https://github.com/scrooloose/nerdtree'
Plugin 'tmhedberg/SimpylFold'
Plugin 'pangloss/vim-javascript'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType python setlocal shiftwidth=4 tabstop=4

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
map <leader>]  :YcmCompleter GoToReferences<CR>

set shiftwidth=2
set tabstop=2
:set expandtab
:retab
:set nu
:set incsearch
:set hlsearch
nnoremap <space> za
