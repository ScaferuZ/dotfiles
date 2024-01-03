let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Documents/codes/telu-oop
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +54 ~/Documents/codes/telu-oop/zen_task0/src/Actions/ReadFromFile.java
badd +1 ~/Documents/codes/telu-oop/zen_task0/src/Todo/ZenTask.java
badd +33 ~/Documents/codes/telu-oop/zen_task0/src/Actions/WriteToFile.java
badd +7 zen_task0/src/Actions/Action.java
badd +14 ~/Documents/codes/telu-oop/zen_task0/src/Actions/EditTask.java
badd +26 ~/Documents/codes/telu-oop/zen_task0/src/Actions/MarkDone.java
badd +1 ~/Documents/codes/telu-oop/zen_task0/src/Actions/AddTask.java
argglobal
%argdel
$argadd ~/Documents/codes/telu-oop/zen_task0/src/Actions/ReadFromFile.java
edit ~/Documents/codes/telu-oop/zen_task0/src/Todo/ZenTask.java
argglobal
balt ~/Documents/codes/telu-oop/zen_task0/src/Actions/EditTask.java
let s:l = 1 - ((0 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
