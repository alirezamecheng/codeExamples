# 1:26:24
# open a file 
myFile = open("myfile.txt","w")

# get some info
print("name: ",myFile.name)
print("Is closed: ",myFile.closed)
print("Opening Mode: ",myFile.mode)


# write to file 
myFile.write("I hate python")
myFile.write(" and every thing")


# closing
myFile.close()

# append to file 
myFile = open("myfile.txt","a")
myFile.write("===Some appended text===")
myFile.close()

# Reading from a file
myFile = open("myfile.txt","r+")
text = myFile.read(1000)
print(text)
