include("./utility/tools.jl")
include("./Gui/guiBlink.jl")

output = Interact.@map println("========\n",
    "Nx = ",&Nxv,
    "\nNy = ", &Nyv,
    "\ndoSaveIteratesV = ",&doSaveIteratesV, 
    "\nFilePath = ",&configFileSelectorV
    )
