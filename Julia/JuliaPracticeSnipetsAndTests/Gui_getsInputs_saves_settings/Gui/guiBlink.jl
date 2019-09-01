thisFilePath = @__DIR__
include(joinpath(thisFilePath,"..","utility","tools.jl"))

if isPackageInstalled("Blink")
    @info("Loading \"Blink\" package")
    using Blink
else
    @error("You don't have the \"Blink\" package installed.")
end
if isPackageInstalled("ConfParser")
    @info("Loading \"ConfParser\" package")
    using ConfParser
else
    @error("You don't have the \"ConfParser\" package installed.")
end
if isPackageInstalled("WebIO")
    @info("Loading \"WebIO\" package")
    using WebIO
else
    @error("You don't have the \"ConfParser\" package installed.")
end
if isPackageInstalled("CSSUtil")
    @info("Loading \"CSSUtil\" package")
    using CSSUtil
else
    @error("You don't have the \"CSSUtil\" package installed.")
end
if isPackageInstalled("Interact")
    @info("Loading \"Interact\" package")
    using Interact
else
    @error("You don't have the \"Interact\" package installed.")
end
include(joinpath(thisFilePath,"layout.jl"))
@info("Making window")
w = Window()
body!(w,page)
