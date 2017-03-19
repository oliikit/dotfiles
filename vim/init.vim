set syntax=do
set filetype=on

" Setting relative numbers on files escept for current line
set relativenumber
set number

set hidden " Leave hidden buffers open

set history=100 " how much commands to save

set tabstop=2 shiftwidth=2 expandtab

call plug#begin('~/.vim/plugged')
  Plug 'ervandew/supertab'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
call plug#end()

" Airline Configurations
let g:airline_powerline_fonts = 1
let g:airline_theme = 'luna'
let g:airline#extensions#tabline#enabled = 1 " For buffer tabs
let g:airline_section_z = airline#section#create(['windowswap', '%3p%% ', 'linenr', ':%3v'])
