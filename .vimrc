syntax enable
set background=dark
set cursorline "カーソル行の背景色を変更
set cursorcolumn "カーソル行一のカラムの背景色変更
colorscheme hybrid "色変更
set tabstop=2 "画面上でタブ文字が占める幅
set shiftwidth=2 "自動インデントでずれる幅
set autoindent "開業時に前行のインデントを継続
set noswapfile "swapfileを作成しない
set smartindent "{があるときは次行を1段深くindent
set expandtab "tabキー→spaceキー
set backspace=start,eol,indent "backspaceの有効化
set incsearch "検索をリッチに
set ignorecase "検索時に大文字小文字を区別しない
set smartcase "大文字小文字混在の場合は区別
set wrapscan "検索がファイル末尾まで進んだら、ファイル先頭から再び検索
set ruler "カーソルの現在地表示
set number "行番号表示
set wildmenu wildmode=list:full "tabキーで候補補完
set title "windowにファイル名を表示
set write "??
set modifiable "??
set showmatch "対応する括弧を表示
set clipboard=unnamed,autoselect "クリップボードにコピー
set shell=/bin/bash

"Enable the use of the mouse in all modes
if has("mouse")
  set mouse=a
endif

"ファイル毎のインデントの設定
augroup fileTypeIndent
  autocmd!
  autocmd BufNewFile,BufRead *.py setlocal tabstop=4 softtabstop=4 shiftwidth=4
  autocmd BufNewFile,BufRead *.php setlocal tabstop=4 softtabstop=4 shiftwidth=4
  autocmd BufNewFile,BufRead *.rb setlocal tabstop=2 softtabstop=2 shiftwidth=2
  autocmd BufNewFile,BufRead *.js setlocal tabstop=2 softtabstop=2 shiftwidth=2
  autocmd BufNewFile,BufRead *.coffee setlocal tabstop=2 softtabstop=2 shiftwidth=2
  autocmd BufNewFile,BufRead *.swift setlocal tabstop=2 softtabstop=2 shiftwidth=2
augroup END

"=============================
"キーマッピング
"=============================
"noremap <S-h> ^ "行頭移動
"noremap <S-l> $ "行末移動
nnoremap ZZ <Nop> "保存して閉じる無効
nnoremap ZQ <Nop> "保存せず閉じる無効
nnoremap Q  <Nop> "exモード無効

"inoremap {<Enter> {}<Left><CR><ESC><S-o>


"=============================
"<Leader>*によるキーバインド設定
"=============================
"let mapleader = \<Space>"
"nnoremap <Leader>w :w<CR> "保存
"nnoremap <Leader>q :q<CR> "終了





















" コマンドラインモードで<Tab>キーによるファイル名補完を有効にする。
"set statusline+=%{fugitive#statusline()}
" 入力中のコマンドを表示する。
"set showcmd
"set hlsearch
" vimを立ち上げた時に自動的にvim-indent-guidesをonにする。
"let g:indent_guides_enable_on_vim_startup = 1
"set list listchars=tab:\|\ 

" http://inari.hatenablog.com/entry/2014/05/05/231307
""""""""""""""""""""""""""""""
" 全角スペースの表示
""""""""""""""""""""""""""""""
"function! ZenkakuSpace()
"	highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
"endfunction

"if has('syntax')
"	augroup ZenkakuSpace
"		autocmd!
"		autocmd ColorScheme * call ZenkakuSpace()
"		autocmd VimEnter,WinEnter,BufRead * let w:m1=matchadd('ZenkakuSpace', '　')
"	augroup END
"	call ZenkakuSpace()
"endif
""""""""""""""""""""""""""""""


" https:sites.google.com/site/fudist/Home/vim-nihongo-ban/-vimrc-sample
""""""""""""""""""""""""""""
" 挿入モード時、ステータスラインの色を変更
"""""""""""""""""""""""""""
"let g:hi_insert = 'highlight StatusLine guifg=darkblue guibg=darkyellow gui=none ctermfg=blue ctermbg=yellow cterm=none'

"if has('syntax')
"	augroup InsertHook
"		autocmd!
"		autocmd InsertEnter * call s:StatusLine('Enter')
"		autocmd InsertLeave * call s:StatusLine('Leave')
"	augroup END
"endif

"let s:slhlcmd = ''
"function! s:StatusLine(mode)
"	if a:mode == 'Enter'
"		silent! let s:slhlcmd = 'highlight ' . s:GetHighlight('StatusLine')
"		silent exec g:hi_insert
"	else
"		highlight clear StatusLine
"		silent exec s:slhlcmd
"	endif
"endfunction

"function! s:GetHighlight(hi)
"	redir => hl
"	exec 'highlight '.a:hi
"	redir END
"	let hl = substitute(hl, '[\r\n]', '', 'g')
"	let hl = substitute(hl, 'xxx', '', '')
"	return hl
"endfunction
""""""""""""""""""""""""""""""


"NeoBundle Scripts-----------------------------
"if &compatible
"	set nocompatible               " Be iMproved
"endif

" Required:
"set runtimepath^=/Users/hayashigen/.vim/bundle/neobundle.vim/

" Required:
"call neobundle#begin(expand('/Users/hayashigen/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
"NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
" ファイルオープンを便利にする。
"NeoBundle 'Shougo/unite.vim'
" Unite.vimで最近使ったファイルを表示できるようにする。
"NeoBundle 'Shougo/neomru.vim'
" ファイルをtree表示してくれる。
"NeoBundle 'scrooloose/nerdtree'
"NeoBundle 'Shougo/neosnippet.vim'
"NeoBundle 'Shougo/neosnippet-snippets'
"NeoBundle 'tpope/vim-fugitive'
"NeoBundle 'ctrlpvim/ctrlp.vim'
"NeoBundle 'flazz/vim-colorschemes'
"NeoBundle 'tomasr/molokai'
"NeoBundle 'vim-jp/vimdoc-ja'
" Gitを便利に使う
"NeoBundle 'tpope/vim-fugitive'
" 行末の半角スペースを可視化
"NeoBundle 'bronson/vim-trailing-whitespace'
" コメントON/OFFを手軽に実行
"NeoBundle 'tomtom/tcomment_vim'
" インデントを可視化する。
"NeoBundle 'Yggdroot/indentLine'

" You can specify revision/branch/tag.
"NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
"call neobundle#end()

" Required:
"filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
"NeoBundleCheck
"End NeoBundle Scripts-------------------------

"syntax on
"colorscheme molokai
" highlight Normal ctermbg=none

" http://blog.remora.cx/2010/12/vim-ref-with-unite.html
""""""""""""""""""""""""""""""
" Unit.vimの設定
""""""""""""""""""""""""""""""
" 入力モードで開始する
"let g:unite_enable_start_insert=1
" バッファ一覧
"noremap <C-P> :Unite buffer<CR>
" ファイル一覧
"noremap <C-N> :Unite -buffer-name=file file<CR>
" 最近使ったファイルの一覧
"noremap <C-Z> :Unite file_mru<CR>
" sourcesを「今開いているファイルのディレクトリ」とする
"noremap :uff :<C-u>UniteWithBufferDir file -buffer-name=file<CR>
" ウィンドウを分割して開く
"au FileType unite nnoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
"au FileType unite inoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
" ウィンドウを縦に分割して開く
"au FileType unite nnoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
"au FileType unite inoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
" ESCキーを2回押すと終了する
"au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
"au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>
""""""""""""""""""""""""""""""



