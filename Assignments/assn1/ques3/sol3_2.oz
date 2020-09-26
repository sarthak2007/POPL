% Epsilon must be float
declare
fun lazy {Approximate S Epsilon}
    case S of
    nil then 0.0
    [] H1|T1 then
        case T1 of
        nil then 0.0
        [] H2|T2 then
            if {Abs H1-H2} < Epsilon
            then 0.0
            else H1 + {Approximate T1 Epsilon}
            end
        end 
    end
end
