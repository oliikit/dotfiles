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
  Plug '/usr/local/opt/fzf'
  Plug 'junegunn/fzf.vim'
  Plug 'tpope/vim-surround'
  Plug 'scrooloose/nerdtree'
  Plug 'airblade/vim-gitgutter'
  Plug 'junegunn/goyo.vim'
  Plug 'junegunn/limelight.vim'
  Plug 'ycm-core/YouCompleteMe'
call plug#end()

" maps fzf cmd
map ; :Files<CR>

" maps nerdtree open cmd
map <C-o> :NERDTreeToggle<CR>
