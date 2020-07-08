#Divide and Conquer
def fib_div_con(n)
  return 1 if n == 0 || n == 1
  fib_div_con(n-1) + fib_div_con(n-2)
end

35.times { |i| p fib_div_con(i) }
