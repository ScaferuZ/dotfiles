let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Downloads/praktikan
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +22 ~/Downloads/praktikan/tp05_4/NAILA\ HAFIDZ\ BACHTIAR_10352058_assignsubmission_file_/DRRA_SI4705_NAILA\ HAFIDZ\ BACHTIAR_102022300298_MODUL\ GAB\ TP.py
badd +44 ~/Downloads/praktikan/tp05_4/NANDA\ IKHSAN\ HAFIZ_10352057_assignsubmission_file_/DDRA_SI4705_NANDA\ IKHSAN\ HAFIZ_102022300324_NODUL\ GAB\ 4dan5\ TP.py
badd +122 ~/Downloads/praktikan/tp05_4/NASRULLAH\ ARIF_10352062_assignsubmission_file_/DRRA_4705_NASRULLAH\ ARIF_102022300297_MODUL\ GAB\ TP.py
badd +10 ~/Downloads/praktikan/tp05_4/NASYWAN\ TSANY\ FAWWAZ_10352060_assignsubmission_file_/DRRA_SI4705_NASYWAN\ TSANY\ FAWWAZ_102022300129_MODUL\ GAB\ TP.py
badd +1 ~/Downloads/praktikan/tp05_4/NAZWA\ YUNIA\ SANTOSA_10352063_assignsubmission_file_/DRRA_SI4705_NAZWA\ YUNIA\ SANTOSA_102022300059_MODUL\ GAB\ TP.py
badd +32 ~/Downloads/praktikan/tp05_4/PRISA\ AYUDIA\ NINGTIYAS_10352064_assignsubmission_file_/DRRA_SI4705_PRISA\ AYUDIA\ NINGTIYAS_102022300016_MODUL\ GAB\ TP.py
badd +12 ~/Downloads/praktikan/tp05_4/RIDHO\ RIZKY\ MEINANDA_10352061_assignsubmission_file_/DRRA_SI4705_RIDHO\ RIZKY\ MEINANDA_102022300200_MODUL\ GAB\ TP.py
badd +94 ~/Downloads/praktikan/tp05_4/RIFTITA\ TASYAKKI_10352059_assignsubmission_file_/DRRA_SI4705_RIFTITA\ TASYAKKI_102022300269_MODUL\ GAB\ TP.py
argglobal
%argdel
$argadd tp05_4
edit ~/Downloads/praktikan/tp05_4/NASRULLAH\ ARIF_10352062_assignsubmission_file_/DRRA_4705_NASRULLAH\ ARIF_102022300297_MODUL\ GAB\ TP.py
argglobal
balt ~/Downloads/praktikan/tp05_4/RIFTITA\ TASYAKKI_10352059_assignsubmission_file_/DRRA_SI4705_RIFTITA\ TASYAKKI_102022300269_MODUL\ GAB\ TP.py
let s:l = 122 - ((60 * winheight(0) + 31) / 63)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 122
normal! 09|
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
