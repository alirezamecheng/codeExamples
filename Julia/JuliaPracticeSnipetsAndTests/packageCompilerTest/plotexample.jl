module Hello

using Plots

Base.@ccallable function julia_main(ARGS::Vector{String})::Cint
    x = 1:10; y = rand(10); # These are the plotting data
    plot(x,y)
    return 0
end

end
