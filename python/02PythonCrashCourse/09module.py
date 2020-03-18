# 1:05:06
import datetime

print("=== Day time ===")
today = datetime.date.today()
print(today)


from datetime import date # to just import a function 

print("\n=== importing modules ===")
import time 
today =date.today()
timestamp = time.time()
print(timestamp)
print("\n=== importing modules 2 ===")
from time import time
today =date.today()
timestamp = time()
print(timestamp)

# installing sth. with pip 

print("""
\n
=== Using pip python package manager ===
using pip you can something globally. 
You can also use virtual environments too. 

to see what is installed use :
$ pip3 freeze
The output is like:
""")
import os
os.system("pip3 freeze")

print("""
To install camelcase use 
$pip3 camelcase
""")
os.system("pip3 install camelcase")

#####
print("\n=== Make camelcase ===")
from camelcase import CamelCase

c = CamelCase()
print(c.hump("hello there world"))

# import custom module 
print("\n=== import custom module ===")
import validator
# or
from validator import validate_email 

email = "test@test.com"
if validate_email(email):
    print("email is valid")
else:
    print("email is bad")

email = "test.test.com"
if validate_email(email):
    print("email is valid")
else:
    print("email is bad")