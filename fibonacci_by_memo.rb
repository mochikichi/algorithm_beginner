@memo = []
def fib_memo(n)
  return 1 if n == 0 || n == 1
  return @memo[n] if @memo[n]
  @memo[n] = fib_memo(n-1) + fib_memo(n-2)
end

35.times { |i| p fib_memo(i) }
