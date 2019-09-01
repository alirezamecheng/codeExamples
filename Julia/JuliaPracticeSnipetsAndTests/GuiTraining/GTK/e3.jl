using Gtk

b = GtkButton("Press me")
win = GtkWindow(b, "Callbacks")
showall(win)

function button_clicked_callback(widget)
    println(widget, " was clicked!")
end

id = signal_connect(button_clicked_callback, b, "clicked")
id2 = signal_connect(b, "clicked") do widget
    println("\"", get_gtk_property(widget,:label,String), "\" was clicked!")
end