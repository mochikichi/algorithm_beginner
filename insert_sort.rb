p arr = [17, 11, 12, 5, 14, 9, 6, 16, 4, 10, 1, 19, 13, 15, 0, 2, 3, 18, 7, 8]

@sorted_arr = [arr[0]]

def insert_sort(arr)
  (1..(arr.size-1)).each do |i|
    min = select_min(arr, i)
    insert(@sorted_arr, min, arr[i])
  end
  @sorted_arr
end

def select_min(arr, i)
  min = @sorted_arr.size
  i.times do |j|
    break if @sorted_arr.size == j
    break min = j if @sorted_arr[j] > arr[i]
  end
  min
end

def insert(arr, insert_index, val)
  (insert_index..(arr.size-1)).to_a.reverse.each do |i|
    arr[i+1] = arr[i]
  end
  arr[insert_index] = val
  arr
end

p insert_sort(arr)
