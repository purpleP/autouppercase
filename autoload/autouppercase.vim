fu! autouppercase#Upper(word, highlight_groups)
    let l:groups = copy(a:highlight_groups)
    if index(map(l:groups, 'synIDtrans(hlID(v:val))'), synIDtrans(synID(line('.'), col('.') - 1, 0))) >= 0
        return toupper(a:word) 
    else
        return a:word
    endif
endfu
