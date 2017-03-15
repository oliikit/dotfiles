set syntax=do
set filetype=on

set number

set hidden " Leave hidden buffers open

set history=100 " how much commands to save

set tabstop=2 shiftwidth=2 expandtab

call plug#begin('~/.vim/plugged')
  Plug 'ervandew/supertab'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
call plug#end()
