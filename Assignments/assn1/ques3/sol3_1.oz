% You must give float argument to Sin
declare
fun lazy {Sin X}
    local SinAux in
        fun lazy {SinAux X Term Prod}
            Term | {SinAux X (~Term*X*X)/(Prod*(Prod+1.0)) Prod+2.0}
        end
        {SinAux X X 2.0}
    end
end
