execute pathogen#infect()

" 定义快捷键的前缀，即<Leader>
let mapleader=";" 

" 开启文件类型侦测
filetype on

" 根据侦测到的不同类型加载对应的插件
filetype plugin on
"自动保存
set autowrite
" 在处理未保存或只读文件的时候，弹出确认
set confirm
" 定义快捷键到行首和行尾
"nmap LB 0
"nmap LE $
noremap H ^
noremap L $

" 设置快捷键将选中文本块复制至系统剪贴板
vnoremap <Leader>y "+y

" 设置快捷键将系统剪贴板内容粘贴至 vim
nmap <Leader>p "+p

 "定义快捷键关闭当前分割窗口;
nmap <Leader>q :q<CR>
" 定义快捷键保存当前窗口内容
nmap <Leader>w :w<CR>
" 定义快捷键保存所有窗口内容并退出 vim
nmap <Leader>WQ :wa<CR>:q<CR>
" 不做任何保存，直接退出 vim
nmap <Leader>Q :qa!<CR>
" 依次遍历子窗口
nnoremap nw <C-W><C-W>
" 跳转至右方的窗口
nnoremap <Leader>lw <C-W>l
" 跳转至左方的窗口
nnoremap <Leader>hw <C-W>h
" 跳转至上方的子窗口
nnoremap <Leader>kw <C-W>k
" 跳转至下方的子窗口
nnoremap <Leader>jw <C-W>j
" 定义快捷键在结对符之间跳转
nmap <Leader>M %
" 映射全选+复制 ctrl+a
map <C-A> ggVGY
map! <C-A> <Esc>ggVGY
map <F12> gg=G
" 选中状态下 Ctrl+c 复制
vmap <C-c> "+y
"nmap <C-Y> <Esc>^V$y
" 设置环境保存项
set sessionoptions="blank,buffers,globals,localoptions,tabpages,sesdir,folds,help,options,resize,winpos,winsize"
" 保存 undo 历史
set undodir=~/.undo_history/
set undofile
" 保存快捷键
map <leader>ss :mksession! my.vim<cr> :wviminfo! my.viminfo<cr>
" 恢复快捷键
map <leader>rs :source my.vim<cr> :rviminfo my.viminfo<cr>

set fileformat=unix    "设置以unix的格式保存文件"
set cindent        "设置C样式的缩进格式"
set tabstop=4    "设置table长度"
set shiftwidth=4        "同上"
set showmatch    "显示匹配的括号"
set scrolloff=5        "距离顶部和底部5行"
set fenc=utf-8      "文件编码"
set backspace=2
set matchtime=5
set ignorecase        "忽略大小写"

" 让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC
" 通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0
" 在被分割的窗口间显示空白，便于阅读
set fillchars=vert:\ ,stl:\ ,stlnc:\

"change word to uppercase, I love this very much
inoremap <C-u> <esc>gUiwea

"用jk退出编辑模式
inoremap jk <esc>
"直接输入空格进入命令模式
noremap <space> :

" 开启实时搜索功能
set incsearch
" 关闭兼容模式
set nocompatible
" vim 自身命令行模式智能补全
set wildmenu

" vundle 环境设置
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
" vundle 管理的插件列表必须位于 vundle#begin() 和 vundle#end() 之间
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'vim-scripts/phd'
Plugin 'Lokaltog/vim-powerline'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Yggdroot/indentLine'
Plugin 'vim-autopep8'
Plugin 'derekwyatt/vim-fswitch'
Plugin 'kshenoy/vim-signature'
Plugin 'vim-scripts/BOOKMARKS--Mark-and-Highlight-Full-Lines'
Plugin 'majutsushi/tagbar'
Plugin 'vim-scripts/indexer.tar.gz'
Plugin 'vim-scripts/DfrankUtil'
Plugin 'vim-scripts/vimprj'
Plugin 'dyng/ctrlsf.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-scripts/DrawIt'
Plugin 'SirVer/ultisnips'
Plugin 'Valloric/YouCompleteMe'
Plugin 'derekwyatt/vim-protodef'
Plugin 'scrooloose/nerdtree'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'gcmt/wildfire.vim'
Plugin 'sjl/gundo.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'suan/vim-instant-markdown'
Plugin 'lilydjwg/fcitx.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'jistr/vim-nerdtree-tabs' "vim-nerdtree-tabs 插件是为了解决nerdtree不能在tab之间共享的问题
Plugin 'sickill/vim-monokai'
Plugin 'kien/ctrlp.vim'
Plugin 'klen/python-mode'
Plugin 'PyCQA/pylint'

" 插件列表结束
call vundle#end()

set autoread    " 设置当文件在外部被修改，自动更新该文件
set autochdir   " 自动设置当前目录为正在编辑的目录
set showcmd " 状态栏显示当前执行的命令

"允许在vim中运行python
let g:pymode_run = 1
"运行python的快捷键为E
let g:pymode_run_key = '<C-E>'
map <C-Space> <nop> " disable python-mode RopeCodeAssistInsertMode Key binding
"Ctrl+O打开自动补全(使用Ctrl+N和Ctrl+P来向前、向后翻页)
inoremap <C-O> <C-R>=RopeCodeAssistInsertMode()<CR>

let g:tagbar_width =25

"设置tagbar默认打开(大屏幕显示器可以打开)
"autocmd VimEnter * nested TagbarOpen
let g:tagbar_autofocus = 0


" ctrap
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.png,*.jpg,*.jpeg,*.gif " MacOSX/Linux
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

"
"ctrlp默认会使用grep进行搜索，效率低且慢。所以，我使用了ag去替换默认的搜索
"功能。ag是一款轻量级的搜索工具，速度非常快。为了集成ag，需要添加下列配置：
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor
  " Use ag in CtrlP for listing files.
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  " Ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" 显示/隐藏 MiniBufExplorer 窗口
map <Leader>bl :MBEToggle<cr>
" buffer 切换快捷键
map <C-Tab> :MBEbn<cr>
map <C-S-Tab> :MBEbp<cr>


" 配色方案
set background=dark 
"colorscheme solarized
"colorscheme phd 
"colorscheme molokai
colorscheme monokai 

" 禁止光标闪烁
set gcr=a:block-blinkon0
" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T

" 将外部命令 wmctrl 控制窗口最大化的命令行参数封装成一个 vim 的函数
fun! ToggleFullscreen()
	call system("wmctrl -ir " . v:windowid . " -b toggle,fullscreen")
endf

" 全屏开/关快捷键
map <silent> <F11> :call ToggleFullscreen()<CR>
" 启动 vim 时自动全屏
autocmd VimEnter * call ToggleFullscreen()
" 当同时显示多个文件中的tag时，可使taglist只显示当前文件tag，其它文件的tag都被折叠起来
let Tlist_File_Fold_Auto_Close=1
" 如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Exit_OnlyWindow=1
" 缺省情况下，双击一个tag时，才会跳到该tag定义的位置，设置单击tag就跳转
let  Tlist_Use_SingleClick=1

set mouse=a            " 开启鼠标

" 总是显示状态栏
set laststatus=2
" 显示光标当前位置
set ruler
" 开启行号显示
set number
" 高亮显示当前行/列
set cursorline
" set cursorcolumn
" 高亮显示搜索结果
set hlsearch

" 设置 gvim 显示字体
" set guifont=YaHei\ Consolas\ Hybrid\ 11.5
" 禁止折行
set nowrap
" 设置状态栏主题风格
" let g:Powerline_colorscheme='solarized256'

" 自适应不同语言的智能缩进
filetype indent on
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4

"缩进指示线"
let g:indentLine_char='┆'
let g:indentLine_enabled = 1
"autopep8设置"
let g:autopep8_disable_show_diff=1

" 基于缩进或语法进行代码折叠(za，打开或关闭当前折叠；zM，关闭所有折叠；zR，打开所有折叠)
"set foldmethod=indent
set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable

" 开启语法高亮功能
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on
filetype plugin indent on

" *.cpp 和 *.h 间切换(sw实现切换)
nmap <silent> <Leader>sw :FSHere<cr>
let g:UltiSnipsSnippetDirectories=["mysnippets"]

" UltiSnips 的 tab 键与 YCM 冲突，重新设定
let g:UltiSnipsExpandTrigger="<leader><tab>"
let g:UltiSnipsJumpForwardTrigger="<leader><tab>"
let g:UltiSnipsJumpBackwardTrigger="<leader><s-tab>"

"显示书签"
let NERDTreeShowBookmarks=1
"设置忽略文件类型"
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
"窗口大小"
let NERDTreeWinSize=25

"关闭各种按键叮叮声音和闪屏
set vb t_vb=
au GuiEnter * set t_vb=
set backspace=indent,eol,start
set novisualbell " 关闭使用可视响铃代替呼叫
set noerrorbells " 关闭错误信息响铃

set magic " 设置魔术
set smartindent " 开启新行时使用智能自动缩进

set cmdheight=1 " 设定命令行的行数为 1

"记住上次退出的位置
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

let g:airline_powerline_fonts = 1
" 是否启用顶部tabline
let g:airline#extensions#tabline#enabled = 1
" 顶部tabline显示方式
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme="deus"
let g:Powerline_colorscheme='deus'

"彩虹括号
let g:rbpt_colorpairs = [ ['brown', 'RoyalBlue3'], ['Darkblue', 'SeaGreen3'], ['darkgray', 'DarkOrchid3'], ['darkgreen', 'firebrick3'],['darkcyan', 'RoyalBlue3'],['darkred', 'SeaGreen3'],['darkmagenta', 'DarkOrchid3'],['brown', 'firebrick3'],['gray', 'RoyalBlue3'],['black',       'SeaGreen3'],['darkmagenta', 'DarkOrchid3'],['Darkblue',  'firebrick3'],['darkgreen', 'RoyalBlue3'],['darkcyan', 'SeaGreen3'],['darkred', 'DarkOrchid3'],['red', 'firebrick3']]
let g:rbpt_max = 16
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

"设置注释快捷键<F6>
map <F6> <leader>ci <CR>


" ******************NERDTree***************************************************************************
"  close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"let g:nerdtree_tabs_open_on_console_startup=1
" NERDTress File highlighting

"Set different colors for different file extensions
"NERDTress File highlighting
"Start
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')
"End
"Open NERDTree when no file is specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" 显示文件中的类、函数、变量的功能的TagbarToggle快捷键F10
map <F10> :TagbarToggle<CR>
"F9开启和关闭树"
map <F9> :NERDTreeToggle<CR>
let NERDTreeChDirMode=1
"*************************************NREDTree-end******************************************



" configure syntastic syntax checking to check on open as well as save
"是否在打开文件时检查
let g:syntastic_check_on_open=1
" 是否在保存文件后检查
"let g:syntastic_check_on_wq=1
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
" 设置错误符号
let g:syntastic_error_symbol='✗'
 "设置警告符号
let g:syntastic_warning_symbol='⚠'
let g:syntastic_python_checkers=['pylint','javac','php', 'phpcs', 'phpmd']
let g:syntastic_python_pylint_args='--disable=C0111,R0903,C0301'
let g:syntastic_aggregate_errors = 1
"自动跳转到发现的第一个错误或警告处
let g:syntastic_auto_jump = 1
"进行实时检查，如果觉得卡顿，将下面的选项置为1
let g:syntastic_check_on_wq = 1
"高亮错误
let g:syntastic_enable_highlighting=1


" YCM 补全菜单配色
" 菜单
highlight Pmenu ctermfg=10 ctermbg=8 guifg=#005f87 guibg=#EEE8D5
" 选中项
highlight PmenuSel ctermfg=4 ctermbg=6 guifg=#AFD700 guibg=#106900

" 补全功能在注释中同样有效
let g:ycm_complete_in_comments=1
" 允许 vim 加载 .ycm_extra_conf.py 文件，不再提示
let g:ycm_confirm_extra_conf=0
" 开启 YCM 标签补全引擎
let g:ycm_collect_identifiers_from_tags_files=1
" 引入 C++ 标准库tags
set tags+=/data/misc/software/misc./vim/stdcpp.tags
" YCM 集成 OmniCppComplete 补全引擎，设置其快捷键
inoremap <leader>; <C-x><C-o>
" 补全内容不以分割子窗口形式出现，只显示补全列表
set completeopt-=preview
" 从第一个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion=1
" 禁止缓存匹配项，每次都重新生成匹配项
" let g:ycm_cache_omnifunc=0
" 语法关键字补全
let g:ycm_seed_identifiers_with_syntax=1

" 设置背景透明
" hi Normal guibg=NONE ctermbg=NONE
" When vimrc is edited, reload it
autocmd! bufwritepost vimrc source ~/.vimrc
" Turn backup off, since most stuff is in SVN, git anyway...
set nobackup
set nowb
set noswapfile


""""""""""""""""""""""
    "Quickly Run
    """"""""""""""""""""""
    map <F5> :call CompileRunGcc()<CR>
    func! CompileRunGcc()
        exec "w"
if &filetype == 'c'
            exec "!g++ % -o %<"
            exec "!time ./%<"
elseif &filetype == 'cpp'
            exec "!g++ % -o %<"
            exec "!time ./%<"
elseif &filetype == 'java'
            exec "!javac %"
            exec "!time java %<"
elseif &filetype == 'sh'
            :!time bash %
elseif &filetype == 'python'
            exec "!time python2.7 %"
elseif &filetype == 'html'
            exec "!firefox % &"
elseif &filetype == 'go'
    "        exec "!go build %<"
            exec "!time go run %"
elseif &filetype == 'mkd'
            exec "!~/.vim/markdown.pl % > %.html &"
            exec "!firefox %.html &"
endif
    endfunc


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""新文件标题""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"新建.c,.h,.sh,.java文件，自动插入文件头 
autocmd BufNewFile *.cpp,*.[ch],*.sh,*.java,*.py exec ":call SetTitle()" 
""定义函数SetTitle，自动插入文件头 
func! SetTitle() 
    "如果文件类型为.sh文件 
    if &filetype == 'sh' 
        call setline(1,"\#########################################################################") 
        call append(line("."), "\# File Name: ".expand("%")) 
        call append(line(".")+1, "\# Author: cwj") 
        call append(line(".")+2, "\# mail: 1003214597@qq.com") 
        call append(line(".")+3, "\# Created Time: ".strftime("%c")) 
        call append(line(".")+4, "\#########################################################################") 
        call append(line(".")+5, "\#!/bin/bash") 
        call append(line(".")+6, "")
    endif 
     if &filetype == 'py'
        call setline(1,"```")
        call append(line(".")+1, "\# File Name: ".expand("%")) 
        call append(line(".")+2, "\# Author: cwj") 
        call append(line(".")+3, "\# mail: 1003214597@qq.com") 
        call append(line(".")+4, "\# Created Time: ".strftime("%c")) 
        call append(line(".")+5, "```") 
    else 
        call setline(1, "/*************************************************************************") 
        call append(line("."), "     File Name: ".expand("%")) 
        call append(line(".")+1, "     Author: cwj") 
        call append(line(".")+2, "     Mail: 1003214597@qq.com") 
        call append(line(".")+3, "     Created Time: ".strftime("%c")) 
        call append(line(".")+4, " ************************************************************************/") 
        call append(line(".")+5, "")
    endif
    if &filetype == 'cpp'
        call append(line(".")+6, "#include<iostream>")
        call append(line(".")+7, "using namespace std;")
        call append(line(".")+8, "")
        call cursor(10,2)
    elseif &filetype == 'c'
        call append(line(".")+6, "#include<stdio.h>")
        call append(line(".")+7, "")
        call cursor(9,2)
    elseif &filetype == 'java'
        call append(line(".")+6,"public class ".expand("%:t:r")." {")
        call append(line(".")+7, "      public static void main(String[] args) {")
        call append(line(".")+8, "")
        call append(line(".")+9, "       }")
        call append(line(".")+10, "}")
        call cursor(10,2)
    else 
        call cursor(8,2)
    endif 
"新建文件后，自动定位到文件末尾
" autocmd BufNewFile * normal G
endfunc  

