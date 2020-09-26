declare
fun {Last Xs N}
    local Drop in
        fun {Drop Xs K}
            if K =< 0
            then Xs
            else
                case Xs of
                nil then nil
                [] H|T then {Drop T K-1}
                end
            end
        end
        {Drop Xs {Length Xs}-N}
    end
end
