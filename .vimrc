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

NeoBundle 'https://github.com/easymotion/vim-easymotion.git'

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
