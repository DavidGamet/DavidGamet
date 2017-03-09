require_relative "accesibilitys"

store = {
  "kiwi" => {price: 3, quantity: 100},
  "banana" => {price: 2, quantity: 10},
  "salad" => {price: 5, quantity: 30}
}

bill = 0

while true

  p "Please select a product"
  store.each do |name, info|
    p "#{name} - #{info[:price]}euros - #{info[:quantity]} left"

    end
  p ">"
  user_choice = valid_input
  p user_choice

  p "How much #{user_choice} do you want?"
  user_quantity_choice = gets.chomp.to_i


  bill += store[user_choice][:price] * user_quantity_choice

  p "Your bill is #{bill} euros"



p "Do you want an other product? [Y]"
  user_response = gets.chomp

  break if user_response.downcase != "y"

end



p "Bye Bye"
