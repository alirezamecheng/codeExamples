# packages 
using Pkg
function isPackageInstalled(A::String)
    return haskey(Pkg.installed(),A)
end



