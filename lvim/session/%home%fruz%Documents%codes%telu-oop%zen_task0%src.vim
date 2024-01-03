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
badd +1 zen_task0/src/Main.java
badd +1 ~/Documents/codes/telu-oop/zen_task0/src/data.txt
badd +48 ~/Documents/codes/telu-oop/zen_task0/src/Actions/ReadFromFile.java
badd +36 zen_task0/src/Todo/ZenTask.java
badd +8 ~/Documents/codes/telu-oop/zen_task0/src/Actions/WriteToFile.java
badd +32 ~/Documents/codes/telu-oop/zen_task0/src/Actions/RemoveTask.java
badd +78 ~/Documents/codes/telu-oop/zen_task0/src/Actions/EditTask.java
badd +8 ~/Documents/codes/telu-oop/zen_task0/src/Actions/Action.java
badd +15 ~/Documents/codes/telu-oop/zen_task0/src/Actions/AddTask.java
badd +2 ~/Documents/codes/telu-oop/zen_task0/src/Todo/Task.java
argglobal
%argdel
$argadd zen_task0/src/Main.java
edit ~/Documents/codes/telu-oop/zen_task0/src/Actions/RemoveTask.java
argglobal
balt zen_task0/src/Todo/ZenTask.java
let s:l = 35 - ((26 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 35
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
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
