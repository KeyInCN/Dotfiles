" USER SETTINGS "

" === FILE ENCODINGS ===
" when read a file, set a charactor code to UTF-8
set encoding=utf-8

" multi-byte charactor of setting 
scriptencoding utf-8 

" when save a file, charactor code to utf-8
set fileencoding=utf-8

" automatically set a  charactor code from left
set fileencodings=ucs-boms,utf-8,euc-jp,cp932

" automatically set a new line code from left
set fileformats=unix,dos,mac 

" ■や○文字が崩れる問題を解決する
set ambiwidth=double
 
" === TAB & INDENT ===
" tab replaces spaces
set expandtab 

" tab size in monitor 
set tabstop=2

" 連続した空白に対してタブキーやバックスペースキーで移動するカーソルの幅
set softtabstop=2

" when input a new line, cotinue before indent
set autoindent

" smart indentで増減する幅
set shiftwidth=2

" === SEARCH A STRING ===

" incremental search. 一文字入力毎に検索を行う
set incsearch

" Don`t subtend big or small charactor
set ignorecase

" if searching pattern has big charactor, subtend big or small once
set smartcase

" highlight a searching value
set hlsearch

" if input a ESC key two times, ハイライト表示の切り替えを行う
nnoremap <silent><Esc><Esc> :<C-u>set nohlsearch!<CR>
set ignorecase

" === CURSOR SETTINGS ===

" カーソルの左右移動で、行末から次の行頭までの移動が可能になる
set whichwrap=b,s,h,l,<,>,[,],~

set number " print a line number

" set a terminal title
set title

" highlight a cursor line
set cursorline

" syntax is on
syntax on

" set a colorscheme
colorscheme neodark 

" set a color of background
set background=dark

" 行が繰り返し表示されていた場合、行単位ではなく表示行単位でカーソルを移動する
nnoremap j gj
nnoremap k gk
nnoremap <down> gj
nnoremap <up> gk

" can use a back space key
set backspace=indent,eol,start

" === BRACKETS SETTINGS ===

" print a brackets of 対応関係 moment
set showmatch

" expand a vim`s % 
source $VIMRUNTIME/macros/matchit.vim

" === COMMAND SETTINGS ===

" complement a commmand mode
set wildmenu

" set number of history of saved command
set history=5000

" === PASTE SETTING ===

if &term =~ "xterm"
  let &t_SI .= "\e[?2004h"
  let &t_EI .= "\e[?2004l"
  let &pastetoggle = "\e[201~"

  function XTermPasteBegin(ret)
    set paste
    return a:ret
  endfunction

  inoremap <special> <expr> <Esc>[200~ XTermPasteBegin("")
endif


