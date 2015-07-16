"set clipboard=exclude:.*
set nocompatible                                           
set t_Co=256                                          
call pathogen#infect()                                     
syntax on                                                  
"set background=dark " dark | light "                       
"colorscheme solarized
colorscheme monokai
filetype plugin on

set encoding=utf-8
set termencoding=utf-8
set cursorline
set number

autocmd User Node if &filetype == "javascript" | setlocal expandtab | endif
let g:used_javascript_libs = 'underscore,backbone'

set laststatus=2


"let g:solarized_termtrans = 1

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"let g:airline_powerline_fonts = 1
"let g:Powerline_symbols = 'fancy'

"set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline

" copy and paste
 vmap <C-c> "+yi
 vmap <C-x> "+c
 vmap <C-v> c<ESC>"+p
 imap <C-v> <ESC>"+pa

map <C-n> :NERDTreeToggle<CR>
map <C-g> :GundoToggle<CR>

"paste code without automatic indentation
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>

let g:monokai_italic = 1

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
