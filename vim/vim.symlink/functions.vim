" Relative no normal line numbbers toggling
function! NumberToggle()
    if(&rnu == 0 && &nu == 0)
        set nu
    elseif(&nu == 1)
        set nonu
        set rnu
    else
        set nornu
    endif
endfunc
nnoremap <C-n> :call NumberToggle()<cr>
