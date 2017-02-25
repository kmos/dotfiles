set nocompatible
filetype off                  " required

" load vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Raimondi/delimitMate'
" All of your Plugins must be added before the following line
call vundle#end()   

"set clipboard=exclude:.*

set encoding=utf-8
setglobal fileencoding=utf-8
set termencoding=utf-8

set t_Co=256                                          
call pathogen#infect()  
call pathogen#helptags()
syntax on                                                  
set background=dark " dark | light "                       
"let g:solarized_termcolors=256

"colorscheme koehler


set cursorline
set number

autocmd User Node if &filetype == "javascript" | setlocal expandtab | endif
let g:used_javascript_libs = 'underscore,backbone'

set laststatus=2


"let g:solarized_termtrans = 1

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline

" copy and paste
 vmap <C-c> "+yi
 vmap <C-x> "+c
 vmap <C-v> c<ESC>"+p
 imap <C-v> <ESC>"+pa

"NERDTree Config
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"autocmd vimenter * NERDTree

"tab and split config
map <C-t> :tabn<CR>
map <C-y> :tabclose<CR>
"Gundo Config
map <C-g> :GundoToggle<CR>

"paste code without automatic indentation
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>

if has("autocmd")
" Ensure tabs in Makefiles.
autocmd FileType make setlocal noexpandtab
" Support Format-Flowed in email (mutt).
autocmd FileType mail setlocal fo+=aw
" Fix up imports in Go.
autocmd FileType go let g:gofmt_command = "goimports"
autocmd FileType go au BufWritePre <buffer> Fmt
" Run golint on :w.
autocmd BufWritePost,FileWritePost *.go execute ':Lint' | cwindow
endif

hi Normal ctermbg=none
set clipboard=unnamedplus
highlight NonText ctermbg=none

set expandtab
set shiftwidth=2
set softtabstop=2

"Powerline
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

"Nerdcommenter
filetype plugin indent on

let g:jedi#auto_initialization = 0

colorscheme solarized
call togglebg#map("<F5>")

"syntastic config and standard js
let g:syntastic_javascript_checkers = ['standard']
autocmd bufwritepost *.js silent !standard-format -w %
set autoread

"syntax colors for some javascript lib
let g:used_javascript_libs = 'angularjs,react,jquery'

"vim-syntax
let g:javascript_plugin_jsdoc = 1
