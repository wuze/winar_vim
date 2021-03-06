set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" let Vundle manage Vundle, required

"
" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
 " To ignore plugin indent changes, instead use:
" "
" " Brief help
" " :PluginList          - list configured plugins
" " :PluginInstall(!)    - install (update) plugins
" " :PluginSearch(!) foo - search (or refresh cache first) for foo
" " :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
" "
" " see :h vundle for more details or wiki for FAQ
"  Put your non-Plugin stuff after this line"""))"))"))"""""""")"''''''"''''''""'')"''"''"''"""''"'')"")"""

Bundle 'Valloric/YouCompleteMe'
Bundle 'Lokaltog/vim-powerline'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'tomasr/molokai'
Bundle 'majutsushi/tagbar'
Bundle 'scrooloose/nerdcommenter'
Bundle 'davidhalter/jedi'


"temp"
map<F3> i\subsection{<ESC>A}<ESC>
map<F2> i\section{<ESC>A}<ESC>

syntax on	”语法高亮
set nocompatible    " 非兼容模式
set number    "行号显示
set ruler	"右下角显示行号
set laststatus=2   "打开状态栏
set is  "未输入完就开始搜索
filetype plugin indent on
set guioptions-=m  "关闭gvim的菜单栏
set guioptions-=T  "关闭gvim的工具栏
set guioptions-=r "关闭右部滚动条
""set hlsearch " 搜索高亮
set incsearch " 即时开始搜素

set showcmd "显示未完成命令

"缩进相关"
set autoindent " same level indent
set smartindent " next level indent
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4

function! MaximizeWindow()
	silent !wmctrl -r :ACTIVE: -b add,maximized_vert,maximized_horz
endfunction

au GUIEnter * call MaximizeWindow()


"map
map <M-w> :tabclose<CR>
nmap <C-t> :tabnew<CR>
imap <C-t> <Esc>:tabnew<CR>
map <M-t> :browse tabnew<CR>
imap <M-t> <Esc>:browse tabnew<CR>
map <M-left> :tabprevious<CR>
map <M-right> :tabnext<CR>
map <C-Tab> :tabnext<CR>
imap <C-Tab> <Esc> :tabnext<CR>

"括号补全
"inoremap  {  {<CR>}<Left><CR><Up><Tab>
inoremap  (  ()<Left>
inoremap  [  []<Left>
inoremap  "  ""<Left>
inoremap  '  ''<Left>

"pathogen
execute pathogen#infect()


"NERDtree
map <F10> <Esc>:NERDTreeToggle<CR>

"molokai
let g:molokai_original = 1
set background=light
colorscheme molokai

"Tlist
"map <F9> <Esc>:TlistToggle<CR>
"let Tlist_Exist_OnlyWindow=1 " If you are the last, kill yourself
"let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist窗口
"let Tlist_Process_File_Always = 1 "始终解析tag
"let Tlist_GainFocus_On_ToggleOpen = 1 "tlisttoggle打开后获得焦点

"gedef
let g:godef_split=0 "current windows show def


"tagbar
nmap <F9> :TagbarToggle<CR>

let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

let g:tagbar_autofocus=1


"nerdcommenter"
let mapleader=","

"youCompleteMe"
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:syntastic_ignore_files=[".*\.py$"]
let g:ycm_confirm_extra_conf = 0
let g:ycm_global_ycm_extra_conf = '/home/winkar/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
set completeopt=longest,menu 
