using ConfParser

conf = ConfParse("config.http")
parse_conf!(conf)

# get and store config parameters
email    = retrieve(conf, "email")
password = retrieve(conf, "password")
foobars  = retrieve(conf, "foobars")

# modify config parameter
commit!(conf, "email", "newemail@test.com")

# save changes
save!(conf)
