
if has('win64')
  let s:bgimgdll = expand('<sfile>:p:h') . '\bgimg64.dll'
else
  let s:bgimgdll = expand('<sfile>:p:h') . '\bgimg32.dll'
endif

function bgimg#set_bg(color)
  call libcallnr(s:bgimgdll, 'bgimg_set_bg', a:color)
  redraw!
endfunction

function bgimg#set_image(path)
  call libcallnr(s:bgimgdll, 'bgimg_set_image', a:path)
  redraw!
endfunction

