@info("Loading Blink package")
using Blink
@info("Loading Interact package")
using Interact
w = Window()
# on function example on(println, ui)
@info("Loading Plots package")
using Plots
@info("Loading WebIO package")
using WebIO
@info("Creating the window")
w = Window()


# ux = filepicker("select Ux", multiple=false, accept=".csv")
# fileui = pad(1em,ux)
# @show ux[]
# body!(w,fileui)

# header = dom"h3"("My program")
# body!(w,WebIO.dom"h1"("My program"))

# a = Node(
#     :div,
#     "Hello, world!",
#     style=Dict(
#         :backgroundColor => "black",
#         :color => "white",
#         :padding => "12px",
#    ),
# )

# body!(w,a)

header = node(:div,
"Stram lines calculator",
attributes=Dict(
    :class => "notification is-primary"
    # :style =>"background: gray; padding: 10px; border: 1px solid red;"
)
# style=Dict()
)

body!(w,header)


