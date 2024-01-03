let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Downloads/j205
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +11 ~/Downloads/j205/NANDA\ IKHSAN\ HAFIZ_10019652_assignsubmission_file_/DDRA_SI4705_Nanda\ Ikhsan\ Hafiz_102022300324_JURNAL2.py
badd +1 ~/Downloads/j205/NASRULLAH\ ARIF_10019651_assignsubmission_file_/DRRA_SI4705_102022300297_NASRULLAH\ ARIF_JURNAL\ 2_MODUL3.py
badd +8 ~/Downloads/j205/NASYWAN\ TSANY\ FAWWAZ_10019658_assignsubmission_file_/DRRA_SI4705_NASYWAN\ TSANY\ FAWWAZ_102022300129_JURNAL2.py
badd +6 ~/Downloads/j205/NAZWA\ YUNIA\ SANTOSA_10019657_assignsubmission_file_/DRRA_SI4705_NAZWA\ YUNIA\ SANTOSA_102022300059_JURNAL2.py
badd +1 ~/Downloads/j205/PRISA\ AYUDIA\ NINGTIYAS_10019654_assignsubmission_file_/DRRA_SI4705_PRISA\ AYUDIA\ NINGTIYAS_102022300016_JURNAL2.py
badd +9 ~/Downloads/j205/RIDHO\ RIZKY\ MEINANDA_10019655_assignsubmission_file_/DRRA_SI4705_RIDHO\ RIZKY\ MEINANDA_102022300200_JURNAL2.py
badd +5 ~/Downloads/j205/RIFTITA\ TASYAKKI_10019653_assignsubmission_file_/DRRA_SI4705_RIFTITA\ TASYAKKI_102022300269_JURNAL2.py
argglobal
%argdel
$argadd .
edit ~/Downloads/j205/NAZWA\ YUNIA\ SANTOSA_10019657_assignsubmission_file_/DRRA_SI4705_NAZWA\ YUNIA\ SANTOSA_102022300059_JURNAL2.py
argglobal
balt ~/Downloads/j205/RIFTITA\ TASYAKKI_10019653_assignsubmission_file_/DRRA_SI4705_RIFTITA\ TASYAKKI_102022300269_JURNAL2.py
let s:l = 6 - ((5 * winheight(0) + 26) / 52)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 6
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
