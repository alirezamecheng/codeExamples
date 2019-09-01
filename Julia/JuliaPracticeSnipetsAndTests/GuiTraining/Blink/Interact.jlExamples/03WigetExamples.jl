using Blink
using Interact
ui = button()
w = Window()
body!(w, ui)

# on takes two arguments, a function and an AbstractObservable. 
# As soon as the observable is changed, the function is called 
# with the latest value.
on(println, ui)
on(n -> println("Hello!"), ui)
ui[] = 1 # this also triggers the "on" function
u2 = filepicker()
w2 = Window()
body!(w2,u2) # this rewrites the previous w

u = filepicker() # value is the path of selected file
body!(w2,u) # this rewrites the previous w
u[] 


u = textbox("Write here")  # value is the text typed in by the user
body!(w2,u) # this rewrites the previous w
sleep(0.5)
u[] = "Hello"
sleep(0.5)
u[] = "goodbye"
sleep(0.5)

u = autocomplete(["Mary", "Jane", "Jack"])  # as above, but you can autocomplete words
body!(w2,u) # this rewrites the previous w
u[]

u = checkbox(label = "Check me!")   # value is a boolean describing whether it's ticked
body!(w2,u) # this rewrites the previous w
sleep(0.5)
u[] = true

u = toggle(label = "I have read and agreed")   # same as a checkbox but styled differently
body!(w2,u) # this rewrites the previous w
sleep(0.5)
u[] = true

u = slider(1:100, label = "To what extent?", value = 33)   # value is the number selected
body!(w2,u) # this rewrites the previous w
sleep(0.5)
u[] = 17
sleep(0.5)
u[] = 38

u = dropdown(["a", "b", "c"])  # value is option selected
body!(w2,u) # this rewrites the previous w
sleep(0.5)
u[]

u = togglebuttons(["a", "b", "c"])  # value is option selected
body!(w2,u) # this rewrites the previous w
sleep(0.5)
u[]

u = radiobuttons(["a", "b", "c"])   # value is option selected
body!(w2,u) # this rewrites the previous w
sleep(0.5)
u[]

# The option widgets can also take as input a dictionary 
# (ordered dictionary is preferrable, to avoid items getting 
# scrambled), in which case the label displays the key while
# the output stores the value:

s = dropdown(OrderedDict("a" => "Value 1", "b" => "Value 2"))
body!(w,s)

