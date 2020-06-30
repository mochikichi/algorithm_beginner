p arr = [17, 11, 12, 5, 14, 9, 6, 16, 4, 10, 1, 19, 13, 15, 0, 2, 3, 18, 7, 8]

def select_sort(arr)
  arr.size.times {|i| select_min(arr, i)}
end

def select_min(arr, i)
  min = i
  ((i+1)..(arr.size-1)).each do |j|
    min = j if arr[min] > arr[j]
  end
  arr[i], arr[min] = arr[min], arr[i]
end

select_sort(arr)
p arr

