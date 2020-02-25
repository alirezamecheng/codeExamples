# 1:15:50
print("""
Almost everything in python is an object that's because we can call 
methods on for example strings
""")

print("===Creating Classes===")
class User:
    # constructor 
    def __init__(self,name,email,age):
        self.name = name
        self.email = email
        self.age = age

    # methods
    def greeting(self):
        return f"my name is {self.name} and I am {self.age}"

    def has_buirthday(self):
        self.age += 1

# Init user object
print("=== Using an Object ===")
brad = User("Brad Traversy","brad@gmail.com",37)
print(type(brad))
print(brad.name)

brad.has_buirthday()
print(brad.greeting())


# extending classes  
print("\n=== extending classes ===")
class Customer(User):
    # constructor 
    def __init__(self,name,email,age):
        self.name = name
        self.email = email
        self.age = age
        self.balance = 0
    def set_balance(self, balance):
        self.balance = balance
    
    def greeting(self):
        return f"my name is {self.name} and I am {self.age} and my balance is {self.balance}"

# Init customer object 
janet = Customer("Janet Johnson","jatet@yahoo.com",25)

janet.set_balance(500)

janet.has_buirthday()
print(janet.greeting())
print("""
Note: All the parent methods are accessable with the child object
""")