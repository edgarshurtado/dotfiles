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

"You Complete Me
NeoBundle 'https://github.com/Valloric/YouCompleteMe.git'

"Tern For VIM (Better autocompletion for JS)
NeoBundle 'https://github.com/ternjs/tern_for_vim.git'

"Auto Pairs
NeoBundle 'https://github.com/jiangmiao/auto-pairs.git'

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

"----- UnitSnips -------------
NeoBundle 'https://github.com/SirVer/ultisnips.git'
NeoBundle 'https://github.com/honza/vim-snippets.git'

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
 let g:UltiSnipsExpandTrigger="<c-a>"
 let g:UltiSnipsJumpForwardTrigger="<c-j>"
 let g:UltiSnipsJumpBackwardTrigger="<c-k>"
 
"---------VIM Obsession-----------------------------
NeoBundle "https://github.com/tpope/vim-obsession.git"


"--------- Syntaxtic -----------------------------
NeoBundle "https://github.com/scrooloose/syntastic.git"

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

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
syntax on " Comment when using solarized colorscheme

"Markdown compatibility
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']

"display line numbers
set relativenumber
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
syntax enable
set background=dark
"colorscheme solarized

"---------- Search Configuration --------------

set incsearch           " search as characters are entered
set hlsearch            " highlight matches

"---------- Use system clipboard  --------------
set clipboard=unnamed


"---------- Nerd Tree Configuration--------------
map <C-n> :NERDTreeToggle<CR>
