require 'pry'

# this method returns an array of hashes, which we'll use in the other methods
def spicy_foods 
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
  ]
end

# given an array of spicy foods, **return an array of strings**
# with the names of each spicy food
def get_names(spicy_foods)
  # your code here
  # spicy_food =[]
  foods = spicy_foods.collect do |f|
    f[:name]
    end
    # puts foods
    return foods
end
# p get_names(spicy_foods)

# given an array of spicy foods, **return an array of hashes** 
# where the heat level of the food is greater than 5
def spiciest_foods(spicy_foods)
  # your code here
  low_heat = spicy_foods.select do |f|
  f[:heat_level] > 5
  end
  # puts low_heat
  return low_heat
end
# p spiciest_foods (spicy_foods)

# binding.pry


# given an array of spicy foods, **output to the terminal**
# each spicy food in the following format: 
# Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# HINT: you can use * with a string to produce the correct number of 🌶 emoji. 
# "hello" * 3 == "hellohellohello"
def print_spicy_foods(spicy_foods)
  # your code here
  food = spicy_foods.map do |f|
 "#{f[:name]} (#{f[:cuisine]}) | Heat Level: " +  "🌶" * f[:heat_level]
  end
  puts food
  return food
end
# p print_spicy_foods(spicy_foods)

# given an array of spicy foods and a string representing a cuisine, **return a single hash**  
# for the spicy food whose cuisine matches the cuisine being passed to the method
def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  # your code here
  # puts spicy_foods
  match= spicy_foods.find do |f|
  f[:cuisine] == cuisine
  end
  puts match
  return match
end
# get_spicy_food_by_cuisine(spicy_foods, "American")

# Given an array of spicy foods, **return an array of hashes** 
# sorted by heat level from lowest to highest
def sort_by_heat(spicy_foods)
  # your code here
  # have the heat in array

# ordered_foods = spicy_foods.sort do |food1,food2|
  
#     if food1[:heat_level]==food2[:heat_level]
#      0
#     elsif food1[:heat_level] < food2[:heat_level]
#     -1

#     elsif food1[:heat_level] > food2[:heat_level]
#       1
#     end
#   end
# p ordered_foods
# return ordered_foods  

ordered_foods = spicy_foods.sort_by{ |food| food[:heat_level]}
puts ordered_foods
return ordered_foods
end
# sort_by_heat(spicy_foods)



# given an array of spicy foods, output to the terminal ONLY 
# the spicy foods that have a heat level greater than 5, in the following format: 
# Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# HINT: Try to use methods you've already written to solve this!
def print_spiciest_foods(spicy_foods)
  # your code here
  hot_five_foods =spicy_foods.select do |f| 
    if f[:heat_level]>5
   puts "#{f[:name]} (#{f[:cuisine]}) | Heat Level: " + "🌶" *f[:heat_level]
  end
  end
  puts hot_five_foods
return hot_five_foods
end
# print_spiciest_foods(spicy_foods)




# given an array of spicy foods, return an integer representing 
# the average heat level of all the spicy foods in the array
def average_heat_level(spicy_foods)
  # your code here
  sum = 0
  average = 0
 spicy_foods.each do |f1|
    sum += f1[:heat_level]
    average = sum/spicy_foods.length
  end
puts average
  return average
end
average_heat_level(spicy_foods)