let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Downloads/praktikan/tp08
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +17 ~/Downloads/praktikan/tp08/ADHIRA\ ZHAFIF\ DWICAHYO_9982470_assignsubmission_file_/DRRA_SI4708_Adhira\ Zhafif\ Dwicahyo_102022300161_Modul3\ TP3.py
badd +11 ~/Downloads/praktikan/tp08/ADINAR\ TRI\ PANUNTUN_9982472_assignsubmission_file_/DRRA_SI4708_ADINAR\ TRI\ PANUNTUN_102022300174_MODUL3\ TP3.py
badd +9 ~/Downloads/praktikan/tp08/AHMAD\ AKMAL\ AMRAN_9982471_assignsubmission_file_/DRRA_SI4708_AHMAD\ AKMAL\ AMRAN_\ 102022300010_MODUL3\ TP3.py
badd +12 ~/Downloads/praktikan/tp08/ALEXANDER\ CHRISTOPHER\ TOGELANG_9982466_assignsubmission_file_/DRRA_SI-47-08_ALEXANDER\ CHRISTOPHER\ TOGELANG_102022300040_MODUL3\ TP3.py
badd +19 ~/Downloads/praktikan/tp08/ANISA\ FATIIMATUS\ ZAHRO_9982468_assignsubmission_file_/DDRA_SI4708_Anisa\ fatiimatus\ Zahro_102022330350_M0DUL3\ TP3.py
badd +12 ~/Downloads/praktikan/tp08/ARIQ\ ANUGRAH\ ZAHID_9982467_assignsubmission_file_/DRRA_SI4708_ARIQ\ ANUGRAH\ ZAHID_102022330115_MODUL3\ TP\ 3.py
badd +14 ~/Downloads/praktikan/tp08/ARKANANTA\ FAUSTA\ CITRA\ SETIA\ BUDHI_9982469_assignsubmission_file_/DRRA_SI4708_ARKANANTA\ FAUSTA\ CITRA\ SETIA\ BUDHI_102022300328_MODUL3\ TP3.py
badd +57 ~/Downloads/praktikan/tp08/CLARISSA\ WEMONA\ WIBAWANINGRUM_9982473_assignsubmission_file_/DRRA_SI4708_CLARISSA\ WEMONA\ WIBAWANINGRUM_102022300189_MODUL3\ TP3.py
argglobal
%argdel
$argadd .
edit ~/Downloads/praktikan/tp08/ALEXANDER\ CHRISTOPHER\ TOGELANG_9982466_assignsubmission_file_/DRRA_SI-47-08_ALEXANDER\ CHRISTOPHER\ TOGELANG_102022300040_MODUL3\ TP3.py
argglobal
balt ~/Downloads/praktikan/tp08/AHMAD\ AKMAL\ AMRAN_9982471_assignsubmission_file_/DRRA_SI4708_AHMAD\ AKMAL\ AMRAN_\ 102022300010_MODUL3\ TP3.py
let s:l = 30 - ((29 * winheight(0) + 26) / 52)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 30
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
