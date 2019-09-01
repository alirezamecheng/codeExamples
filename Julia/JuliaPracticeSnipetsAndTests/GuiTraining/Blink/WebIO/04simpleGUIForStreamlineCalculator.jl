using Blink, WebIO, Interact

function p()
    uxfile = filepicker(label="Select Ux"; multiple=false, accept=".csv")
    vyfile = filepicker(label="Select Vy"; multiple=false, accept=".csv")
    outputFileName = textbox(hint="output file name"; value="Out")
    saveButton = button("Save")
    # outputDileName = 
    page = node(:div,
                node(:h1,"Streamline Calculator",class="container"),
                hbox(pad(1em,node(:p,uxfile)),pad(1em,node(:p,vyfile))),
                node(:br),
                hbox(pad(1em,node(:p,"Output file name:")),node(:p,outputFileName)), 
                pad(1cm,node(saveButton)       )
    )
return page
end

global isWindowOpen = false
function disp()
    if isWindowOpen == false
        w = Window()
        global isWindowOpen = true
    end
    body!(w,p())
end
disp()
