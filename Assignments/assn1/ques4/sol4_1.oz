declare
fun {IsDiagonal M}
    local AllZero in
        AllZero = fun {$ Xs} {Length Xs} == {FoldR Xs fun {$ X Y} if X == 0 then Y+1 else Y end end 0} end
        case M of
        nil then true
        [] H|T then
            if {AllZero H.2} == false then false
            else 
                if {AllZero {Map T fun {$ Xs} Xs.1 end}} == false then false
                else {IsDiagonal {Map T fun {$ Xs} Xs.2 end}}
                end
            end 
        end
    end
end
