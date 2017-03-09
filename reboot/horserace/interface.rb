
horses = ["Belle du printemps", "Joker de la Motte", "Atlas éclair", "Casaque verte"]

# Welcome our user

p "Hello welcome to Longchamps"

# Print the horses'list

print_and_array_with_index(horses)

# => 1 - Belle du printemps

# => 2 - Joker de la Motte...



# User chooses a horse

p "Please pick up a horse number"

horse_number_picked = gets.chomp.to_i

picked_horse = horses[horse_number_picked - 1]

p "You chose #{picked_horse}"

# run the race

race_result = horses.shuffle



def anchorman(Comment,time, array )
puts comment
sleep(time)
print_and_array_with_index(array)
end

P
# Display the race and comments

#=> "What a bold move"

# Comment

#=> wait 5s

# sleep

#=> horse list

# race status



# Display the result

print_and_array_with_index(race_result)



 if race_result[0] == picked_horse

  p "You win"

else

  p "You loose"

end
