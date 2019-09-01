using Gtk

# # first Example
# win = GtkWindow("My First Gtk.jl Program", 400, 200)

# b = GtkButton("Click Me")
# push!(win,b)

# showall(win)



# second Example 
win = GtkWindow("My First Gtk.jl Program", 400, 200)

b = GtkButton("Click Me")
push!(win,b)

function on_button_clicked(w)
  println("The button has been clicked")
end
signal_connect(on_button_clicked, b, "clicked")


get_gtk_property(win, :title, String)

set_gtk_property!(win, :title, "New title")
showall(win)

