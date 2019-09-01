function coji(T,Tnew)
    for j = 1:size(T,2)
        for i = 1:size(T,1)
            Tnew[i,j] = T[i,j]
        end
    end
    return Tnew
end
function coij(T,Tnew)
    for i = 1:size(T,1)
        for j = 1:size(T,2)
            Tnew[i,j] = T[i,j]
        end
    end
    return Tnew
end
function cop(T, Tnew)
    return Tnew = copy(T)
end
function depCop(T, Tnew)
    return Tnew = deepcopy(T)
end
using BenchmarkTools
using Random
A = rand(500,500)
B = rand(500,500)
@info("Test started")
@benchmark coji(A,B)
@benchmark coij(A,B)
@benchmark cop(A,B)
@benchmark depCop(A,B)