using WebIO, Blink, Interact
w = Window()
a = Node(
    :div,
    "Hello, world!",
    style=Dict(
        :backgroundColor => "black",
        :color => "white",
        :padding => "12px",
   ),
)

body!(w,a)

# equally 
# Asset("css","css","./css.css")
a = Node(
    :div,
    "Hello, World",
    attributes=Dict(
        :style => "background-color: black; color: white; padding: 12px",
    ),
)
body!(w,a)


# ==============
b = Node(
    :ul,
    Node(:li, "get milk"),
    Node(:li, "make a pie"),
    attributes=Dict(:class => "myclass",
    :style => "background-color: red;")
)
body!(w,b)

# js example
c = dom"button"(
    "Greet",
     events=Dict(
        "click" => js"function() { alert('Hello, World!'); }",
    ),
)
body!(w,c)

# another way to write js
c = dom"button"(
    "Greet",
    events=Dict(
        "click" => (@js () -> alert("Hello, World!")),
    ),
)
body!(w,c)

