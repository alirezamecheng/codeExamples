name  = 'Brad'
age = 37 

# concatenate 
print("my name is " + name + " and I am " + str(age))

# Arguments by Position 
print("my name is {name} and I am {age}".format(name=name,age=age))

# F-String (3.6+)
print(f"my name is {name} and I am {age}")

# String Methods

s = "hello world"

# Capitalize string 
print(s.capitalize())
print(s.upper())
print(s.lower())
print(s.swapcase())
print(len(s))
print(s.replace("world","everyone"))
sub = "h"
print(s.count(sub))
print(s.startswith("hello"))
print(s.endswith("d"))
print(s.split())
print(s.find("r"))
print(s.isalnum())
print(s.isalpha())
print(s.isnumeric())
s = "helloworld"
print(s)
print(s.isalnum())
print(s.isalpha())
print(s.isnumeric())


