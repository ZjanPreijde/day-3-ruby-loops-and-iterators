def exercise_1
  puts "\nExercise (Array) .each (1) ..."
  fruits = ["apples", "oranges", "pears", "apricots"]
  counter = 0
  fruits.each do |fruit|
    counter += 1
    puts "#{counter}) I love #{fruit}."
  end
  puts "-" * 40
end
exercise_1

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
  puts "-" * 40
end
exercise_2

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
  puts "-" * 40
end
exercise_3

def exercise_4
  puts "\nExercise (Hash) .each Iterate of array of friends-hashes ..."
  # Defining key - value pair :
  #  - "key" => value
  #  - :key => value
  #  - key: value

  # Define array of friends,
  #   each friend is a hash with keys name, occupation, city
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
  puts "-" * 40
end
exercise_4

def exercise_5
  puts "\nExercise (Hash) .each_key .each_value Print keys, print values ..."
  friend =
    {name: "Peter", occupation: "eyologist", city: "Heiloo"}

  # Put screen keys
  puts "Keys :"
  friend.each_key { |key| puts "Key #{key}." }
  # Put screen values
  puts "Values :"
  friend.each_value { |value| puts "Value #{value}." }
  puts "-" * 40
end
exercise_5

def exercise_6
  puts "\nExercise (Hash) .select ..."
  family = {
    uncles: ["bob", "joe", "steve"],
    sisters: ["jane", "jill", "beth"],
    brothers: ["frank","rob","david"],
    aunts: ["mary","sally","susan"]
  }
  puts "Family : "
  puts family
  close_relatives = family.select {| key , value | key == :sisters || key == :brothers}
  puts "Close relatives : "
  puts close_relatives
  # .values method, not introduced before
  puts "Close relatives (.values): "
  puts close_relatives.values
  # .flatten method, not introduced before
  puts "Close relatives (.values.flatten): "
  puts close_relatives.values.flatten
  puts "Calling .flatten does not seem to add anything usefull here"
  puts "-" * 40
end
exercise_6
