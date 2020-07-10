p arr = [17, 11, 12, 5, 14, 9, 6, 16, 4, 10, 1, 19, 13, 15, 0, 2, 3, 18, 7, 8]

def divide(arr)
  mid = arr.size/2
  arr1 = arr[0..mid-1]
  arr2 = arr[mid..-1]
  [arr1, arr2]
end

def merge_sort(arr)
  return arr if arr.size < 2
  arr1, arr2 = divide(arr)
  merge(merge_sort(arr1), merge_sort(arr2))
end

def merge(arr1, arr2)
  return arr2 if arr1.size < 1
  return arr1 if arr2.size < 1
  if arr1.first <= arr2.first
    [arr1.first] + merge(arr1[1..-1], arr2)
  else
    [arr2.first] + merge(arr1, arr2[1..-1])
  end
end

p merge_sort(arr)
p arr
