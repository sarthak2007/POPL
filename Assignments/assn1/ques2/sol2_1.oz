declare
fun {ZipWith BinOp Xs Ys}
    case Xs of
    nil then nil
    [] Hx|Tx then
        case Ys of
        nil then nil
        [] Hy|Ty then
            {BinOp Hx Hy} | {ZipWith BinOp Tx Ty}
        end
    end
end
