p arr = [17, 11, 12, 5, 14, 9, 6, 16, 4, 10, 1, 19, 13, 15, 0, 2, 3, 18, 7, 8]

def bubble_sort(arr)
  (arr.size-1).times do
    exchange(arr)
  end
  arr
end

def exchange(arr)
  (0..(arr.size-2)).each do |i|
    arr[i], arr[i+1] = arr[i+1], arr[i] if arr[i] > arr[i+1]
  end
end

p bubble_sort(arr)
