using ConfParser

conf = ConfParse("settings.ini")
parse_conf!(conf)

# get and store config parameters
user     = retrieve(conf, "database", "user")
password = retrieve(conf, "database", "password")
host     = retrieve(conf, "database", "host")

# replace config paramater
commit!(conf, "database", "user", "newuser")

# erase a config block
erase!(conf, "foobarness")

# save to another file
save!(conf, "testout.ini")