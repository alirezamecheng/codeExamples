using BenchmarkTools
using  Statistics

function testfunction()
    sleep(rand())
    sleep(5)
end
@benchmark testfunction()
r = @benchmarkable testfunction()
tune!(r)
run(r)
res = run(r,evals = 2)