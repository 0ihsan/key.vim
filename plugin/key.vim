" abbreviation
cnorea BD bd
cnorea Cdc tcd %:p:h<cr>
cnorea E e
cnorea H h
cnorea Q q
cnorea Q! q!
cnorea Qa qa
cnorea SP sp
cnorea Sp sp
cnorea VS vs
cnorea Vs vs
cnorea W w
cnorea WD w\|:bd
cnorea WQ wq
cnorea Wd w\|:bd
cnorea Wq wq
cnorea cd tcd
cnorea cdc tcd %:p:h<cr>
cnorea man Man
cnorea qw wq
cnorea rg Rg
cnorea wQ wq
cnorea wbd w\|:bd
cnorea wd w\|:bd

" readline/emacs
cno <c-a> <c-b>
cno <c-b> <left>
cno <c-d> <del>
cno <c-f> <right>
im <c-a> <c-o>0

" sorry digraphs
im <c-k> <c-o>D

im <c-b> <left>
im <c-d> <c-o>x
im <c-e> <c-o>$
im <c-f> <right>

" term
tno <silent> <Esc> <c-\><c-n>
tma <silent> <c-w> <c-\><c-n><c-w>
tno <silent> <m-n> <c-\><c-n>:bn<cr>
tno <silent> <m-p> <c-\><c-n>:bp<cr>
nm <m-t> :let $DIR=expand('%:p:h')<cr>:ter<cr>cd $DIR;tput clear<cr>

" switch between windows with meta (shift)? o
nn  <silent> <m-o>   :winc w<cr>
nn  <silent> <m-s-o> :winc p<cr>
im  <silent> <m-o>   <esc>:winc w<cr>
tma <silent> <m-o>   <c-\><c-n>:winc w<cr>
tma <silent> <m-s-o> <c-\><c-n>:winc p<cr>

" toggle
nn <silent> <m-1> :set cursorcolumn!<cr>
nn <silent> <m-2> :15Lexplore<cr>
nm <silent> <m-3> :set relativenumber! number!<cr>
tma <silent> <m-3> <c-\><c-n>:set relativenumber! number!<cr>

" date/time
nn <leader>d :exe 'norm! a'.system("date '+%Y %b %d %X'\|tr -d '\n'")<cr>
nn <leader>d :exe 'r!date -u'\|norm kJ<cr>$
nn <leader>f :exe "r!echo ".expand('%:r')." \| title" \| norm kJ<cr>$
nn <leader>t :exe 'r!date +\%H:\%M'\|norm kJ<cr>$

nm <leader>r :so $MYVIMRC<cr>
nn <c-c> <c-[>:noh<cr><c-[>
nn <leader>e :set conceallevel=0<cr>
nn <leader>v :set conceallevel=3<cr>
nn <m-.> :cd %:p:h<cr>
nn <m-c> :make<cr>
nn <m-x> :
nn <silent><leader>s :source %<cr>:exe ':echom "sourced: ".expand("%")'<cr>
nn <silent><m-n> :bn<cr>
nn <silent><m-p> :bp<cr>
nn cn :cn<cr>
nn cn :cnext<cr>
nn co :copen<cr>
nn cp :cp<cr>
nn cp :cprev<cr>
nn zz zzzszH
tma <m-x> <c-\><c-n>:
xn // y/\V<c-r>=escape(@",'/\')<cr><cr>

" https://github.com/ihsanturk/snip
nn <leader>e :exe ':set ep=snip\ -l'.&ft<cr>=
xn <leader>e :<c-u>exe ':set ep=snip\ -l'.&ft<cr>gv=

let g:omni_sql_no_default_maps = 1 " fucking annoying <c-c> sql completion

" disables because using: https://github.com/preservim/vim-wheel
" nn <c-j> <c-e>j
" nn <c-k> <c-y>k
