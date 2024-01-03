let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Downloads/praktikan/j105_4
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +20 ~/Downloads/praktikan/j105_4/NAILA\ HAFIDZ\ BACHTIAR_10358731_assignsubmission_file_/DRRA_SI4705_NAILA\ HAFIDZ\ BACHTIAR_102022300298_JURNAL1.py
badd +32 ~/Downloads/praktikan/j105_4/NANDA\ IKHSAN\ HAFIZ_10358736_assignsubmission_file_/DDRA_SI4705_Nanda\ Ikhsan\ Hafiz_102022300324_JURNAL1\ modul\ akhir.py
badd +1 ~/Downloads/praktikan/j105_4/NANDA\ IKHSAN\ HAFIZ_10358736_assignsubmission_file_/DRRA_SI4705_Nanda\ Ikhsan\ Hafiz_102022300324_JURNAL1\ modul\ akhir.py
badd +25 ~/Downloads/praktikan/j105_4/NASRULLAH\ ARIF_10358730_assignsubmission_file_/DRRA_SI4705_NASRULLAH\ ARIF_102022300297_JURNAL\ 1.py
badd +29 ~/Downloads/praktikan/j105_4/NASYWAN\ TSANY\ FAWWAZ_10358735_assignsubmission_file_/DRRA_SI4705_NASYWAN\ TSANY\ FAWWAZ_102022300129_JURNAL\ 1.py
badd +44 ~/Downloads/praktikan/j105_4/NAZWA\ YUNIA\ SANTOSA_10358729_assignsubmission_file_/DRRA_SI4705_NAZWA\ YUNIA\ SANTOSA_102022300059_JURNAL1.py
badd +15 ~/Downloads/praktikan/j105_4/PRISA\ AYUDIA\ NINGTIYAS_10358732_assignsubmission_file_/DRRA_SI4705_PRISA\ AYUDIA\ NINGTIYAS_102022300016_JURNAL1.py
badd +17 ~/Downloads/praktikan/j105_4/RIDHO\ RIZKY\ MEINANDA_10358734_assignsubmission_file_/DRRA_SI4705_RIDHO\ RIZKY\ MEINANDA_102022300200_JURNAL1.py
badd +0 ~/Downloads/praktikan/j105_4/RIFTITA\ TASYAKKI_10358733_assignsubmission_file_/DRRA_SI4705_RIFTITA\ TASYAKKI_102022300269_JURNAL1.py
argglobal
%argdel
$argadd .
edit ~/Downloads/praktikan/j105_4/RIFTITA\ TASYAKKI_10358733_assignsubmission_file_/DRRA_SI4705_RIFTITA\ TASYAKKI_102022300269_JURNAL1.py
argglobal
balt ~/Downloads/praktikan/j105_4/RIDHO\ RIZKY\ MEINANDA_10358734_assignsubmission_file_/DRRA_SI4705_RIDHO\ RIZKY\ MEINANDA_102022300200_JURNAL1.py
let s:l = 14 - ((13 * winheight(0) + 31) / 63)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 14
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
