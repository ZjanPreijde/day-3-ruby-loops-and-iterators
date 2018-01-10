puts "\nScraping 1 ...."
counter = 1
loop do
  puts "Scrape potato #{counter}."
  break           # this will exit the loop
end

puts "\nScraping 2 ...."
counter = 0
loop do
  counter = counter + 1

  if counter == 3
    next          # skip rest of the code in this iteration
  end

  puts "Scrape potato #{counter}."

  if counter == 5
    break         # this will exit the loop
  end
end

puts "\nScraping 3 ...., press <Enter>"
gets
counter = 0
loop {
  counter = counter + 1

  if counter == 3
    next          # skip rest of the code in this iteration
  end

  puts "Scrape potato #{counter}."

  if counter == 5
    break         # this will exit the loop
  end
}
