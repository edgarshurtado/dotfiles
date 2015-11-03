" Note: Skip initialization for vim-tiny or vim-small.
if !1 | finish | endif

if has('vim_starting')
if &compatible
set nocompatible " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

"%%%%%%%% YOUR PLUGINS HERE %%%%%%%%
"Use the following format for each plugin:
" NeoBundle “<url to the repo>”

"Easy Motion
NeoBundle 'https://github.com/easymotion/vim-easymotion.git'

"Nerd Tree
NeoBundle 'https://github.com/scrooloose/nerdtree.git'

"installation of phpcomplete
NeoBundle 'Shougo/vimproc', {
      \ 'build' : {
      \     'windows' : 'make -f make_mingw32.mak',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
     \ }
NeoBundle 'Shougo/unite.vim'
NeoBundle 'm2mdas/phpcomplete-extended'
"%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.



NeoBundleCheck

"%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
"PERSONAL CONFIGURATIONS
"%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

"for getting the syntax highlight by default
filetype plugin indent on
syntax on

"Markdown compatibility
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']

"display line numbers
set number

"Display a ruler for line length
set colorcolumn=80

" ----------- Tabs width configuration ---------------------
" Configuration extracted from
" http://stackoverflow.com/questions/234564/tab-key-4-spaces-and-auto-indent-after-curly-braces-in-vim

filetype plugin indent on 
set tabstop=4 " show existing tab with 4 spaces width
set shiftwidth=4 " when indenting with '>', use 4 spaces width
set expandtab " On pressing tab, insert 4 spaces

" ------------ Color Scheme -------------
colorscheme codeschool
