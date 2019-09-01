using Blink
# Blink.AtomShell.install()  # just one time
win = Window(async=false)
# body!(win, "Hello World", async=false) # Set the body content
# loadurl(win, "http://julialang.org") # Load a web page
# load!(win,"index.html")
# file = open("index.html")
# importhtml!(win,"index.html")

g() = println("This is G: ")
# Set up julia to handle the "press" message:
handle(win, "press") do args
    @show args
end
# Invoke the "press" message from javascript whenever this button is pressed:
body!(win, """<button onclick='Blink.msg("press", "g()")'>go</button>""");

f = open("index.html") do file
    read(file,String)
end
body!(win,f)


