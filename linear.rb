
def linear_search(num, array)
  index = []
  for item in 0..array.length - 1
    if num == array[item]
      index << item
    end
  end
  p index[0]
end
random_numbers = [ 4, 3, 2, 20, 5, 64, 78, 11, 43 ]
linear_search(20, random_numbers)
# => 3
linear_search(29, random_numbers)
# => nil



def global_linear_search(letter, array)
  index = []
  for item in 0..array.length - 1
    if array[item] == letter
      index << item
    end
  end
  index
end
arr = "entretenerse".split('')
p global_linear_search("e", arr)
# => [0, 4, 6, 8, 11]