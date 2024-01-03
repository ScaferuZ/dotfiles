let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Documents/codes/OOP-DIRA-ENDRA-1202220171
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +27 MODUL3/MODUL3_ENDRA/src/User.java
badd +62 MODUL3/MODUL3_ENDRA/src/MainApp.java
badd +52 MODUL3/MODUL3_ENDRA/src/Bioskop.java
badd +2 ~/Documents/codes/OOP-DIRA-ENDRA-1202220171/MODUL3/MODUL3_ENDRA/src/Cashier.java
argglobal
%argdel
$argadd MODUL3/MODUL3_ENDRA/src/User.java
edit ~/Documents/codes/OOP-DIRA-ENDRA-1202220171/MODUL3/MODUL3_ENDRA/src/Cashier.java
argglobal
balt MODUL3/MODUL3_ENDRA/src/Bioskop.java
let s:l = 12 - ((11 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 12
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
