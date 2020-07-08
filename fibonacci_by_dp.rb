def fib_dp(n)
  memo = [1, 1]
  (2..n).each do |i|
    memo[i] = memo[i-1] + memo[i-2]
  end
  memo[n]
end

35.times { |i| p fib_dp(i) }
