# This is the iterative way to return a fibonacci array
def fib_iter(num)
  fib_seq = [0, 1]
  a = 0
  b = 1

  for i in 1...num
    temp = b
    b = a + b
    a = temp
    fib_seq << b
  end
  fib_seq
end

# This is the recursion way of returning a fibonacci array
def fib_recur(num)
  return [0] if num === 0
  return [0, 1] if num === 1

  fib_seq = fib_recur(num - 1)
  fib_seq << fib_seq[-2] + fib_seq[-1]
end
