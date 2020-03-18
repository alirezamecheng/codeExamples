# 50:00
x = 10
y = 2

# comparison Operators (==,!=, <, >, >=, <=)

# simple if
if x > y:
    print(f"{x} is grater than {y}")

# if/Else/elseif
if x > y:
    print(f"{x} is grater than {y}")
elif x == y:
    print(f"{x} is equal to {y}")
else:
    print(f"{x} is less than {y}")


# nested if 
if x > 2: 
    if x<=10:
        print(f"{x} is grater than 2 and less than 10")

if x>2 and x<=10:
    print(f"{x} is grater than 2 and less than 10")

if x>2 or x<=10:
    print(f"{x} is grater than 2 or less than 10")

if not(x==y):
    print(f"{x} is not equal to {y}")



# membership operators
numbers = [1,2,3,4,5]
x = 3
# in 
if x in numbers:
    print(x in numbers)

# not in 
if x in numbers:
    print(x not in numbers)

# identity operators 
# is
x = 20 
y = 20  
if x is y:
    print(x is y)

x = 20 
y = 2
if x is not y:
    print(x is not y)
