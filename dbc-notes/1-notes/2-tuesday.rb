### self ###

### regex ###

### constants ###

### when to use an instance variable ###

### passing args to super ###

### objects talking to each other ###

### etc ###
# first obj oriented language --> smalltalk, objects sent messages to each other
o = Orange.new(3) #---> creates new object
o.diameter #---> sends 'diameter' message to that object. the 'dot' is the message send operator. 'o' is the receiver/thing that receives the message
# currently would get undefined method --> receiver doesn't know how to read that message/how to respond
# need to create an instance variable '@diameter' 
# instance variable need to live as long as the object lives
class Orange
  def initialize(diameter)
    @diameter = diameter #--> diameter can still not be set as an orange. needs to made readable. Currently is /encapsulated/ in the Orange class, is not accessible form the outside
  end
end
#----------------------------------------------------------
class Orange
  def initialize(diameter)
    @diameter = diameter
  end
  def diameter
    @diameter #--> public method is a way of responding to a message, response is whatever that method returns
  end
end
#----------------------------------------------------------
class Orange
  attr_reader :diameter #--> attr_reader just writes those tree lines, doesn't expose them, defines a message(method) that will return that variable --> side effect of exposing it
  def initialize(diameter)
    @diameter = diameter
  end
end
#---------------------------------------------------------->
class OrangeTree
  def initialize(oranges)
    @oranges = oranges
  end
  def ripe_oranges
    @oranges.select do  |o|
      o.diamter? 2 && o.moldy? == false
    end
  end
end
### dependencies ###
o1 = Orange.new(3) #moldy? == false
o2 = Orange.new(1) #moldy? == false
oranges = [o1,o1] # --> array object pointing to the two oranges
tree = OrangeTree.new(oranges) # tree object pointing to the array
# ripe_oranges going thru array one by one, if object/instance of an orange from array, sending message diameter and moldy? to each instance. it only cares that the object receiving the message can receive it (duck typing - "if it quacks like a duck it must be a duck")
#------------------------------------------------------------>
#OrangeTree's code knows about Oranges -- diameter and moldy
# code is currently assuming you will always care/know about diameter
# this is problematic --> bc of the DEPENDENCIES! (or tightly coupled)
  #cannot easily change Orange without changing OrangeTree
#----------------------------------------------------------->
# to reduce dependencies
#add to class Orange
class Orange
  def initialize 
    blahblahblah
  end
  def ripe? #--> create ripe? so that can change those variable at will, will not break stuff as easily
    @diameter>2 && @moldy == false
  end
end
# change ripe_oranges method to use 'ripe?' method :)
#----------------------------------------------------------->

### self ####
class Orange
  attr_reader :diameter, :moldy
  def initialize(diameter)
    @diameter = diameter
    @moldy = false
  end
  def ripe?
    self.diameter > 2 && moldy #self.blahblah is explicitly calling a method NOT an instance variable. self is the receiver of the message --> sending the message back to the object ITself. talking to itself. 
    #self can also be thought of an alias for whichever instance of class is calling it. can momentarily be thought of as being replaced with the class's variable name (ie--> o1 o2)
    # keeping it as an instance variable, probably not --> if using a reader, use the self accessor method over the instance variable
  end

# setting an undefined variable to attrs will return nil

#----------------------------------------------------------->

### self on a Class method ###
class Dog
  def self.create_multipe(args) #called with Dog.create_multiple(args). message is being sent to an instance of >>>CLASS<<< not DOG
    blahblahblah
  end
end

#----------------------------------------------------------->

### super ###
class Employee
  attr_reader :salary, :name

  def initialize(args)
    @salary = args[:salary]
    @name = args[:name]
  end
end

class Manager < Employee #inheritance always goes this way
  #if something inherits from something say A "IS A" B
  def initiilize(args)
    @salary = args[:salary]
    @name = args[:name]
end

m = Manager.new(100_000, "Leon") #lol this is wrong but oh well
m.salary #--> runs up the chain until it finds what its looking for --> to Employee class, who knows how to respond to it

class Manager < Employee
  def inititialize(args)
    blahblahblah
  end
  def salary
    @salary * 2
  end
end
# will now not go up to Employee to respond to m.salary --> will stay in Manager class.

#----------------------------------------------------------->
#REFACTOR
class Manager < Employee
  def initialize(args) #--> Manager.new will return nil(message it gets is nil when it runs the initialize method
  end
end

#AGAIN
class Manager < Employee
  def initialize(args)
    super #--> send that message and see if anyone in my super class responds to the same method(message) name
    super(args) #--> may or may not have to send arguments, may make the assumption if passed the same number of arguments that the super method takes
  end
end

#OR!
class Manager < Employee
end

#----------------------------------------------------------->
class Manager < Employee
  def initialize(args)
    @salary = args[:salary]
    @name = args[:name]
    @budget = args[:budget]
  end
end
#REFACTOR
class Manager < Employee
  def initialize(args)
    super
    @budget = args[:budget] #differ from the super class
  end
end

#----------------------------------------------------------->
#CHANGE IT WITH CONSTANTS??
class Employee
  STARTING_MONEY = 100

  attr_reader :blahblahblah

  def initialize(args)
    blahblahblah
  end
end
# access STARTING_MONEY constant with
Employee::STARTING_MONEY #probably cannot be accessed with Employee.STARTING_MONEY

#access the constant withinside the Manager class
self.class::STARTING_MONEY #have to check this --> might be self.super.class::CONSTANT_NAME


#----------------------------------------------------------->
class Manager < Employee
  def initialize(args)
    super(salary: 200, name: args[:name])
    @budget = args[:budget]
  end
end

# with fruit tree
  # REFACTOR!!! with above instead of having instance variables
class OrangeTree < FruitTree
  def initialize
    super(maturity: blahlbahlbah) #--> send the arguments to the FruitTree
  end
end

class FruitTree
  def initialize(args)
    @maturity = args[:maturity]
  end
end

# best practices bc without it it might be hard to know if it exists 

# FRUIT ---->constant----> ORANGE
# TREE <----super<-------- TREE

#REFACTOR changes the above to

# FRUIT                   ORANGE
# TREE <------super<-------TREE

