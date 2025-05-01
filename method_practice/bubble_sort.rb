def bubble_sort(array)
  
  (array.length - 1).times do |pass| #Determines the number of times we will iterate through the whole array, and set the default value of the breakout clause to false.
    any_swaps = false
  
    array.each_cons(2).with_index do |(current, next_value), index| #This creates comparison pairs so we can swap indices.
      if current > next_value
        array[index], array[index + 1] = array[index + 1], array[index]
        any_swaps = true
      end
    end

    break unless any_swaps #Once we complete our iterations or if no swaps occur then this will break the loop
  end
  array
end

puts bubble_sort([1,4,56,3,8,3,2])