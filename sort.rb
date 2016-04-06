
def insert_sort( arr )
  (1..arr.length-1).each do |i|
    element = arr[i]
    j = i
    while j > 0 && element < arr[j-1]
      arr[j] = arr[j-1]
      j -= 1
    end
    arr[j] = element
  end
  arr
end
puts "Insertion sort :"
p insert_sort [5,4,3,2,1]
puts
p insert_sort [-5,-10,49,-239,10]
puts
p insert_sort [5,3,3,3,2,1,54,23,23,21]
puts "end"

def bubble_sort( arr )
  sorted = false
  until sorted
    sorted = true
    (0...arr.length-1).each do |i|
      if arr[i+1] < arr[i]
        arr[i], arr[i+1] = arr[i+1], arr[i]
        sorted = false
      end
    end
  end
  arr
end
puts "Bubble sort"
p bubble_sort [5,4,3,2,1]
puts
p bubble_sort [-5,-10,49,-239,10]
puts
p bubble_sort [5,3,3,3,2,1,54,23,23,21]
puts "end"


def merge_sort( arr )
  return arr if arr.length == 1
  p = arr.length/2
  left = merge_sort( arr[0, p] )
  right = merge_sort( arr[p, arr.length] )
  merge( left, right )
end

def merge( left, right )
  sorted_arr = []
  until left.empty? || right.empty?
    left[0] < right[0] ? ( sorted_arr << left.shift ) : ( sorted_arr << right.shift )
  end
  left.empty? ? ( sorted_arr.push *right ) : ( sorted_arr.push *left )
end

puts "Merge sort"
p merge_sort [5,4,3,2,1]
puts
p merge_sort [-5,-10,49,-239,10]
puts
p merge_sort [5,3,3,3,2,1,54,23,23,21]
puts "end"









