let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Downloads/chandra/Tugas_Besar_OOP_Chandra/src
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +5 Main.java
badd +1 ~/Downloads/chandra/Tugas_Besar_OOP_Chandra/src/Cafe.java
badd +4 ~/Downloads/chandra/Tugas_Besar_OOP_Chandra/src/Customer.java
badd +1 ~/Downloads/chandra/Tugas_Besar_OOP_Chandra/src/Makanan.java
badd +2 ~/Downloads/chandra/Tugas_Besar_OOP_Chandra/src/MenuItem.java
badd +1 ~/Downloads/chandra/Tugas_Besar_OOP_Chandra/src/Order.java
badd +0 ~/Downloads/chandra/Tugas_Besar_OOP_Chandra/src/Minuman.java
argglobal
%argdel
$argadd Main.java
edit ~/Downloads/chandra/Tugas_Besar_OOP_Chandra/src/Minuman.java
argglobal
balt ~/Downloads/chandra/Tugas_Besar_OOP_Chandra/src/Order.java
let s:l = 8 - ((7 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 8
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
