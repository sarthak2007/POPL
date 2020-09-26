declare
fun {Take Xs N}
    if N =< 0
    then nil
    else 
        case Xs of
        nil then nil
        [] H|T then H | {Take T N-1}
        end
    end
end
