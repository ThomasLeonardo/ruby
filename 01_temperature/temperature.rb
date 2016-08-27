def ctof(temp)
  (temp * 1.8 + 32).round(2)
end

def ftoc(temp)
  c = (temp - 32) / 1.8
  c.round(2);
end
