execute pathogen#infect()
syntax enable
filetype plugin indent on

set autoread
set smartindent
set tabstop=4
set shiftwidth=4
set cmdheight=1
set expandtab
set nu
set relativenumber
set number
set nohlsearch

let g:solarized_termcolors=256
set background=dark

" solarized options 
colorscheme solarized
let g:airline_theme = 'solarized'
let g:airline_powerline_fonts = 1

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
