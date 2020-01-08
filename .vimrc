set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'nathanaelkane/vim-indent-guides'

Plugin 'henrynewcomer/vim-theme-papaya'

Plugin 'Chiel92/vim-autoformat'

Plugin 'tpope/vim-fugitive'

Plugin 'junegunn/fzf'

Plugin 'vim-airline/vim-airline'

Plugin 'vim-airline/vim-airline-themes'

Plugin 'tpope/vim-surround'

Plugin 'mattn/emmet-vim'

Plugin 'sjl/badwolf'

Plugin 'airblade/vim-gitgutter'

Plugin 'scrooloose/nerdtree'

Plugin 'morhetz/gruvbox'

Plugin 'altercation/vim-colors-solarized'

Plugin 'posva/vim-vue'

Plugin 'valloric/youcompleteme'

call vundle#end()
filetype plugin indent on

:set number

syntax enable
:set background=dark
:color solarized

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'


set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
