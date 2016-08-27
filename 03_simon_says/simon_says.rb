def echo(string)
  string
end

def shout(string)
  string.upcase
end


def repeat(string , n = 2)
  result = string
  (0..(n - 2)).each do
    result += " "+string
  end
  return result
end

def start_of_word(string, n)
  string[0 .. n - 1]

end

def first_word(string)
  string.split[0]
end

def titleize(string)
  array = string.split
  array.length.times do |index|
    if array[index] != "and" && array[index] != "over" && array[index] != "the"
      array[index].capitalize!
    end
  end
  array[0].capitalize!
  array.join(" ")
end
