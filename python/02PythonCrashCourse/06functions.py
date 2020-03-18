# 42:14

# create a function 
def sayHello(name = "Sam"):
        print("Hello " + name)

sayHello("John Doe")

sayHello()


# return values

def getSum(num1,num2):
    total = num1 + num2
    return total

print(getSum(3, 4))



# lambda function, anonymous function

getsum = lambda num1, num2 : num1 + num2
print(getsum(10,3))

