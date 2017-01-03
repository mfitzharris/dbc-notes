## ArgumentError: compariosn of NilClass with String fialed
* comparison of //"hello" > nil fails//
* but not //"hello" == nil//
* no_nils = objects.compact >> returns array without nils
* sort_by { |item that is being sorted| how to sort it }
* nil.to_s returning "" allows us to 

## Solution for nil sorting
//
def sort(objects)
  length_before = objects.length
  no_nils = objects.compact
  length_after = no_nils.length
  nils_missing = length_before - length_after

  sorted_strings = no_nils.sort

  nils_missing.times do 
    sorted_strings.insert(0,nil)
  end

  sorted_strings
end
//

## solution for comparison of integers and string
//
def sort(objects)
  length_before = objects.length
  no_nils = objects.compact
  length_after = no_nils.length
  nils_missing = length_before - length_after

  sorted_strings = no_nils.sort_by { |item| item.to_s}

  sorted_strings = no_nils.sort

  nils_missing.times do 
    sorted_strings.insert(0,nil)
  end

  sorted_strings
end

##refactor

//
def sort(objects)
  <!-- length_before = objects.length
  no_nils = objects.compact
  length_after = no_nils.length
  nils_missing = length_before - length_after
 -->
  sorted_strings = objects.sort_by do |item| 
    item.to_s
  end
<!-- 
  sorted_strings = no_nils.sort

  nils_missing.times do 
    sorted_strings.insert(0,nil)
  end
 -->
  sorted_strings
end
//
