def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def sum(array)
  sum = 0
  array.each do |num|
    sum += num
  end
  return sum
end

def multiply(nums)
  total = 1
  nums.each do |num|
    total *= num
  end
  return total
end

def pow(base, exp)
  base ** exp
end

def fact(num)
  if num == 0
    return 1
  end
  num * fact(num - 1)
end
