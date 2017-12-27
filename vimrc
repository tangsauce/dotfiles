" commands im tryna use
" TODO: better alt-up and tab completion
" :g/pattern/z#.5|echo "=========="
" motions:
  " g; g, to move between jumps
  " `. to move to last edit
  " gv takes u to last visually selected block

set nocp
set shellpipe=>
set number
set pastetoggle=<F1>
map <F2> :set invnumber<CR>
map <F3> :IndentLinesToggle<CR>
map <F4> :NERDTreeMirror<CR>
map ® :source ~/.vim/vimrc<CR>
map ç :set cursorcolumn! cursorline!<CR>

imap cll console.log();<Esc>$F(a
vmap cll yocll<Esc>p
nmap cll yiwocll<Esc>p 
nmap <S-y> y$

autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview 
set viewoptions-=options

set undofile
set undodir=~/.vim/undodir
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 expandtab
set backspace=indent,eol,start
set autoindent
set showmatch
set mps+=<:>
set mps+=`:`

" PATHOGEN
execute pathogen#infect()

" VimCompletesMe enter
" inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" vim-mucomplete
set completeopt+=menuone

" NERDTree
let g:NERDTreeWinPos = "left"
let g:NERDTreeMapOpenSplit = "s"
let g:NERDTreeMapOpenVSplit = "v"
map <C-n> :NERDTreeToggle<CR>

" SOLARIZED
syntax on
colorscheme brogrammer
set background=dark

" CTRLP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_open_new_file = 'h'
let g:ctrlp_custom_ignore = {
\ 'dir': 'node_modules',
\ }

" ALE
let g:ale_linters = {
\ 'javascript': ['eslint'],
\ }
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" SILVER SEARCHER | ACK | AG
let g:ackprg = 'ag --nogroup --nocolor --column'

nnoremap ∆ :m .1<CR>==
nnoremap ˚ :m .-2<CR>==
inoremap ∆ <Esc>:m .+1<CR>==gi
inoremap ˚ <Esc>:m .-2<CR>==gi
vnoremap ∆ :m '>+1<CR>gv=gv
vnoremap ˚ :m '<-2<CR>gv=gv

" Tmux-like window resizing - the greatest of all time: https://stackoverflow.com/questions/27265490/vim-window-resizing-repetitively#36653470
" Map to buttons
source ~/.vim/tmux-resize.vim
nnoremap <Left> :call TmuxResize('h', 5)<CR>
nnoremap <Up> :call TmuxResize('k', 5)<CR>
nnoremap <Down> :call TmuxResize('j', 5)<CR>
nnoremap <Right> :call TmuxResize('l', 5)<CR>
