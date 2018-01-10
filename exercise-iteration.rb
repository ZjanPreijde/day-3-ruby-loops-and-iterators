def ask(message, insist = 0, insist_message = "")
  # When I have some time left over ;-)
end

def exercise_1
  puts "\nExercise (Array) .each (1) ..."
  fruits = ["apples", "oranges", "pears", "apricots"]
  counter = 0
  fruits.each do |fruit|
    counter += 1
    puts "#{counter}) I love #{fruit}."
  end
end
# exercise_1

def exercise_2
  puts "\nExercise (Array) .each (2) ..."
  numbers = []
  [1,2,3,4,5].each do |number|
    puts  "Adding #{number} to the list."
    numbers << number
  end
  puts ""
  numbers.each do |number|
    puts "Number was: #{number}."
  end
end
# exercise_2

def exercise_3
  puts "\nExercise (Array) .each_with_index ..."
  numbers = []
  [1,2,3,4,5].each do |number|
    puts  "Adding #{number} to the list."
    numbers << number
  end
  puts ""
  numbers.each_with_index do |number, index|
    puts "Number #{number} was added at location #{index}."
  end
end
# exercise_3

def exercise_4
  puts "\nExercise (Hash) .each Iterate of array of friends-hashes ..."
  # Defining key - value pair :
  #  - "key" => value
  #  - :key => value
  #  - key: value

  # Define array of friends,
  #   each friend is a hash with keys name, occupation, city
  # For some reason putting ',' on new line before next hash
  #   in stead of behind previous hash does not work
  # friends = [
  #   {name: "Peter", occupation: "eyologist", city: "Heiloo"}
  #   ,{name: "Jenny", occupation: "volunteer", city: "Geleen"}
  #   ,{name: "Donald", occupation: "cartoon character", city: "Duck City"}
  # ]
  friends = [
    {name: "Peter", occupation: "eyologist", city: "Heiloo"},
    {name: "Jenny", occupation: "volunteer", city: "Geleen"},
    {name: "Donald", occupation: "cartoon character", city: "Duck City"}
  ]

  # Put screen friends
  friends.each do |friend|
    # Symbol starts with :, can only end with : when assigning value
    puts "#{friend[:name]} lives in #{friend[:city]} and works as a #{friend[:occupation]}."
  end
end
exercise_4

def exercise_5
  puts "\nExercise (Hash) .each_key .each_value Print keys, print values ..."
  friend =
    {name: "Peter", occupation: "eyologist", city: "Heiloo"}

  # Put screen keys
  friend.each_key { |key| puts "Key #{key}." }
  # Put screen values
  friend.each_value { |value| puts "Value #{value}." }
end
exercise_5

def exercise_6
  puts "\nExercise (Hash) .select ..."
  puts "Does not work yet"
  family = {
    uncles: ["bob", "joe", "steve"],
    sisters: ["jane", "jill", "beth"],
    brothers: ["frank","rob","david"],
    aunts: ["mary","sally","susan"]
  }
  girly_names = family.select {| key , value | key == :sisters || or key == :aunts}
  # .flatten method, not introduced before
  output = girly_names.values.flatten
  puts output
end
exercise_6
