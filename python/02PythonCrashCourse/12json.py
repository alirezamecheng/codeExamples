# 1:30:00

import json

# smaple JSON

userJSON = '{"first_name": "John", "last_name": "Doe", "age": 30}'

#parse to dict
user = json.loads(userJSON)
print(user)
print(user["first_name"])

# dict to JSON 
print("\n=== Dict to JSON ===")
car = {"make":"Ford","model":"mustang","year":1970}
carJSON = json.dumps(car)
print(carJSON)

