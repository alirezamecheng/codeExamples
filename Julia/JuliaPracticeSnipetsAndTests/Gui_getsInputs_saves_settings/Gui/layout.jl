header = Node(
    :div,
    "Config File Generator",
    attributes=Dict(
        :style => "background-color: black; color: white; padding: 12px;",
    ),
)
Nxv = textbox("Number of nodes in X direction")
Nx = pad(5px,Nxv)
Nyv = textbox("Number of nodes in Y direction")
Ny = pad(5px,Nyv)
doSaveIteratesV = checkbox(label="Save intervals?")
doSaveIterates = pad(5px,doSaveIteratesV)
saveIntervalsV = textbox()
saveIntervals = pad(5px,saveIntervalsV)
inter = hbox(doSaveIterates, saveIntervals)
NxNy = hbox(Nx,Ny)
configFileSelectorV = savedialog(; properties = ["showHiddenFiles"], filters = [(; name = "configFile", extensions = ["TOML", "ini"])])
configFileSelector = pad(10px,configFileSelectorV)

l1 = vbox(header,NxNy,inter,configFileSelector)

page = l1
