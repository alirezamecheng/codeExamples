using Blink
using Interact
import Colors
using Plots
# we want to create a widget that has three sliders and a 
# color that is updated to match the RGB value we gave with
# the sliders.
function mycolorpicker()
    r = slider(0:255, label = "red")
    g = slider(0:255, label = "green")
    b = slider(0:255, label = "blue")
    output = Interact.@map Colors.RGB(&r/255, &g/255, &b/255)
    plt = Interact.@map plot(sin, color = &output)
    wdg = Widget(["r" => r, "g" => g, "b" => b], output = output)
    @layout! wdg hbox(plt, vbox(:r, :g, :b)) ## custom layout: by default things are stacked vertically
end
# And now you can simply instantiate the widget with
mycolorpicker()
# Note the &r syntax: it means automatically update 
# the widget as soon as the slider changes value. See 
# Interact.@map for more details. If instead we wanted 
# to only update the plot when a button is pressed 
# we would do:
function mycolorpicker2()
    r = slider(0:255, label = "red")
    g = slider(0:255, label = "green")
    b = slider(0:255, label = "blue")
    update = button("Update plot")
    output = Interact.@map (&update; Colors.RGB(r[]/255, g[]/255, b[]/255))
    plt = Interact.@map plot(sin, color = &output)
    wdg = Widget(["r" => r, "g" => g, "b" => b, "update" => update], output = output)
    @layout! wdg hbox(plt, vbox(:r, :g, :b, :update)) ## custom layout: by default things are stacked vertically
end
mycolorpicker2()

