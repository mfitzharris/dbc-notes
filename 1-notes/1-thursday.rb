### BREAKOUT NOTES ###

# comp memory essentially works as an enormous array
# ruby asks for a block of this to manage
  # called the HEAP
  # when creating a variable it uses this memory
    # keeps track with a number (represented by a hexadecimal) - address for the variable in the memory (unique)
  # the variable NAME also has to be kept track of

  # variable table
    # variable name | variable memory address/reference/pointer
    # a             | 0xFE7

  # setting a variable to another variable (b = a)
    # uses the same address 0xFE7
    # doing puts on this variable goes thru var table to access this address

a = String.new("a")
  # new address
b = a
  # same address as a
c = a.upcase
  # new address (upcase is nondestructive --> returns new data)
b.upcase!
  # destructive, reaches in to object and destroys it --> does not make a copy
a
  # because pointing to the same address --> returns the capitalized A from b.upcase! method run
c = nil
  # removes link to previous address - but address still exists, is an orphan object
  # ruby will eventually clean up unused objects --> garbage collection built in (so long as program is running). based on a limit (at least in part)
nil.object_id
  #nil has it's own address.id
b = a.dup
  # b has it's own address/reference
  # clone also works
def yell(str)
  str.upcase!
end

greeting = String.new("hi")
  # has a reference
yell(greeting)
  # no new objects

greeting = greeting + "!"
  # is + a destructive operation?
    # no! it is non destructive
  # greeting now points to a new object
greeting = "hello"
greeting << "!"
  # shovel is destructive

# Ruby under a microscope --> book how stuff actually gets implemented

### ARRAYS ###
greetings = Array.new
greeting_1 = String.new("hello")
greetings[0] = greeting_1
  # what does an array actually store? --> references
  # greetings[0] points to another reference
  # any object that has a reference to another object exists in this way
greetings << greeting_1
  # doesnt need to create a new reference link
  # array includes two references pointing to the same object now
greetings[1].upcase!
  # changes both index 0 and 1, because they were both pointing to the same object

greetings << String.new("hello")
  # new object connected to the array object
greetings << String.new("hello")
  # because ruby runs right first --> the second one also creates a new object as well (connected to the array as well)
#-----
wtf = String.new("hi")
wtf2 = String.new(wtf)
  #new object, copies contents of reference to new object
#-----
greetings = Array.new
greetings << String.new('foo')
greetings << String.new('bar')
greetings2 = greetings
greetings2 << String.new('baz')
  # greetings also linked to baz object

# THUS!!!!! be very wary of destructive methods if you are referencing that variable at ANY other point, because it might(probably) will unexpectedbly be changed

greetings2 = greetings.dup
  # array being duped does ---> creates a new array object that points to the same indexed objects
greetings[0] = nil
  # loses connection to object indexed at 0's reference
greetings2[1].upcase!
  # modifies reference

#-----
arr = Array.new(5, String.new("foo"))
  # string.new runs first
  # runs 5 times with reference to string.new's same object
arr2 = Array.new(5) {String.new("bar")}
  # actually runs the code five times - 5 and block
  # block is executable chunk of code
  # 5.times do { block} --> creates a new object each time






