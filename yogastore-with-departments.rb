#Lab excercise Yoga store-with departments
@shopping_cart = []

@departments = [ :mats, :props, :clothes, :books ]

@products = {
  mats: [
    { reference_number: 1231, name: "Super Lite Mat", price: 10 },
    { reference_number: 1232, name: "Power Mat", price: 20 },
  ],
  props: [
    { reference_number: 1233, name: "Block", price: 30 },
    { reference_number: 1234, name: "Meditation cushion", price: 30 },
  ],
  clothes: [
    { reference_number: 1235, name: "The best T-shirt", price: 200 },
    { reference_number: 1236, name: "The cutest yoga pants", price: 300 },
  ],
  books: [
    { reference_number: 1237, name: "Bring Yoga To Life", price: 30 },
    { reference_number: 1238, name: "Light On Yoga", price: 10 },
  ]
}

def print_divider
  puts "*" * 40
  puts "\n"
end

def print_progress_bar
  3.times { sleep 0.5; print "." }
  puts "\n"
end

#Welcome message
puts "welcome to the Yoga store. At this store we have the following departments:"

def print_departments
  counter=1
  @departments.each {|key|
     puts "Department #{counter}. #{key}"
     counter += 1
   }
end

print_departments

def user_select_department
  print "Please select the number of the department: "
  user_select=gets.chomp.to_i
  return user_select
end

dep_number=user_select_department

if dep_number >0 && dep_number <5
  puts "Let's go shopping ;)"
end



puts "Was nice to see you, hope to see you soon!!"
