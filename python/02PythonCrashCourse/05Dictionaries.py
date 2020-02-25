# A collection which is unordered, changeable and indexed with no duplicate member
# 32:11

# create dict 
person = {
    "firstName": "John",
    "lastName": "Doe",
    "age": 30
}

# using constructors
p2 = dict(firstName="Alireza",lastName="Gh")

#get value
print(person["firstName"])
print(person.get("lastName"))

# add key/value 
person["phone"] = "555-555-555"

# get dict keys
print(person.keys())

# get dict items
print(person.items())

# copy dict 
p3 = person.copy()
p3["city"] = "Boston"
print(p3)

# remove item 
del(person["age"])
print(person)

# or

person.pop("phone")
print(person)

# clear 
person.clear()
print(person)

# Get length 
print(len(p2))


# list of dict
people = [
    {"name":"martha", "age":30},
    {"name":"kevin", "age":31}
]

print(people[1]["name"])