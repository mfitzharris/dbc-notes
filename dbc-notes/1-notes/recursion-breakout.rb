# # reverse a string
# def reverse_iteratively(string)
#   string = string.split('')
#   string.each do |letter|
#     string.insert(-1, string.delete(letter))
#   end
#   string.join
# end
# # this doesnt quite work...look up old solution

# p reverse_iteratively("blah blah")

# def reverse_recursively(word)
#   if word.length == 1
#     return word
#   end
#   word[-1] + reverse(word[0..-1])
# end


# # palindrome
# def iteratively_palindrome?(string)
#   still_string = string
#   if word.length == 1
#     return word
#   end
#   word[-1] + reverse(word[0..-1])
#   if string == still_string
#     return true
#   else
#     return false
#   end
# end

# def palindrome?(word)
#   last_index = word.length-1
#   last_index.times do |i|
#     if word[i] != word[last_index-1]
#       return false
#     end
#   true
# end

# p palindrome?("tacocat")

def recursive_palindrome?(word)
  #im lost :(
  first = word[0]
  last = word[-1]
  return true if word.length <= 1
  rest = word[1..-2]
  first == last && recursive_palindrome?(rest)
end

p recursive_palindrome?("tacocat")
p recursive_palindrome?("blah")





## binary search ## 
def binary_search(number, sorted_array, start=0, ending=sorted_array.length - 1)
  # use optional arguments in initial def
  p middle = (start + ending) / 2
  return middle if sorted_array[middle] == number
  return nil if start > ending
  if number > sorted_array[middle]
    start = middle + 1
  else
    ending = middle - 1
  end
  binary_search(number, sorted_array, start, ending)
end

array = [2,4,6,8,14,20,22,43,65,76]

p binary_search(6, array)
p "+++++++++++++++++++++"
p binary_search(13, array)
p "+++++++++++++++++++++"
p binary_search(43, array)
p "++++++++++++++++++"
p binary_search(20, array)





