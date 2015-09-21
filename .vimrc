set nocompatible
filetype off

set rtp+=~/wiselyVim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" Color Scheme
Plugin 'tomasr/molokai'

" Enhancement
Plugin 'kien/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'kshenoy/vim-signature'
Plugin 'dyng/ctrlsf.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-ragtag'
Plugin 'terryma/vim-multiple-cursors'

" Moving
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tmhedberg/matchit'

" Indent
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'bronson/vim-trailing-whitespace'

" AutoComplete
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'

" Snippets
Plugin 'caasi/vim-react-snippets'
Plugin 'honza/vim-snippets'
Plugin 'kwaledesign/scss-snippets'

" Syntax
" Plugin 'scrooloose/syntastic'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'othree/yajs.vim'
Plugin 'hail2u/vim-css3-syntax'

" Color
Plugin 'ap/vim-css-color'

" Markdown
Plugin 'suan/vim-instant-markdown'

" Beautify
Plugin 'maksimr/vim-jsbeautify'
Plugin 'einars/js-beautify'

call vundle#end()
filetype plugin indent on


" Indent
" Don't add the comment prefix when I hit enter or o/O on a comment line.
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" remove tailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

" split window resize
if bufwinnr(1)
    map <C-W>0 :resize +10<CR>
    map <C-W>9 :resize -10<CR>
    map <C-W>. :vertical resize +30<CR>
    map <C-W>, :vertical resize -30<CR>
    map <silent><LEADER>= :vertical resize +30<CR>
    map <silent><LEADER>- :vertical resize -30<CR>
endif

" make the current window bigger
set winheight=5
set winminheight=5

" Color Scheme
colorscheme molokai
" let g:molokai_original = 1

" Shortcut Keys
let mapleader = ";"
nmap 1b 0
nmap 1e $
nmap <silent> <Leader>i <Plug>IndentGuidesToggle
map <C-k> :bnext!<CR>
map <C-j> :bprev!<CR>
map <C-l> :tabn<CR>
map <C-h> :tabp<CR>
nnoremap <leader>d "_d
vnoremap <leader>d "_d
vnoremap <leader>p "_dP

" Vim Setting
filetype on
filetype plugin on

set laststatus=2
set ruler
set number
set cursorline
set hlsearch
set showtabline=2

" Vim encoding
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,big5,euc-jp,gbk,euc-kr,utf-bom,iso8859-1,euc-jp,utf-16le,latin1
set fenc=utf-8 enc=utf-8 tenc=utf-8
scriptencoding utf-8

" Vim UI Setting
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
set guioptions-=m
set guioptions-=T

" Vim Syntax
syntax enable
syntax on

" Vim indent
filetype indent on
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

" Vim Fold
set foldmethod=indent
set nofoldenable

" Powerline Setting
" let g:Powerline_symbols = 'fancy'

" Indent-Guide Setting
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

" CtrlSF Setting
let g:ctrls_default_root = 'project'
nmap <C-F>f <Plug>CtrlSFPrompt

" YouCompleteMe Setting
let g:ycm_complete_in_comments=1
let g:ycm_confirm_extra_conf=0
let g:ycm_collect_identifiers_from_tags_files=1
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_key_list_select_completion=['<C-j>', '<Down>']
let g:ycm_key_list_previous_completion=['<C-k>', '<Up>']

" Syntastic Setting
" let g:syntastic_error_symbol = '✗'
" let g:syntastic_warning_symbol = '⚠'
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 0
" let g:syntastic_check_on_wq = 0
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" NerdTree Setting
let NERDTreeWinSize=32
let NERDTreeShowHidden=1
let NERDTreeAutoDeleteBuffer=1
nmap <F2> :NERDTreeToggle<CR>

" Airline Setting

" set status line
set laststatus=2
" enable powerline-fonts
let g:airline_powerline_fonts = 1
" enable tabline
let g:airline#extensions#tabline#enabled = 1
" set left separator
let g:airline#extensions#tabline#left_sep = ' '
" set left separator which are not editting
let g:airline#extensions#tabline#left_alt_sep = '|'
" show buffer number
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_theme='wombat'

" Ultisnips Setting
let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"

" Instant_markdown Setting
let g:insant_markdown_slow=1

" CtrlP Setting
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|jpg|png|bmp)$',
  \ 'binary file': '\v\.(exe|so|dll)$',
  \ }

" js-beautify Setting
map <c-f> :call JsBeautify()<cr>
"autocmd FileType javascript vnoremap <buffer>  <c-f> :call RangeJsBeautify()<cr>
"autocmd FileType html vnoremap <buffer> <c-f> :call RangeHtmlBeautify()<cr>
"autocmd FileType css vnoremap <buffer> <c-f> :call RangeCSSBeautify()<cr>

