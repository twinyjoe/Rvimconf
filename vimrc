" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim80/vimrc_example.vim or the vim manual
" and configure vim to your own liking!

" do not load defaults if ~/.vimrc is missing
"let skip_defaults_vim=1

set  rtp+=/usr/lib/python3.6/site-packages/powerline/bindings/vim/
set laststatus=2
let base12colorspace=256
set t_Co=256

let python_highlight_all=1
syntax on
"mapleader
let mapleader=","
set nu

"-_-_-_-_-To add the proper PEP8 indentation, -_-_-_-_

"au BufNewFile,BufRead *.py
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent
set fileformat=unix

   
   " flagging whitespaces
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

set encoding=utf-8

set statusline+=%#warningmsg#
set statusline+=#{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za

set rtp+=~/.vim/bundle/supertab/plugin/supertab.vim


"-_-_-_-_-_-_-Vundel config-_-_-_-_-_-_-_-_-
"-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-
set nocompatible              " required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

"let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'vim-jp/ctags'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'jnurmine/Zenburn'
Plugin 'pangloss/vim-javascript'
Plugin 'jiangmiao/auto-pairs'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'airblade/vim-gitgutter'
Plugin 'ervandew/supertab'
Plugin 'majutsushi/tagbar'

"Plugin 'rkulla/pydiction'
" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"-_-_-_-_-_-_-onehalf theme -_-_-_-_-_-_-_-_-_-_
"Bundle 'sonph/onehalf', {'rtp': 'vim/'}
"colorscheme onehalfdark
"let g:airline_theme='onehalflight'
".


"--theme zenburn---
let g:zenburn_alternate_Visual = 1 
let g:zenburn_high_Contrast = 1
let g:zenburn_force_dark_Background = 1 
colors zenburn

"-- tagbar confugitation--
nmap <F8> :TagbarToggle<CR>

"------pydiction configuration-------
"filetype plugin on
"let g:pydiction_location = '/home/jijo/.vim/bundle/pydiction/complete-dict'


"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"______swich tabs______
nnoremap <F7> :tabp<CR>
nnoremap <F8> :tabn<CR>


set clipboard=unnamed

"----YouCompleteMe-----
"let g:ycm_python_binary_path = '/usr/bin/python3'
"let g:ycm_python_binary_path = 'python' 


"----Javascript Plugin here-----
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
"-----ctags--------
"let g:tagbar_ctags_bin


"_______________nerdtree_____________________"
"open NERDTree automatically when vim starts up on opening a directory"                                                 
autocmd StdinReadPre * let s:std_in=1                                                                                          
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif                                          
"open NERDTree with `Ctrl+n` "                                       
map <C-n> :NERDTreeToggle<CR> 
"close vim if the only window left open is a NERDTree"                                                                  
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif  


"------------------------
set autoread "detect whene file s changed"
set ttyfast "faster redrawing"


