@info("Loading Blink package")
using Blink
@info("Loading Interact package")
using Interact
w = Window()
# on function example on(println, ui)
import Colors
using Plots

function mycolorpicker()
    r = slider(0:255, label = "red")
    g = slider(0:255, label = "green")
    b = slider(0:255, label = "blue")
    output = Interact.@map Colors.RGB(&r/255, &g/255, &b/255)
    plt = Interact.@map plot(sin, color = &output)
    wdg = Widget(["r" => r, "g" => g, "b" => b], output = output)
    @layout! wdg hbox(plt, vbox(:r, :g, :b)) ## custom layout: by default things are stacked vertically
end

ui =mycolorpicker()
body!(w,ui)
