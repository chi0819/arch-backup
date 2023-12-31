:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set scrolloff=6
:set mouse=a
:set path+=/usr/local/include/

call plug#begin()

Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'vim-airline/vim-airline'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

set encoding=UTF-8

call plug#end()

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

nnoremap <Space>v <C-w>v <CR> " split window vertically
nnoremap <Space>b <C-w>s <CR> " split window horizontally
nnoremap <Space>m <C-w>= <CR> " make split windows equal width & height
nnoremap <Space>q <ESC>:close <CR> " close current split window
nnoremap <Space>h <C-w>h <CR> " move cursor to left window
nnoremap <Space>j <C-w>j <CR> " move cursor to under window
nnoremap <Space>k <C-w>k <CR> " move cursor to above window
nnoremap <Space>l <C-w>l <CR> " move cursor to right window
nnoremap <Space>n <C-f> <CR> " move cursor to next page
nnoremap <Space>p <C-b> <CR> " move cursor to previous page
nnoremap <Space>u <C-r> <CR> " recover undo
nnoremap <Space>e <ESC>:NERDTreeToggle<CR>

:colorscheme jellybeans

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
