let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Downloads/praktikan/j
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +16 ~/Downloads/praktikan/j/ADHIRA\ ZHAFIF\ DWICAHYO_10056917_assignsubmission_file_/DRRA_SI4708_Adhira\ Zhafif\ Dwicahyo_102022300161_JURNAL1.py
badd +13 ~/Downloads/praktikan/j/ADINAR\ TRI\ PANUNTUN_10056916_assignsubmission_file_/DRRA_SI4708_ADINAR\ TRI\ PANUNTUN_102022300174_JURNAL1.py
badd +15 ~/Downloads/praktikan/j/AHMAD\ AKMAL\ AMRAN_10056914_assignsubmission_file_/DRRA_SI4708_AHMAD\ AKMAL\ AMRAN_102022300010_JURNAL1.py
badd +14 ~/Downloads/praktikan/j/ALEXANDER\ CHRISTOPHER\ TOGELANG_10056919_assignsubmission_file_/DRRA_SI-47-08_ALEXANDER\ CHRISTOPHER\ TOGELANG_102022300040_JURNAL\ 1.py
badd +0 ~/Downloads/praktikan/j/ARIQ\ ANUGRAH\ ZAHID_10056915_assignsubmission_file_/DRRA_SI4708_ARIQ\ ANUGRAH\ ZAHID_102022330115_JURNAL1.py
argglobal
%argdel
$argadd .
edit ~/Downloads/praktikan/j/ARIQ\ ANUGRAH\ ZAHID_10056915_assignsubmission_file_/DRRA_SI4708_ARIQ\ ANUGRAH\ ZAHID_102022330115_JURNAL1.py
argglobal
balt ~/Downloads/praktikan/j/ALEXANDER\ CHRISTOPHER\ TOGELANG_10056919_assignsubmission_file_/DRRA_SI-47-08_ALEXANDER\ CHRISTOPHER\ TOGELANG_102022300040_JURNAL\ 1.py
let s:l = 20 - ((19 * winheight(0) + 26) / 52)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 20
normal! 04|
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
