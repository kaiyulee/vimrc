let mapleader=","
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"Plugin 'Yggdroot/indentLine'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'elzr/vim-json'
Plugin 'mattn/emmet-vim'
Plugin 'terryma/vim-multiple-cursors'
" 注释插件
Plugin 'scrooloose/nerdcommenter'
" 文件系统🌲
Plugin 'scrooloose/nerdtree'
" 自动关闭括号
Plugin 'jiangmiao/auto-pairs'
"Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'airblade/vim-gitgutter'
Plugin 'justincampbell/vim-eighties'
Plugin 'pangloss/vim-javascript'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'majutsushi/tagbar'
Plugin 'StanAngeloff/php.vim'
Plugin 'bling/vim-airline'
Plugin 'yearofmoo/Vim-Darkmate'
Plugin 'rizzatti/dash.vim'
Plugin 'fabi1cazenave/kalahari.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'NLKNguyen/papercolor-theme'

"Plugin 'Valloric/YouCompleteMe'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" -------------------------------------------------------------



" allow backspacing over everything in insert mode
set backspace=indent,eol,start
set nobackup    " no backup file
set noswapfile  " only in case you don't want a backup file while editing
set nowritebackup   " no swap file
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
set nu

syntax on
set background=dark
" for papercolor
set t_Co=256 
colorscheme PaperColor "PaperColor material kalahari darkmate candystripe  wombat itg_flat  mac bclear codeschool github
set hlsearch

set ai! "autoindent
set smartindent "ai
set cindent "ci
set tabstop=4
set expandtab
set shiftwidth=4
set sts=4
set smartcase
set ignorecase
set ruler
set title
set pastetoggle=<F9>
nnoremap <F2> :set nonumber!<CR>
" remove highlight after searching
"nnoremap <silent> <esc> :noh<cr><esc> 
set cursorline "cursorcolumn 
"hi CursorLine cterm=none ctermbg=237
"hi CursorColumn cterm=none ctermbg=237
set wrap "auto break line,[nowrap for the other side]
set laststatus=2 " Always show the status line
set encoding=utf-8
set showtabline=1 " Always display the tabline, even if there is only one tab"
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)"

" NERDTree settings
map <F7> :NERDTreeToggle<CR>
imap <F7> <ESC>:NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDSpaceDelims=1
let NERDTreeAutoCenter=1
let NERDTreeAutoCenterThreshold=5

" Vim Indent guides settings
"hi IndentGuidesOdd  ctermbg=white
"hi IndentGuidesEven ctermbg=lightgrey
let g:indent_guides_auto_colors = 1
let g:indent_guides_start_level=1
let g:indent_guides_guide_size=1
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']

"doxygen{
let g:DoxygenToolkit_briefTag_pre  = "Description  "
let g:DoxygenToolkit_paramTag_pre  = "@param "
let g:DoxygenToolkit_returnTag     = "@return "

let g:DoxygenToolkit_briefString   = "Description"
let g:DoxygenToolkit_phpversionTag = "PHP version 5"
let g:DoxygenToolkit_categoryTag   = "@category  PHP"
let g:DoxygenToolkit_packageTag    = "@package   Mojimall"
let g:DoxygenToolkit_versionTag    = "@version   Release: @package_version@"
let g:DoxygenToolkit_authorTag     = "@author    qiang.zou <qiang.zou@moji.com>"
let g:DoxygenToolkit_copyrightTag  = "@copyright 2014-2016 Moji Fengyun Software Technology Development Co., Ltd."
let g:DoxygenToolkit_licenseTag    = "@license   Under license from Moji Fengyun Software Technology Development Co., Ltd."
let g:DoxygenToolkit_linkTag       = "@link      http://www.moji.com"
"}
" TagBar settings
nmap <F8> :TagbarToggle<CR>
let g:tagbar_autoclose=1
let g:tagbar_width = 30
let g:tagbar_autofocus = 1
" airline settings
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '#'
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1                                                                                                                                           
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
" CtrlP <http://vimawesome.com/plugin/ctrlp-vim-state-of-grace>
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
" Exclude files and directories
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,.tags,*/.idea/*     " MacOSX/Linux
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|idea)$',
    \ 'file': '\v\.(exe|so|dll)$',
    \ 'link': 'some_bad_symbolic_links',
    \ }
" ./ CtrlP
