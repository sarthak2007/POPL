declare
fun {Map Xs F}
    {FoldR Xs fun {$ X Y} {F X} | Y end nil}
end
