let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Downloads/praktikan/j205_4
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +7 ~/Downloads/praktikan/j205_4/NAILA\ HAFIDZ\ BACHTIAR_10359435_assignsubmission_file_/DRRA_SI4705_NAILA\ HAFIDZ\ BACHTIAR_102022300298JURNAL2.py
badd +1 ~/Downloads/praktikan/j205_4/NANDA\ IKHSAN\ HAFIZ_10359430_assignsubmission_file_/DDRA_SI4705_Nanda\ Ikhsan\ Hafiz_102022300324_JURNAL2\ modul\ akhir.py
badd +21 ~/Downloads/praktikan/j205_4/NANDA\ IKHSAN\ HAFIZ_10359430_assignsubmission_file_/DRRA_SI4705_Nanda\ Ikhsan\ Hafiz_102022300324_JURNAL2\ modul\ akhir.py
badd +11 ~/Downloads/praktikan/j205_4/NASRULLAH\ ARIF_10359431_assignsubmission_file_/DRRA_SI4705_NASRULLAH\ ARIF_102022300297_JURNAL\ 2.py
badd +11 ~/Downloads/praktikan/j205_4/NASYWAN\ TSANY\ FAWWAZ_10359434_assignsubmission_file_/DRRA_SI4705_NASYWAN\ TSANY\ FAWWAZ_102022300129_JURNAL\ 2.py
badd +7 ~/Downloads/praktikan/j205_4/NAZWA\ YUNIA\ SANTOSA_10359428_assignsubmission_file_/DRRA_SI4705_NAZWA\ YUNIA\ SANTOSA_102022300059_JURNAL2.py
badd +1 ~/Downloads/praktikan/j205_4/PRISA\ AYUDIA\ NINGTIYAS_10359429_assignsubmission_file_/DRRA_SI4705_PRISA\ AYUDIA\ NINGTIYAS_102022300016_JURNAL2.py
badd +10 ~/Downloads/praktikan/j205_4/RIDHO\ RIZKY\ MEINANDA_10359433_assignsubmission_file_/DRRA_SI4705_RIDHO\ RIZKY\ MEINANDA_102022300200_JURNAL2.py
badd +0 ~/Downloads/praktikan/j205_4/RIFTITA\ TASYAKKI_10359432_assignsubmission_file_/DRRA_SI4705_RIFTITA\ TASYAKKI_102022300269_JURNAL2.py
argglobal
%argdel
$argadd .
edit ~/Downloads/praktikan/j205_4/RIFTITA\ TASYAKKI_10359432_assignsubmission_file_/DRRA_SI4705_RIFTITA\ TASYAKKI_102022300269_JURNAL2.py
argglobal
balt ~/Downloads/praktikan/j205_4/RIDHO\ RIZKY\ MEINANDA_10359433_assignsubmission_file_/DRRA_SI4705_RIDHO\ RIZKY\ MEINANDA_102022300200_JURNAL2.py
let s:l = 26 - ((25 * winheight(0) + 31) / 63)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 26
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
