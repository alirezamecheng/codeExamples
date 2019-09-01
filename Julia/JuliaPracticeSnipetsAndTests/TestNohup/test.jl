
file = open("Log.txt", "w")

for i = 1:1000
    # println(i)
    println(file, i)
    flush(stdout)
    flush(file)
    sleep(1)
end

close(file)

function foo()
    println("foo")
end


