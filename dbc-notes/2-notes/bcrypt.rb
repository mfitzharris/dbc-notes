# decrypting --> implied can go backwards
# hash
  # can't go backwards

# id | user | password
# 1  | matt | "password"  <----- bad that storing pw as plain text

# bcrypt 
  # plain text goes in --> hashes --> gibberish comes out
  
# every unique thing should result in the same hash
# no hash result should be duplicated

# duplicate passwords

# salt 
  # implementation --> add salt col? 
  # password + salt is what gets hashed
  # salt generated randomly
  # protects against pre computing 

# bcrypt takes care of salting
  # salt + difficulty + hash output
  # difficulty -> slows down (precomputing/brute forcing takes even longer)


# bcrypt string comparison/authentication
  # goes thru an extra process
  # overrides == method
    # sends plaintext thru hashing 