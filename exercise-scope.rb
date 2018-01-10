# missing_left_socks.rb
def exercise_1
  # Initialize number of missing socks
  missing_left_socks = 0
  loop do
    # Put screen number of missing socks
    if missing_left_socks == 0
      puts "All your socks are in place"
    else
      puts "You are missing #{missing_left_socks} left socks!"
    end

    # Increment number of missing socks
    missing_left_socks += 2
    if missing_left_socks >= 8
      # Put screen total number of missing socks and exit
      puts "in total you are missing #{missing_left_socks} left socks!"
      break
    end
  end
end
#exercise_1

# def exercise_2
#   pepperoni_pizza = 'pepperoni'
#   def print_pepperoni
#     puts pepperoni_pizza   # ====>  ERROR
#   end
# end
# exercise_2
