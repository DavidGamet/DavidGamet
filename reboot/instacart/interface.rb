bunch_of_food = {
"burger" => 3,
"salad" => 2,
"lasagne" => 5,
"spaghetti" => 4
}


p "Welcome to your store! "


# afficher ce qui est diponible
bunch_of_food.each do |key, value|
p "#{key}  :  #{value}"
end

bill = 0
while true
p "Choose your meal"
meal1 = gets.chomp


p "How much #{us}


bill += bunch_of_food[meal1]

p " Your bill is #{bill} euros "

p "do you want another product ? [Y]"
meal_add = gets.chomp
user_response = gets.chomp
break if meal_add.downcase != "y"

end

p "bye bye"

