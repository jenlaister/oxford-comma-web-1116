# Write a method oxford_comma that takes an argument array of string elements and converts it into a string using the Oxford comma.
# For example, the array ["fiddleheads","okra","kohlrabi"] should get converted to the string "fiddleheads, okra, and kohlrabi".
# Hint: Remember, strings can be operated on very similarly to arrays. For instance, you can add elements to the end of strings with
# the << ("shovel") method just like you can with arrays.
# Hint: What methods are available to you for converting arrays into strings? You might want to look it up in the Ruby Documentation.

def oxford_comma(array)
  if array.length == 1
    return array.join
  elsif array.length == 2
    return array.join(" and ")
  else #array.length > 2
    return array[0..-2].join(", ") + ", and " + array[-1]
  end
end

#  def join_all(join_with = ", ", connector = "and", last_comma = false)
#     connector = join_with+connector if last_comma
#     [list[0...-1].join(join_with), list.last].join(connector)

#     sentence = self[0..-2].join(", ") + ", and " + self[-1].to_s if self.size > 1
