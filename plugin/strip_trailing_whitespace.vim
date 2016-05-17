" This file causes Vim to strip trailing whitespace before saving
function! <SID>StripTrailingWhitespace()
    let l:winview = winsaveview()
    %s/\s\+$//e
    call winrestview(l:winview)
endfunction

autocmd BufWritePre * :call <SID>StripTrailingWhitespace()
