call plug#begin('~/.vim/plugged')

Plug 'lervag/vimtex'

" vim-airline, the lean mean statusline
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" autocompletion for vim
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
Plug 'zchee/deoplete-jedi'
Plug 'sheerun/vim-polyglot'

" Forget trailing spaces
Plug 'ntpeters/vim-better-whitespace'

" linting for like all the languages
Plug 'scrooloose/syntastic'

" Quoting/paranthesizing made simple
Plug 'tpope/vim-surround'

" Commenting things
Plug 'tpope/vim-commentary'

" Enhanced cpp highlighting
Plug 'octol/vim-cpp-enhanced-highlight'

" Indentation guide
Plug 'yggdroot/indentline'

" Quoting/paranthesizing made simple
Plug 'tpope/vim-surround'

" NERD tree: a tree explorer
Plug 'scrooloose/nerdtree'

" Detects indent settings on a file by file basis
Plug 'ciaranm/detectindent'

" Git diffs in gutter
Plug 'airblade/vim-gitgutter'

" Colored braces
Plug 'kien/rainbow_parentheses.vim'

" I need that color
Plug 'flazz/vim-colorschemes'

" Need them themes
Plug 'mhartington/oceanic-next'

" Them easy-motion
Plug 'easymotion/vim-easymotion'

" Better indented pasting
Plug 'sickill/vim-pasta'

Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'

call plug#end()

set termguicolors

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

" Syntastic recommended settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Syntastic custom settings
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'

" Sets motion leader as <Leader> instead of <Leader><Leader>
map <Leader> <Plug>(easymotion-prefix)
map <Space> <Leader>
map f <Plug>(easymotion-bd-w)
let g:EasyMotion_use_upper = 1
let g:EasyMotion_keys='SADFJKLEWCMPGH'
let g:EasyMotion_smartcase = 1
let g:EasyMotion_use_smartsign_us = 1

set background=dark

syntax on
  let g:oceanic_next_terminal_bold = 1
  let g:oceanic_next_terminal_italic = 1
colorscheme molokai
hi Normal ctermbg=0 ctermfg=white guifg=white guibg=#000B1E
hi LineNr ctermbg=8 ctermfg=0 guifg=#000B1E guibg=#123A75
hi Visual ctermbg=8 guibg=#123A75
hi ErrorMsg ctermbg=0 guibg=#000B1E

set tabstop=4
set shiftwidth=4

set relativenumber
set number

set mouse=a
set clipboard=unnamedplus

nmap < <C-w><
nmap > <C-w>>
nmap - <C-w>-
nmap + <C-w>+
nmap = <C-w>=

imap jk <Esc>`^
imap kj <Esc>`^

noremap k gk
noremap j gj
noremap 0 g0
noremap $ g$

" Copy to clipboard
vnoremap y "+y
nnoremap Y "+yg_
nnoremap y "+y
nnoremap yy "+yy

" Paste from clipboard
nnoremap P "+p
nnoremap p "+P
vnoremap P "+p
vnoremap p "+P

" This remaps arrow keys to switch between windows
nmap <silent> <Up> :wincmd k<CR>
nmap <silent> <Down> :wincmd j<CR>
nmap <silent> <Left> :wincmd h<CR>
nmap <silent> <Right> :wincmd l<CR>

tnoremap <Esc> <C-\><C-n>

set tildeop

au BufWinEnter * :DetectIndent
let g:airline_powerline_fonts = 1
let g:airline_theme="cyberpunk"
let g:deoplete#enable_at_startup = 1

" path to directory where library can be found
 let g:clang_library_path='/usr/lib/libclang.so.7'

" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

set incsearch

let g:indentLine_enabled = 1

" Yes, the space exists
:set list lcs=tab:\¦\ 

