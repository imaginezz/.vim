set nocompatible
set showmode
set showcmd
set mouse =a
set encoding =utf-8
set t_Co =256

set autoindent
set tabstop =4
set shiftwidth =4
set expandtab
set softtabstop =4
set shiftround

set number
set relativenumber
set cursorline
set textwidth =80
set wrap
set linebreak
set wrapmargin =2
set scrolloff =5
set laststatus =2
set ruler
set display =lastline
set hidden
set backspace =indent,eol,start
set wrapscan
set report =0

set showmatch
set hlsearch
set incsearch
set ignorecase
" set smartcase

" set spell spelllang =en_us
set undofile
set autochdir
set noerrorbells
set history =1000
set autoread
set wildmenu
set wildmode=longest:list,full
set splitbelow
set splitright

set ttyfast
set lazyredraw

set list
if has('multi_byte') && &encoding ==# 'utf-8'
  let &listchars = 'tab:▸ ,extends:❯,precedes:❮,nbsp:±'
else
  let &listchars = 'tab:> ,extends:>,precedes:<,nbsp:.'
endif

set backup
set backupdir   =$HOME/.vim/files/backup/
set backupext   =-vimbackup
set backupskip  =
set directory   =$HOME/.vim/files/swap//
set updatecount =100
set undofile
set undodir     =$HOME/.vim/files/undo//
set viminfo     ='100,n$HOME/.vim/files/info/viminfo

syntax on
filetype indent on

cmap W w
cmap Q q

call plug#begin('~/.vim/plugged')
    Plug 'preservim/nerdtree'
    Plug 'ryanoasis/vim-devicons'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'liuchengxu/space-vim-theme'
    Plug 'kien/ctrlp.vim'
    Plug 'rust-lang/rust.vim'
    Plug 'majutsushi/tagbar'
    Plug 'vim-syntastic/syntastic'
    Plug 'valloric/youcompleteme'
    Plug 'airblade/vim-gitgutter'
    Plug 'apzelos/blamer.nvim'
call plug#end()

" NERDTree
nmap <F2> :NERDTreeToggle <CR>
let g:NERDTreeShowlineNumber =1
let g:NERDTreeHidden =0
let NERDTreeDirArrows =0
let NERDTreeMinimalUI =0

" vim-devicons
let g:webdevicons_enable_nerdtree =1
let g:webdevicons_conceal_nerdtree_brackets =1
let g:webdevicons_enable_airline_tabline =1
let g:webdevicons_enable_airline_statusline =1

" vim-nerdtree-syntax-highlight
"Highlight full name (not only icons). You need to add this if you don't have vim-devicons and want highlight.
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
"Highlight full name (not only icons). You need to add this if you don't have vim-devicons and want highlight.
let g:NERDTreeHighlightFolders = 1
"highlights the folder name
let g:NERDTreeHighlightFoldersFullName = 1
"you can add these colors to your .vimrc to help customizing
let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:Turquoise = "40E0D0"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = "FE405F"
let s:git_orange = "F54D27"
let s:gray = "808A87"
let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExtensionHighlightColor['o'] = s:gray " sets the color of o files to blue
let g:NERDTreeExtensionHighlightColor['h'] = s:blue " sets the color of h files to blue
let g:NERDTreeExtensionHighlightColor['c'] = s:green " sets the color of c files to blue
let g:NERDTreeExtensionHighlightColor['cpp'] = s:green " sets the color of cpp files to blue
let g:NERDTreeExtensionHighlightColor['c++'] = s:green " sets the color of c++ files to blue

" nerdtree-git-plugin
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

" vim-airline
let g:airline#extensions#tabline#enabled =1
let g:airline_theme='light'
let g:airline_powerline_fonts = 1

" space-vim-theme
colorscheme space_vim_theme
set background=dark

" tagbar
nmap <F8> :TagbarToggle<CR>

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
