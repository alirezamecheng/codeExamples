# Create a list 
numbers = [1, 2, 3, 4, 5]

# use a constructor 
numbers2 = list((1,2,3,4,5))

print(numbers,numbers2)

fruits = ["Apples", "oranges", "grapes", "Pears"]


# give a value 
print(fruits[1]) # zero based array

# get lenght
print(len(fruits))

# Append 
fruits.append("mangos")
print(fruits)

# remove 
fruits.remove("grapes")
print(fruits)

# Insert into position 
fruits.insert(2,"strawberries")
print(fruits)

# pop
fruits.pop(2)
print(fruits)

# reverse list
fruits.reverse()
print(fruits)

# sort list 
fruits.sort()
print(fruits)

# reverse sort
fruits.sort(reverse=True)
print(fruits)

# change value
fruits[0] = "Blueberries"
print(fruits)



