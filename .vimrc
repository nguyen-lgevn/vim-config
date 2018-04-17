""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   VIM configuration File
""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   General Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Turn off vi setting
set nocompatible

" Default encoding is utf-8, en-US
set encoding=utf-8

" Configure backspace so it acts as it should act
set backspace=indent,eol,start
set whichwrap+=<,>,h,l

" Set auto read when a file is changed from the outside
set autoread

" :W sudo saves the file - for the permission-denied error
"command W w !sudo tee % > /dev/null

" Don't redraw while executing macros
set lazyredraw

" Enable mouse mode
set mouse=a

" Enable line number
set number

" Display line number relative
" set relativenumber

" Show typing command and current mode in bottom bar
set showcmd showmode

" Highlight current line
set cursorline
highlight CursorLine cterm=none ctermbg=18

" Set long line marking
set colorcolumn=80
highlight colorcolumn ctermbg=234

" Visual autocomplete for command menu
set wildmenu
set wildmode=list:longest,full

" Highlight matching braces
set showmatch

" Set window title
se titlestring=%t

filetype plugin on
filetype indent on

if !has("gui-running")
    set term=xterm
    set t_Co=256
    let &t_AB="\e[48;5;%dm"
    let &t_AF="\e[38;5;%dm"
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   VIM UI
""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" set language
let $LANG='en'
set langmenu=en
source $VIMRUNTIME/menu.vim

" Always show current position
set ruler

" Ignored compiled files
set wildignore=*.o,*~,*.pyc,*/.git/*,*/.svn/*

" Ignore case when searching
set ignorecase

" Highlight search results
set hlsearch

" search as you type
set incsearch

" Smart case matching
set smartcase

" Turn magic on for regex
set magic

" Use <leader><space> to clear highlight texts
nnoremap <Leader><space> :noh<cr>

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500


""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  Colors and Fonts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set color
hi User1 ctermbg=37 ctermfg=35 guifg=#00af5f guibg=#00ccff
hi User2 ctermbg=173 ctermfg=008 guifg=#ffdad8 guibg=#880c0e
hi User3 ctermbg=119 ctermfg=108 guifg=#ffdad8 guibg=#880c0e
hi User4 ctermbg=184 ctermfg=108 guifg=#ffdad8 guibg=#880c0e
hi User5 ctermbg=189 ctermfg=108 guifg=#ffdad8 guibg=#880c0e
hi User6 ctermbg=139 ctermfg=108 guifg=#ffdad8 guibg=#880c0e
hi User7 ctermbg=163 ctermfg=90 guifg=#ffdad8 guibg=#880c0e
hi User8 ctermbg=25 ctermfg=15 guifg=#ffffff guibg=#5b7fbb
hi User9 ctermbg=195 ctermfg=007 guifg=#ffdad8 guibg=#880c0e

" Enable syntax hightlighting
syntax on

set background=dark

" Use Unix as the standard file type
set ffs=unix,dos,mac


""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  Files, backups and undo
""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Turn backup off
set nobackup
set nowb
set noswapfile


""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  Text, tab and indent related
""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use spaces instead of tabs
set expandtab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
set softtabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

" Auto indent
set ai

" Smart indent
set si

" Wrap line
set wrap


""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  Status line
""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Always show status line
set laststatus=2

" Format the status line
"set statusline=
"set statusline+=%1*\[%n]
"set statusline+=%1*\ %<%F\ %{ReadOnly()}\ %m\ %w\       " Filepath
"set statusline+=%{StatuslineGit()}
"set statusline+=%*
"set statusline+=%9*\ %=                                 " Space
"set statusline+=%8*\%y\                                 " File type
"set statusline+=%8*\ %{(&fenc!=''?&fenc:&enc)}\[%{&ff}] " Encoding and File
"set statusline+=%8*\ %-3(%{FileSize()}%)                " File size
"set statusline+=%8*\ %=\ Line:%l\|%L\                   " Line current/ Total line
"set statusline+=%9*\ Col:%3c\                           " Column 
"set statusline+=%0*\ %P\ \

" Cmd line is 1 line high
set cmdheight=1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  Tabline
""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Tab pages navigation
set tabpagemax=100

" Color Tab bar
hi TabLineFill ctermfg=250 ctermbg=23 cterm=NONE
hi TabLine ctermfg=250 ctermbg=23 cterm=NONE
hi TabLineSel ctermfg=White ctermbg=32 cterm=NONE

hi Title ctermfg=LightBlue ctermbg=Magenta

let g:tablineclosebutton=1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  Split view
""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set splitbelow
set splitright

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  Command mode related
""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Smart mappings on the command line
cnoremap <C-A>          <Home>
cnoremap <C-E>          <End>
cnoremap <C-K>          <C-U>

cnoremap <C-P>          <Up>
cnoremap <C-N>          <Down>

map <Tab> <C-W>w

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  Plugins settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" pathogen
execute pathogen#infect()

" airline
set runtimepath^=~/.vim/vim-airline/autoload/airline.vim
let g:airline_theme='cool'

" clang_complete
let g:clang_library_path='/data001/nguyen.hoang/opt/clang/lib/libclang.so'

" python mode

" NERDTree

" open NERDTree automatically when vim starts up
autocmd vimenter * NERDTree

" open NERDTree with Ctrl+n
" map <C-n> :NERDTreeToggle<CR>

" close when the only window is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Tagbar
"let g:tagbar_ctags_bin

" quickstart tagbar
nmap <F8> :TagbarToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  Helper functions
""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Returns true if paste mode is enabled
function! HasPaste()
   if &paste
       return 'PASTE MODE  '
   else
       return ''
   endif
endfunction

" Find out current buffer's size and output it.
function! FileSize()
    let bytes = getfsize(expand('%:p'))
    if (bytes >= 1024)
        let kbytes = bytes / 1024
    endif
    if (exists('kbytes') && kbytes >= 1000)
        let mbytes = kbytes / 1000
    endif

    if bytes <= 0
        return '0'
    endif

    if (exists('mbytes'))
        return mbytes . 'MB '
    elseif (exists('kbytes'))
        return kbytes . 'KB '
    else
        return bytes . 'B '
    endif
endfunction

" Check file readonly
function! ReadOnly()
    if &readonly || !&modifiable
        return '🔓'
    else
        return ''
    endif
endfunction

"function! GitBranch()
"    return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
"endfunction

"function! StatuslineGit()
"    let l:branchname = GitBranch()
"    return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
"endfunction
