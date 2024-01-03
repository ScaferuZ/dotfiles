let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Downloads/praktikan/a
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +129 ~/Downloads/praktikan/a/ADHIRA\ ZHAFIF\ DWICAHYO_10348167_assignsubmission_file_/DRRA_SI4708_ADHIRA\ ZHAFIF\ DWICAHYO_102022300161_MODUL\ GAB\ TP.py
badd +87 ~/Downloads/praktikan/a/ADINAR\ TRI\ PANUNTUN_10348163_assignsubmission_file_/DRRA_SI4708_ADINAR\ TRI\ PANUNTUN_102022300174_MODUL\ GAB\ TP.py
badd +110 ~/Downloads/praktikan/a/AHMAD\ AKMAL\ AMRAN_10348164_assignsubmission_file_/DRRA_SI4708_AHMAD\ AKMAL\ AMRAN_102022300010_MODUL\ GAB\ TP.py
badd +87 ~/Downloads/praktikan/a/ALEXANDER\ CHRISTOPHER\ TOGELANG_10348162_assignsubmission_file_/DRRA_SI-4708_ALEXANDER\ CHRISTOPHER\ TOGELANG_102022300040_MODUL\ GAB\ TP.py
badd +148 ~/Downloads/praktikan/a/ANISA\ FATIIMATUS\ ZAHRO_10348166_assignsubmission_file_/DDRA_SI4708_ANISAFATIIMATUSZAHRO_102022330350_MODULGABTP.py
badd +139 ~/Downloads/praktikan/a/ARIQ\ ANUGRAH\ ZAHID_10348161_assignsubmission_file_/DRRA_SI4708_ARIQ\ ANUGRAH\ ZAHID_102022330115_MODUL\ GAB\ TP.py
badd +112 ~/Downloads/praktikan/a/ARKANANTA\ FAUSTA\ CITRA\ SETIA\ BUDHI_10348165_assignsubmission_file_/DRRA_SI4708_ARKANANTA\ FAUSTA\ CITRA\ SETIA\ BUDHI_102022300328_MODUL\ GAB\ TP.py
badd +0 ~/Downloads/praktikan/a/CLARISSA\ WEMONA\ WIBAWANINGRUM_10348160_assignsubmission_file_/DRRA_SI4708_CLARISSA\ WEMONA\ WIBAWANINGRUM_102022300189_MODUL\ GAB\ TP.py
argglobal
%argdel
$argadd .
edit ~/Downloads/praktikan/a/CLARISSA\ WEMONA\ WIBAWANINGRUM_10348160_assignsubmission_file_/DRRA_SI4708_CLARISSA\ WEMONA\ WIBAWANINGRUM_102022300189_MODUL\ GAB\ TP.py
argglobal
balt ~/Downloads/praktikan/a/ARKANANTA\ FAUSTA\ CITRA\ SETIA\ BUDHI_10348165_assignsubmission_file_/DRRA_SI4708_ARKANANTA\ FAUSTA\ CITRA\ SETIA\ BUDHI_102022300328_MODUL\ GAB\ TP.py
let s:l = 111 - ((10 * winheight(0) + 26) / 52)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 111
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
