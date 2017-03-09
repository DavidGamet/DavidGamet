 # Say Hello to the User

p "Hello, Welcome to your calculator"

#2 Ask for first digit ?

p "What is your first digit ?"

p ">"

first_input = gets.chomp.to_i



#3 Ask for second digit ?

p "What is your second digit ?"

p ">"

second_input = gets.chomp.to_i



#4 Ask the operator ?

p "What is your operator ? [+][-][*][/][%]"

p ">"

operator = gets.chomp



if operator == "+"

  result = (first_input + second_input).to_i

elsif operator == "-"

  result = (first_input - second_input).to_i

elsif operator == "*"

  result = (first_input * second_input).to_i


elsif operator == "/"

  result = (first_input / second_input).to_

elsif operator == "/"

  result = (first_input / second_input).to_i

elsif operator == "%"

  result = (first_input % second_input).to_i

end



#5 Display the result

p "here is your result #{result}"
