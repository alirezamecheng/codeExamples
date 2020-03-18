# 1:13:07
#example of a custome module to be imported 
import re # regular expression module which is a core module 

def validate_email(email):
    if len(email)>7:
        return bool(re.match(r"^.+@(\[?)[a-zA-Z0-9-.]+.([a-zA-Z]{2,3}|[0-9]{1,3})(]?)$",email)
        )