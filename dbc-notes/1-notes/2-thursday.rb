### object oriented programming ###

# class with an attribute(stored as particular data type(ie-array)) whose job is it to convert to proper data type?
  # on calling object to pass in appropriate type 
  # or error handling --> raise error
  # set a default value in parameters/argument 
  # ie -->
    def say_hi(name = "") # send signal to human using the code ("code should be its own documentations")
      "hi #{name}"
    end
  # however also think about the task at hand --> is conversion of data necessary? (literally, do the least amount of work necessary) over thinking is the biggest time cost --> YAGNI (ya aint gonna need it)
  # fortune telling >>V<< flexibility

#------------------------------------------------------------->

# shielding instance variables
  # expose as needed, (ie only make attr_reader, attr_writer etc)
  # tho no ACTUAL way to totally shield off vars

# private
  # only thing that can call a private method is within object space(class definition) (not main object space)

  class Greeter

    def inititialize(args = {}) #name args to send messages to irl world
      @location = args[:location]
    end

    def greet(name = "Valued Guest")
      puts "Hi there, #{name}!"
      puts "How can I assist you today?"
    end
  
  end

  franco = Greeter.new(location: "Chicago Mariano's") #---> will work despite not technically/explicitly being a hash
  p franco 

  franco.greet("Dana") #--> works as expected
  franco.greet #---> also works as expected(optional arguments)

# protected

class Greeter
  def inititialize(args = {})
    @location = args[:location]
    @tenure_in_years = args[:tenure_in_years]
  end
  def greet(name = "Valued Guest")
    say_hi(name)
    ask_to_help
  end

  def delegate_hello_to(greeter, name) #--> 
    greeter.say_hi(name) #--> private method called, cannot work (other greeter cannot call)
  end #--> can move to protected space and make it work

  private #--> anytime writing a method that another method relies on to do its work, a good reason to make it private...sensitive information being handled 
  #--> can't really rspec test for private methods (eyeball testing, take momentarily out of private, )

  def say_hi(name)
    puts "Hi #{name}"
  end

  def ask_to_help
    puts "How can I assist you today"
  end

end

# how a subclass can override the superclass's instance attributes?



#---------------------------------------------------->#---------------------------------------------------->

class Bird
  attr_reader
  attr_accessor :flying
  def initialize(args)
    @wingspan = args[:wingspan]
    @sound = args[:sound]
    @flying = args[:flying] || true
    @clean_wings = args[:clean_wings] || true #--> cannot be set to false currently
  end

  def take_flight
    self.flying = true unless!clean_wings
  end

end

#---------------------------------------------------->#---------------------------------------------------->

class Bird
  attr_reader
  attr_accessor :flying, :clean_wings
  def initialize(args)
    @wingspan = args[:wingspan]
    @sound = args[:sound]
    @flying = args[:flying] || true
    @clean_wings = args.fetch(:clean_wings, true) #---> refactor to be able to set to false, more versatile  
      #---> argument can be set in a block or in second argument, block for longer/more complex arg?? 
  end

  def take_flight
    self.flying = true unless!clean_wings #---> is short code always the best???????
    #---> raise error??? if not
    raise "sorry, my wings are too dirty" unless clean_wings
    self.flying = true
  end

  def get_clean_wings
    clean_wings = true #---> wont work until var is set to attr_accessor
  end

  def make_sound
    self.sound
  end


end

# MODULE >>>> HAS A <<<< BEHAVIOR
# CLASS >>>> IS A <<<< PARENT-CLASS

#narcisistic parenting problem, bobolink is distinct from a bird


#---->     ||= or equals (use in place of an unless )

#module --> whose intention is to be mixed in --> adjectives/verb naming is good
#module --> whose intention is to present/etc(not mixin) --> noun might be better
# can take accessor methods to modules ()




# view responsibilities in a module?????????????? (think about <<-WORD ~~~~#{stringstuff}~~~~ WORD)