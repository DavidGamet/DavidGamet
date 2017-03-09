def valid_input
  user_choice = gets.chomp
  until store.include?(user_choice) != true
  return "not available in the store"
  user_choice = gets.chomp
  end
  return user_choice
end

def quantity(store)
  until user_quantity_choice > store[Ø][:quantity]
return
end




