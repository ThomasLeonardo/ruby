def translate(string)
  result = ""
  first_word = string.split(" ")[0]
  if first_word[0].scan(/[aeiou]/).count == 1
    result += first_word + "ay"
  else
    index = first_word.index(/[aeiou]/)
    if first_word[index - 1..index] == "qu"
      index += 1
    end
    result += first_word[index..-1] + first_word[0..index - 1] + "ay"
  end
  string.split(" ")[1..-1].each do |word|
    if word[0].scan(/[aeiou]/).count.to_i == 1
      result += " " + string + "ay"
    else
      index = word.index(/[aeiou]/)
      if word[index - 1..index] == "qu"
        index += 1
      end
      result += " " + word[index..-1] + word[0..index - 1] + "ay"
    end
  end
  return result
end
