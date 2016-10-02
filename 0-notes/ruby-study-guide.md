### Ruby
[Ruby docs](http://ruby-doc.org/core-2.1.5/ )

## Data Types
* numbers/fixnums
  * [integers](http://ruby-doc.org/core-2.1.5/Integer.html) - whole numbers (negative or positive)




DATA TYPES (https://en.wikibooks.org/wiki/Ruby_Programming/Data_types)
♣ Numbers(http://ruby-doc.org/core-2.1.5/Integer.html )( http://ruby-doc.org/core-2.1.5/Float.html )
- Integers – whole numbers, negative or positive 1  2  -1
- Floats – not whole numbers, with decimal places 1.5  2.25  -1.6

♣ Strings (http://ruby-doc.org/core-2.1.5/String.html )
- Anything held between quotation marks “blahblah” or ‘blahblah’
- #{variable/code} drops value into a string

♣ Symbols (http://ruby-doc.org/core-2.1.5/Symbol.html )
- Immutable, variable-esque in that they share object ids
- Written :blahblah 
- Often used in hashes as keys

♣ Arrays (http://ruby-doc.org/core-2.1.5/Array.html )
- Set of values contained in brackets
- Array = [value, value, value]
- See more below

♣ Hashes (http://ruby-doc.org/core-2.1.5/Hash.html )
- Sets of key value pairs contained in curly brackets 
- Hash  = {key: value}
- See more below

♣ Booleans  
- == ,  != ,  > , < ,  >= ,  <=
- &&  || 
- ultimately true or false

♣ Math
- +   Addition – can also be used on strings
- -  subtraction 
- multiplication – can also be used on strings (ha*2 returns haha)
- /   division 
- %   modulo – performs division and returns remainder
- number**number   exponents – ( 2**3  returns 8)
- more complex math http://ruby-doc.org/core-2.1.5/Math.html 


CONDITIONAL STATEMENTS / CONTROL FLOW
♣ Branching
- If
- Unless
- If-elsif-else
- Short if statement (aka ternary operator)
- When (case expression)
♣ Loops
- Until loop
• Set var value (to avoid infinite loop)
Until condition (== often used, or other equality operators)
Do something
Change var if needed
end
- While
• Set var value(to avoid infinite loop)
While condition (== often used, or other equality operators)
Do something
Change var if needed
end
♣ Blocks
- Especially good for looping through arrays/hashes/doing something a set number of times
- .each
• w arrays 
• array.each do |index|
do something
end
• array.each{|index| do something}
• w hashes
• hash.each do |key, value|
do something
end
• hash.each{|key,value| do something}
- .map
• creates a new array/hash containing values returned by block
• .map! overwrites inputted array with new information
• w arrays
• array.map |index|
do something
end
• array.map{|index| do something}
• w hashes
• hash.map |key,value|
do something
end
• hash.map{|key,value| do something}
- .times
- what else?

STRINGS (http://ruby-doc.org/core-2.1.5/String.html )
♣ Creating
- String = “string”
- String = String.new
- Create empty and add to
- String = “”
- String = ‘’
- Add to string
• String += “new string”
• String << “new string”
♣ Iterating 
- .each_char{|char| block }
♣ Modifying
- Change data type
• .to_i
• .to_f
• .to_sym
• 
ARRAYS (http://ruby-doc.org/core-2.1.5/Array.html )
♣ Creating 
- Literal construction
• Arr = [1, “two”, 3.0, true, false]
- Create empty array & add to it
• Create empty
• Arr = Array.new 
• Arr = []
• Add
• Arr.push(new_item)
• Arr << new_item
• Arr.insert(index to insert at, new_item)
♣ Accessing
- .sample(amount returned-or empty if 1)  returns random value
• good for creating random Boolean
• [true,false].sample
- .last (returns last element of self) .first (returns first item of self
• can take an argument and return last/frst 2/3/etc elements of self
• nil if empty
- .index(item) returns index item is at
- .include?(item) returns t/f
- .at(index) returns item at index
♣ Modifying
- .drop_while {|item| block } drops item up to (not including) the 1st element for which the block returns nil/false  returns array w remaining elements
- .take_while { |item| block } passes elements to block until block returns nil/false  returns array w all prior elements
- .delete_if {|item| block}  returns array
- .delete_at(index)
- .delete(item)
- .shift  removes first item in array and returns it
- .pop  removes last item in array and returns it
- Sort 
• .sort  returns new array sorted with <=> operator (destructive w bang)
• .sort { |a,b| block } returns new array sorted according to block (destructive w bang)
• arr = [“d”, “a”, “e”, “c”, “b”]
arr.sort  [“a”, “b”, “c”, “d”, “e”]
arr.sort { |x,y| y <=> x }  [“e”, “d”, “c”, “b”, “a”]
♣ Iterating thru
- .each
- .map (can be destructive/change array)
♣ math  add items of array
- .inject
• array.inject do |sum, index|
total =  sum + index
end
- .each
• total = 0
array.each do |index|
total += index
end

HASHES (http://ruby-doc.org/core-2.1.5/Hash.html )
♣ Creating
- Implicit
• Hash = { key: value, key2: value2 }
• Hash = { “key” => value, “key2”=> value2 }
• Hash = { :key => value, :key2 => value2 }
- Creating empty and adding to it
• Create empty
• hash = Hash.new
• hash = {}
• add to
• hash[new key] = new value
♣ Accessing
- Via key  hash[key]  returns value
- .fetch(key)  returns value
- key(value)  returns key with value from parameter
• hash = {a:100, b:200}
hash.key(100) returns :a
- .keys returns array of keys
- .has_key?(key) returns true or false
- .has_value?(value)  returns true or false
♣ Modifying
- .delete_if { |key,value| block}  deletes every k/v pair for which block is true
- .keep_if { |key,vale| block}  deletes every k/v pair for which block is false
- .map! { key,value| block}  modifies hash according to block
- .reject { |key,value| block}  returns new array w k/v pairs for which block is false
♣ Iterating thru
- .each{ |key,value| block}  calls block once for each key in hash, passing k/v pairs as parameters
- .each_key { |key| block }  calls block once for each key in hash, passing key as parameter
- .each_value {|value| block }  valls block once for each key in hash, passing value as parameter
- .map

PRINTING INFORMATION, GATHERING INFO FROM USER
♣ Printing information
- p – used mostly for debugging, prints exactly as written (ie a string will print with quotes)
- puts – used for displaying info to the screen
- print
♣ Gathering information from user
- gets.chomp  get string from user and removes line created by ‘return’
• assign gets.chomp to a variable
• alter the variable as needed
• .to_i
• write a to_bool(var) method
• .to_f (to float)
• .to_sym (to symbol)
• alter the string
• .upcase  UPCASE (use bang to change string)
• .capitalize  Capitalized (use bang to change string)
- make user interface methods

DECLARING METHODS -WITH OR WITHOUT PARAMETERS
♣ def method_name(parameters)
do stuff
end
♣ other ways????? Is there more that I should be concerned about here??? 
♣ Should be 5 lines or less – perform only one task

INTERPRETING METHOD SIGNATURES IN DOCUMENTATION
♣ Understanding the documentation????

THE GOTCHAS OF IMPLICIT RETURN
♣ REALLY NEED TO WORK ON THIS CONCEPT U_U
♣ Remember just because something prints something it doesn’t necessarily return it!!!!!
♣ Remember to look at the docs for what gets returned when!!

CLASSES (http://ruby-doc.org/core-2.1.5/Class.html )
♣ Defining a class
- class Class_name
attr_reader :variable :another_variable
attr_accessor :some_variable

def initialization(arguments passed in on initialization)
@argument = argument
print initialization statement if wanted
end
def some_method(arguments if wanted)
do something
end
def self.method_name(arguments)  class method allows to be invoked from class NOT just instance
do something
end
end
♣ Attributes
- Instance variables (@)
♣ Instance methods
- self.method  CLASS method
- Redefine/override methods for the class
- General instance methods
♣ attr_reader
- only be able to read the variable
♣ attr_accessor
- read and write variable 

MODULES (http://ruby-doc.org/core-2.1.5/Module.html )
♣ group of methods
♣ syntax 
- as a standalone: 
• module Module_name
• def self.method(arguments)
o do something
• end
• def self.another_method(arguments)
o do something else
• end
• end
- as a mixin
• module Module_name
• def method(arguments)
o do something
• end
• def another_method(args)
o do something else
• end
• class Class_name
o include Module_name
o other class stuff
• end
♣ how to use
- include mixin Module in a class  make new instance of class  class_instance.method
- write Module.method(parameters) to call a standalone module method

READING AND WRITING SIMPLE RSPEC TESTS
♣ name file  file_spec.rb
♣ run in terminal w  rspec file_spec.rb
♣ syntax
- require_relative ‘class_name’
describe Class do
let(:variable) {class_name.new(initialization vars) }
it “reference name for file” do
something if necessary
expect(something).to eq something
end
end
♣ .to eq blahblahblah  most common check method
♣ https://www.anchor.com.au/wp-content/uploads/rspec_cheatsheet_attributed.pdf 

♣ THERE IS ALSO MINITEST for testing (installed minitest-5.9.0)


THINGS TO REDO/LOOK AT AGAIN
♣ alias_manager.rb
♣ vampires.rb
♣ improve user interfaces
♣ blocks
♣ compare practice assessment 6 with others?? 
♣ Check method names in this study guide!!!!!!!!!!!
♣ 

