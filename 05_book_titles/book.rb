class Book
  def title=(string)
      @title = titleize(string)
  end
  def title
    @title
  end
end

def titleize(string)
  dont_cap = ["and", "over", "the", "in", "of", "a", "an"]
  array = string.split
  array.length.times do |index|
    if !dont_cap.include?(array[index])
      array[index].capitalize!
    end
  end
  array[0].capitalize!
  array.join(" ")
end
