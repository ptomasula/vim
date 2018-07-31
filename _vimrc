source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

"#########################
"### document settings ###
"#########################
"set encoding
set encoding=utf-8

"tab and spacing
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

"set font size to deal with surface scaling 
set guifont=Lucida_Sans_Typewriter:h12

"syntax highlighting 
syntax on

"line numbers
set number
set relativenumber

"live updates on searching
set incsearch

"color scheme
colorscheme darkblue

"####################
"### VIM behavior ###
"####################

"set location to save swap, backup and undo files to local computer
set undodir=C:/Users/ptomasula/Vim/undo//
set backupdir=C:/Users/ptomasula/Vim/backup//
set directory=C:/Users/ptomasula/Vim/swap//

"set auto indenting
set autoindent

"case sensitivity
set ignorecase
set smartcase

"smart tab complete -indent at BOL, autocomplete elsewhere
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <expr> <tab> InsertTabWrapper()
inoremap <s-tab> <c-n>

"####################
"### Key bindings ###
"####################
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

"short cut to enable wrapping
map <F9>  :set wrap!<Bar>set wrap?<CR>

