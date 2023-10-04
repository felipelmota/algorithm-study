def binary_search(list, item)
  low = 0
  high = list.length - 1

  while low <= high
    middle = (low + high) / 2
    guess = list[middle]

    if guess == item
      return middle
    end

    if guess > item
      high = middle - 1
    else
      low = middle + 1
    end
  end

  return 'no index found'
end


my_list = [1, 3, 5, 7, 9]
# returning the index of the item
puts binary_search(my_list, 3)
puts binary_search(my_list, -1)
