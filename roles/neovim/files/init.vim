set number

noremap m l
noremap l k
noremap k j
noremap j h

noremap <C-m> <C-w>l
noremap <C-l> <C-w>k
noremap <C-k> <C-w>j
noremap <C-j> <C-w>h

" Plugins installation with vim-plug
call plug#begin(stdpath('data') . '/plugged')
Plug 'scrooloose/nerdtree', { 'on': 'NERDTree' }
call plug#end()
