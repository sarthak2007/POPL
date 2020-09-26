declare
fun {FoldL BinOp Xs Id}
    case Xs of
    nil then Id
    [] H|T then {FoldL BinOp T {BinOp Id H}}
    end
end
