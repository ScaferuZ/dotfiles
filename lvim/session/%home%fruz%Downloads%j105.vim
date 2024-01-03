let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Downloads/j105
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +14 ~/Downloads/j105/NAILA\ HAFIDZ\ BACHTIAR_10019166_assignsubmission_file_/DRRA_SI4751_NAILA\ HAFIDZ\ BACHTIAR_102022300298_JURNAL1.py
badd +7 ~/Downloads/j105/NANDA\ IKHSAN\ HAFIZ_10019167_assignsubmission_file_/DDRA_SI4705_Nanda\ Ikhsan\ Hafiz_102022300324_JURNAL1.py
badd +1 ~/Downloads/j105/NASRULLAH\ ARIF_10019164_assignsubmission_file_/DRRA_4705_102022300297_NASRULLAH\ ARIF_JURNAL\ 1\ MODEL\ 3.py
badd +1 ~/Downloads/j105/NASYWAN\ TSANY\ FAWWAZ_10019165_assignsubmission_file_/DRRA_SI4705_NASYWAN\ TSANY\ FAWWAZ_102022300129_MODUL\ 3_JURNAL\ 1.py
badd +8 ~/Downloads/j105/NAZWA\ YUNIA\ SANTOSA_10019168_assignsubmission_file_/DRRA_SI4705_NAZWA\ YUNIA\ SANTOSA_102022300059_JURNAL1.py
badd +11 ~/Downloads/j105/PRISA\ AYUDIA\ NINGTIYAS_10019171_assignsubmission_file_/DRRA_SI4705_PRISA\ AYUDIA\ NINGTIYAS_JURNAL1.py
badd +13 ~/Downloads/j105/RIDHO\ RIZKY\ MEINANDA_10019170_assignsubmission_file_/DRRA_SI4705_RIDHO\ RIZKY\ MEINANDA_102022300200_JURNAL1.py
badd +15 ~/Downloads/j105/RIFTITA\ TASYAKKI_10019169_assignsubmission_file_/DRRA_SI4705_RIFTITA\ TASYAKKI_102022300269_JURNAL1.py
argglobal
%argdel
$argadd .
edit ~/Downloads/j105/RIFTITA\ TASYAKKI_10019169_assignsubmission_file_/DRRA_SI4705_RIFTITA\ TASYAKKI_102022300269_JURNAL1.py
argglobal
balt ~/Downloads/j105/RIDHO\ RIZKY\ MEINANDA_10019170_assignsubmission_file_/DRRA_SI4705_RIDHO\ RIZKY\ MEINANDA_102022300200_JURNAL1.py
let s:l = 13 - ((12 * winheight(0) + 26) / 52)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 13
normal! 019|
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
