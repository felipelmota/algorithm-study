def binary_search(list, item, low = 0, high = list.length - 1)
  while low <= high
    middle = (low + high) / 2
    guess = list[middle]

    if guess == item
      return middle
    end
    
    if guess > item
      high = middle - 1
      binary_search(list, item, low, high)
    else
      low = middle + 1
      binary_search(list, item, low, high)
    end
  end

  return 'no index found'
end

my_list = (1..100).to_a

puts binary_search(my_list, 2)
puts binary_search(my_list, 50)
puts binary_search(my_list, 101)