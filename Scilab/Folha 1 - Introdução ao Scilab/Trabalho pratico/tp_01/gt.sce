// gt(alpha,tempo)
function [x] = gt(alpha,tempo)
    lomba = -alpha .* tempo
    x = exp(lomba)
endfunction
