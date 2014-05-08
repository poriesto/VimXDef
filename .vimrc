set nocompatible
filetype on
set t_Co=256
set rtp+=~/.vim/bundle/vundle/
set nu
set foldmethod=syntax
"colorscheme solarized
colorscheme molokai
let g:molokai_original = 1
"if has("gui_running")
"	set background=light
"else
"	set background=dark
"endif

if has("gui_running")
  if has("gui_gtk2")
    set guifont=Source\ Code\ Pro\ Semi-Bold\ 8
  elseif has("gui_photon")
    set guifont=Source\ Code\ Pro\ Semi-Bold:s8
  elseif has("gui_kde")
    set guifont=Source\ Code\ Pro\ Semi-Bold /8/-1/5/50/0/0/0/1/0
  elseif has("x11")
    set guifont=-*-courier-medium-r-normal-*-*-180-*-*-m-*-*
  else
    set guifont=Source_Pro_Semi-Bold:h8:cDEFAULT
  endif
endif

execute pathogen#infect()
syntax enable
filetype plugin indent on
call vundle#rc()

"репозитории на github
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'bling/vim-airline'
Bundle '907th/vim-auto-save'
"репозитории vim/scripts
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'rails.vim'
Bundle 'vundle'

set laststatus=2
let g:airline_theme='molokai'
let g:airline_enable_fugitive=1
let g:airline_enable_syntastic=1
let g:airline_enable_bufferline=1
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline_linecolumn_prefix = '¶ '
let g:airline_fugitive_prefix = '⎇ '
let g:airline_paste_symbol = 'ρ'
let g:airline_section_c = '%t'
let g:airline_powerline_fonts = 1
let g:auto_save = 1

let g:clang_c_options = '-std=c11'
let g:clang_cpp_options = '-std=c++11'
let g:clang_use_library=1
let g:clang_complete_macros=1
let g:clang_library_path="/usr/lib"
let g:clang_snippets=1
let g:clang_snippets_engine='ultisnips'
let g:clang_conceal_snippets=1
let g:clang_periodic_quickfix=1
let g:clang_hl_errors=1
let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_key_list_previous_completion = ['<Up>']

"set completeopt=menuone, menu

let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : '', 'sp' : '' }

let g:solarized_contrast = "medium"
let g:solarized_termcolors = 256
let g:solarized_visibility="low"

"бинды
imap <C-Space> <C-X><C-I>
imap <Nul> <C-X><C-I>
map <Tab> <C-W>w
map <F2> <C-W><Right>
map <F1> <C-W><Left>
map <F3> gT
map <F4> gt
map <C-t> :tabnew<CR>
map <C-q> :tabclose<CR>
map <C-t> <Esc>:tabnew<CR>
"some bind for tabs
map <A-F1>  1gt
map <A-F2>  2gt
map <A-F3>  3gt
map <A-F4>  4gt
map <A-F5>  5gt
map <A-F6>  6gt
map <A-F7>  7gt
map <A-F8>  8gt
map <A-F9>  9gt
map <A-F10> 10gt
