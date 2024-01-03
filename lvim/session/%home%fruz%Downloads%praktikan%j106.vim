let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Downloads/praktikan/j106
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +12 ~/Downloads/praktikan/j106/GHILMAN\ ARBA_10409189_assignsubmission_file_/DRRA_SI4706_GHILMAN\ ARBA_102022300435_JURNAL\ 1.py.py
badd +9 ~/Downloads/praktikan/j106/I\ GUSTI\ NGURAH\ RAJA\ PUTRA\ BUMI_10409195_assignsubmission_file_/DRRA_SI4706_I\ GUSTI\ NGURAH\ RAJA\ PUTRA\ BUMI_102022300159_JURNAL1.py.py
badd +7 ~/Downloads/praktikan/j106/JHON\ PAUL\ GINTING_10409193_assignsubmission_file_/DRRA_SI4706_JHON\ PAUL\ GINTING_12022330398_JURNAL\ 1.py
badd +47 ~/Downloads/praktikan/j106/KENNETH\ BRYAN_10409194_assignsubmission_file_/DRRA_SI4706_Kenneth\ Bryan_102022330093_JURNAL\ 1.py
badd +7 ~/Downloads/praktikan/j106/LUTHFI\ HAFIZHPUTRA\ BERNADIAN_10409191_assignsubmission_file_/DRRA_SI4706_LUTHFI\ HAFIZHPUTRA\ BERNADIAN_102022300221_JURNAL1.py
badd +50 ~/Downloads/praktikan/j106/MOCHAMAD\ RIZKY\ MAULANA\ AVIANSYAH_10409190_assignsubmission_file_/DRRA_SI4706_MOCHAMAD\ RIZKY\ MAULANA\ AVIANSYAH_102022300021_JURNAL\ 1.py
badd +0 ~/Downloads/praktikan/j106/MUHAMMAD\ FERDYANSYAH_10409192_assignsubmission_file_/DRRA_SI4706_MUHUAMMAD\ FERDYANSYAH_102022300141_JURNAL1.py
argglobal
%argdel
$argadd .
edit ~/Downloads/praktikan/j106/MUHAMMAD\ FERDYANSYAH_10409192_assignsubmission_file_/DRRA_SI4706_MUHUAMMAD\ FERDYANSYAH_102022300141_JURNAL1.py
argglobal
balt ~/Downloads/praktikan/j106/MOCHAMAD\ RIZKY\ MAULANA\ AVIANSYAH_10409190_assignsubmission_file_/DRRA_SI4706_MOCHAMAD\ RIZKY\ MAULANA\ AVIANSYAH_102022300021_JURNAL\ 1.py
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
