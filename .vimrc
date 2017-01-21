call plug#begin('~/.vim/plugged')
	Plug 'Shougo/neocomplete.vim'
	Plug 'Shougo/neosnippet'
	Plug 'Shougo/neosnippet-snippets'
	Plug 'SirVer/ultisnips'
	Plug 'fatih/vim-go'
	Plug 'scrooloose/nerdtree'
	Plug 'Xuyuanp/nerdtree-git-plugin'
	Plug 'majutsushi/tagbar'
	Plug 'ctrlpvim/ctrlp.vim'
call plug#end()

let g:molokai_original = 1

set incsearch
set hlsearch

let mapleader = ","

map <C-t> :NERDTreeToggle<CR>
map <F7> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>

autocmd FileType go nmap <leader>t  <Plug>(go-test)
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <Leader>i <Plug>(go-info)

set t_Co=256
colorscheme molokai

syntax enable  
filetype plugin on  
set number  
let g:go_disable_autoinstall = 0
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet', 'golint']
let g:go_metalinter_deadline = "5s"
let g:go_fmt_command = "goimports"

" neocomplete
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#enable_auto_select = 1
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction

let g:go_auto_type_info = 1
set updatetime=100

" Highlight
let g:go_highlight_functions = 1  
let g:go_highlight_methods = 1  
let g:go_highlight_structs = 1  
let g:go_highlight_operators = 1  
let g:go_highlight_build_constraints = 1 

" quickfix
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>

" window nav
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
