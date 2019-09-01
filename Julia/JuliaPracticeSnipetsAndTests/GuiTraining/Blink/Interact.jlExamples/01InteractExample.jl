using Blink, Interact, Observables

# spinbox is a widget provided by Interact
lhs = spinbox(1:100)
rhs = spinbox(1:100)

# This map function is provided by Observables;
# It creates an observables whose value updates every time lhs or rhs change.
# You can use do-block syntax for a more complex formula.
sum = map(+, lhs, rhs)

# hbox is a layout widget provided by Interact.
# This isn't the prettiest formatting but you can make it nicer or construct
# your own layout using WebIO DOM primitives (this is closer to web dev).
widget = hbox(pad(1em,lhs), pad(1em,"+"), pad(1em,rhs), pad(1em,"="), pad(0em,sum))

# Display the damn thing!
window = Window()
body!(window, widget)