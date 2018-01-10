def ask(message, insist = 0, insist_message = "")
end

def excercise_1
  puts "\nExcercise loop do (1) ..."
  counter = 0
  puts ""
  loop {
    counter += 1
    if counter == 4
      next
    end
    if counter%2 == 0
      puts "Even number : " + counter.to_s
    end
    if counter == 10
      break
    end
  }
end

# exercise_1

def exercise_2
  puts "\nExcercise loop do (2) ..."
  loop {
    puts "Got all the ingredients you need? (Y/N)"
    case gets.chomp.upcase
    when "Y"
      break
    when "N"
    else
      puts "Please enter 'Y' or 'N'"
    end
  }
end
# exercise_2

def exercise_3
    puts "\nExcercise while loop (1) ..."
    counter = 0
    while counter < 6
      counter += 1
      puts "Break egg #{counter}."
    end
end
# exercise_3

def exercise_4
    puts "\nExcercise while loop (2) ..."
    print "What number to count down from "
    counter = gets.to_i
    puts ""
    while counter >= 0
      puts "Counting down #{counter}."
      counter -= 1
    end
end
# exercise_4

def exercise_5
  puts "\nExercise for loop (1) ..."
  for counter in 1..5
    puts "Break egg #{counter}."
  end
end
# exercise_5

def exercise_6
  puts "\nExercise for loop (2) ..."
  print "What number to count down from "
  times = gets.to_i
  for counter in 0..times
    puts "Counting down #{times-counter}."
  end

  puts "\nExercise for loop (2), using .downto() ..."
  print "What number to count down from "
  times = gets.to_i.downto(0)
  for counter in times
    puts "Counting down #{counter}."
  end

end
exercise_6
