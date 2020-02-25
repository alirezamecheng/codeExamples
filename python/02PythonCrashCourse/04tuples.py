# tuples are in order and unchanable
# allows duplicate members

# creating 
f = ("Apples", "Oranges", "Grapes")
f2 = tuple(("Apples", "Oranges", "Grapes"))
print(f,f2)

f3 = ("apple") # this will be a string not a tuple 
print(f3,type(f3)) 

# IMPORTANT:  to make the above a tuple the "," is necessary 
f4 = ("Apple",)
print(f4,type(f4)) 

# get a value 
print(f[1])

# the value can't change
# f[0] = "Pears"

# delete tuple 
del f2
print(f2)

# lenght 
print(len(f))



## A set is a collection which are unordered. 
# no duplicate is allowed

# cration 
fset = {"Apple", "Orange", "mango"}

# check if in set
print("Apple" in fset)

# add to set
fset.add("Grape")
print(fset)

# Remove from set
fset.remove("Grape")
print(fset)

# add douplicate
fset.add("Apple") # doesn't do anything becasue the Apple intery already exists



# clear set
fset.clear()
print(fset) # returns an empty set

# clear is different with clear 
# del fset
# print(fset)

