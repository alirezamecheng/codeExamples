using MAT

println("Please type the file name in this directory or the relative path to the file and press enter.")
# filename = readline()
filename = "testInput.mat"
println("The selected file is: \n ",filename)
file = matopen(filename)
vars = matread(filename)
close(file)

using Plots

# size(vars["cnt"])
cnt = vars["cnt"] # size [time x channels]

# p = plot(cnt,layout = size(cnt,2))
p = plot(cnt[:,1])
