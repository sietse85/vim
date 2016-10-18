execute pathogen#infect('~/.vim/bundle/{}')
filetype on
syntax on
set background=dark
colorscheme solarized 
let g:solarized_termcolors=256
set t_Co=256
filetype plugin indent on

set number
set tabstop=4
set shiftwidth=4
set colorcolumn=110

set encoding=utf-8
set number

function! NumberToggle()
	if(&relativenumber == 1)
		set number
	else
		set relativenumber
	endif
endfunc

" numbertoggle"
nnoremap <C-n> :call NumberToggle()<cr>

" easymotion
let g:EasyMotion_do_mapping = 0 " Disable the default mappings
nmap s <Plug>(easymotion-overwin-f)
nmap S <Plug>(easymotion-overwin-f2)
let g:EasyMotion_smartcase=1

map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

"tagbar
nmap <F8> :TagbarToggle<CR>

"syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
