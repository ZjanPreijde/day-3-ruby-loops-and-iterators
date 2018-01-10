# missing_left_socks.rb
def exercise_1
  puts "\nExercise 1, Scope, local variable defined, print in loop"
  # Initialize number of missing socks
  missing_left_socks = 0
  loop do
    # Put screen number of missing socks
    case
    when missing_left_socks == 0
      # Show message no missing left socks
      puts "All your left socks are in place"
    when missing_left_socks < 8
      # Show number of missing left socks
      puts "You are missing #{missing_left_socks} left socks!"
    else
      # Put screen total number of missing left socks and exit
      puts "in total you are missing #{missing_left_socks} left socks!"
      break
    end

    # Increment number of missing socks
    missing_left_socks += 2
  end
  puts "-" * 40
end
exercise_1

def exercise_2
  puts "\nExercise 2, Scope, local variable defined, print in method"
  pepperoni_pizza = 'pepperoni'
  puts "Expecting error: "
  def print_pepperoni
    puts pepperoni_pizza   # ====>  ERROR
  end
  #  print_pepperoni
  puts "Execution suppressed"
  puts "-" * 40
end
exercise_2

def exercise_3
  puts "\nExercise 3, Scope, local variable defined, print in method"
  pepperoni_pizza = "pepperoni"
  @quattro_formaggio_pizza = "quattro_formaggio"
  def print_formaggio_pizza
    puts @quattro_formaggio_pizza
  end
  print_formaggio_pizza
  puts "-" * 40
end
exercise_3

def exercise_4
  puts "\nExercise 4, Scope, local variable defined in loop, exists after loop"
  # look, we don't set count before the while
  puts "All your socks are in place"
  while true   # this mimics the behavior of a loop - endless looping...
    count = count || 0 # we set count to zero if it had not been set before.
    count += 2
    break if count == 8
    puts "you are missing #{count} left socks!"
  end
  puts "In total you are missing #{count} left socks."
  puts "-" * 40
end
exercise_4
