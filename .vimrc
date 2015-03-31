set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let Vundle manage Vundle
Bundle 'gmarik/vundle'

" My Bundles
Bundle 'Lokaltog/vim-distinguished'
Bundle 'tpope/vim-surround'
Bundle 'Lokaltog/powerline'
Bundle 'kien/ctrlp.vim'
Bundle 'Shougo/neocomplcache.vim'
Bundle 'Chiel92/vim-autoformat'
Bundle 'elzr/vim-json'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'pangloss/vim-javascript'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'Raimondi/delimitMate'
Bundle 'tpope/vim-fugitive'
Bundle 'maksimr/vim-jsbeautify'
Bundle 'einars/js-beautify'
Bundle 'tfnico/vim-gradle'
Bundle 'rdolgushin/gitignore.vim'
Bundle 'msanders/snipmate.vim'

filetype plugin indent on
let mapleader=","

set cursorline
set expandtab
set modelines=0
set shiftwidth=2
set clipboard=unnamedplus
set synmaxcol=256
set ttyscroll=10
set encoding=utf-8
set tabstop=2
set nowrap
set relativenumber
set expandtab
set nowritebackup
set noswapfile
set nobackup
set hlsearch
set ignorecase
set smartcase

" Automatic formatting

" No show command
autocmd VimEnter * set nosc

" Quick ESC
imap jj <ESC>

" Jump to the next row on long lines
map <Down> gj
map <Up>   gk
nnoremap j gj
nnoremap k gk

" format the entire file
nmap <leader>fef ggVG=

" Open new buffers
nmap <leader>s<left>   :leftabove  vnew<cr>
nmap <leader>s<right>  :rightbelow vnew<cr>
nmap <leader>s<up>     :leftabove  new<cr>
nmap <leader>s<down>   :rightbelow new<cr>

" Tab between buffers
noremap <tab> <c-w><c-w>

" Switch between last two buffers
nnoremap <leader><leader> <C-^>

" Resize buffers
if bufwinnr(1)
  nmap Ä <C-W><<C-W><
  nmap Ö <C-W>><C-W>>
  nmap ö <C-W>-<C-W>-
  nmap ä <C-W>+<C-W>+
endif

" Syntastic
let g:syntastic_mode_map = { 'mode': 'passive' }

" CtrlP
nnoremap <silent> t :CtrlP<cr>
let g:ctrlp_working_path_mode = 2
let g:ctrlp_by_filename = 1
let g:ctrlp_max_files = 600
let g:ctrlp_max_depth = 5

" Quit with :Q
command -nargs=0 Quit :qa!

" Enable auto completing stuff
let g:neocomplcache_enable_at_startup = 1

" F5 will insert date time
:nnoremap <F5> "=strftime("%Y-%m-%d %H:%M:%S")<CR>P
:inoremap <F5> <C-R>=strftime("%Y-%m-%d %H:%M:%S")<CR>

" tab navigation like firefox
:nnoremap <C-l> :tabprevious<CR>
:nnoremap <C-r>   :tabnext<CR>
:nnoremap <C-n>     :tabnew<CR>

:nmap n nzz  
:nmap p pzz

:set t_Co=256
syntax on
set background=dark
colorscheme slate

set cursorline
hi CursorLine cterm=NONE ctermbg=8 ctermfg=white
" Popup color.
hi Pmenu ctermbg=8
hi PmenuSel ctermbg=2
hi PmenuSbar ctermbg=0

map <c-f> :call JsBeautify()<cr>
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>
autocmd FileType javascript vnoremap <buffer>  <c-f> :call RangeJsBeautify()<cr>
autocmd FileType html vnoremap <buffer> <c-f> :call RangeHtmlBeautify()<cr>
autocmd FileType css vnoremap <buffer> <c-f> :call RangeCSSBeautify()<cr>
