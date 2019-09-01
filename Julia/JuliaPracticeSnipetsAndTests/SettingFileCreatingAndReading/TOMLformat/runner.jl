using Pkg
using Pkg.TOML
to = Pkg.TOML
@show configuration = to.parsefile("settings.TOML")
@show a = configuration["catagory1"]
@show a["key1"]
@show a["key2"]
@show b = configuration["broken"]["packages"]["name"]
@show d = configuration["build"]["packages"][1][1]
