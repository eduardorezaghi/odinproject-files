def recur_countzero(number)
  if number <= 0
    return 0
  end
  puts number
  recur_countzero(number - 1)
end

recur_countzero(10)
