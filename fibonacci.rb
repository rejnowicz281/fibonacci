def fibonacci_iterate(n)
  return 0 if n == 0
  
  arr = [0,1]

  (n+1).times do |i|
    arr << arr[i - 1] + arr[i - 2] unless i == 0 || i == 1
  end

  return arr[n]
end

# p fibonacci_iterate(40)

def fibonacci_recursive(n)
  if n == 0 
    0
  elsif n == 1
    1
  else 
    fibonacci_recursive(n - 1) + fibonacci_recursive(n - 2)
  end
end

p fibonacci_recursive(13)