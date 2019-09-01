# https://juliagizmos.github.io/Interact.jl/latest/tutorial/

using Interact
using Blink
w = Window()
ui = button() # a wiget  for a botton
ui[] # returns the number of clicks on the botton
on(n -> println("Hello!"), ui) # using anonymous functions to make a botton do sth
ui[] = 33; # using this syntax you can also set the value of the widget
body!(w, ui);
