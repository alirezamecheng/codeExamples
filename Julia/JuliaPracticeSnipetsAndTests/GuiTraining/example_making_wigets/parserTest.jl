using Blink
using WebIO
using Interact
w = Window()

function makeValue(I)
    try 
        return parse(Int,I)
        
    catch
        println("wrong")
        return false
    end
end


in = Interact.textbox("input")
output = Interact.@map makeValue(&in) # output value : output[]

# Interact.on(makeValue,in)

body!(w,in)

