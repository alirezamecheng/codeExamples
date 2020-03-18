const PRIFIX = @__DIR__
const LOG_PATH = joinpath(PRIFIX,"Build_Information","log.log")
mkpath(joinpath(PRIFIX,"Build_Information",))
function my_print(Arg...;log = true)
    if log
        io = open(LOG_PATH,"a")  
        for component in Arg
            print(io,component)
        end
        close(io)
    end
    
    for component in Arg
      print(component)
    end
end
my_println(Args...;log = false) = my_print(Args...,'\n';log=log)
a = 1
b = "Salam"

# my_print("hello",a,b)
# println("hello",a,b)
# println("=========")
my_println("hello"," ",a," ",b,log = true)
my_println("hello"," ",a," ",b,log = true)
