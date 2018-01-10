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
  if user_select> 0 && user_select < 5
    return user_select - 1, @departments[user_select - 1]
  else
    return false, false
  end
  # return user_select
end

dep_number, dep_symbol = user_select_department

def show_products(department)
  depproducts = @products[department]
  counter = 0
  puts "Products from this department are: "
  depproducts.each do |product|
    counter += 1
    puts "#{counter}. #{product[:reference_number]} #{product[:name]} #{product[:price]} "
  end
  print_divider
end

def get_product(dep_symbol)
  show_products(dep_symbol)
  puts "Choose product "
  return gets.chomp.to_i
end

def update_cart(upd_symbol, upd_prod_nr)
  depproducts = @products[upd_symbol]
  counter = 0
  depproducts.each do |product|
    counter += 1
    if counter == upd_prod_nr
      @shopping_cart << [ product[:name],product[:price] ]
      puts "Product #{product[:name]} added to your cart"
    end
  end

end

def show_cart
  # Show cart
  cart_total = 0
  if @shopping_cart.length > 0
    print_divider
    puts "Your shopping cart : "
    @shopping_cart.each do |line|
      puts "- #{line[0]}, price #{line[1]}"
      cart_total += line[1]
    end

    # Show total
    puts "Total amount #{cart_total}"
  end
  print_divider
end

if dep_number
  # Department chosen
  puts "Department #{dep_symbol} chosen"

  # Department is chosen
  loop do
    show_cart
    productnr = get_product(dep_symbol)
    if productnr > 0
      update_cart(dep_symbol, productnr)
    else
      break
    end
  end

end

show_cart

puts "Was nice to see you, hope to see you soon!!"
