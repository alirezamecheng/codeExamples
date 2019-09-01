using WebIO
using Blink
using Interact

scp2 = Scope(imports = ["https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.5/css/bulma.min.css"])
ui2 = Node(:button, "press me", className="button is-primary")
scp2.dom = ui2

w2 = Window()
body!(w2,scp2)



scp = Scope()
ui = Node(:button, "press me", className="button is-primary")
scp.dom = ui
InteractBase.slap_design!(scp)

w = Window()
body!(w,scp)

scp3 = Scope()
input = button("Press me!", className = "button is-danger")
# ui3 = Node(:button,input, className = "button is-danger")
ui3 = input
InteractBase.slap_design!(scp3)
scp3.dom = ui3
w3 = Window()
body!(w3,scp3)

"This is help"
function Hello()
end

