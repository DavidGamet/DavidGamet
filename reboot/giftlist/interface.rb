require_relative "utilities"


#Define our giftlist model
giftlist = [
  {name: "Jean 501", checked: false},
  {name: "basket Nike", checked: true}
]
# 1. Welcome
p "Welcome to Vente Privée"
# 2. Display menu (list / add / delete / mark / exit )
while true
  puts "Choose an action : list / add / inspiration / delete / mark / exit"
  print ">"
  # when user_menu_choice_action
  #   p menu
  p "Enter your action: "
  action = gets.chomp
    case action
      when "list"
      print_list(giftlist)
       #=> need to define the product list (create an array_of_hash)
      when "add"
        puts "What do you want to add?"
        print ">"
        user_product_choice = {name: gets.chomp, checked: false}
        giftlist << user_product_choice
       print_list(giftlist)
      when "delete"
        print_list(giftlist)
        puts "What do you want to delete?"
        print ">"
        user_product_choice = gets.chomp.to_i
        giftlist.delete_at(user_product_choice - 1)
        print_list(giftlist)
      when "mark"
        print_list(giftlist)
        puts "What do you want to mark?"
        print ">"
        user_product_mark = gets.chomp.to_i
        giftlist[user_product_mark - 1][:checked]=true
        print_list(giftlist)
      when "exit"xwggh
      break

      when "inspiration"
        # Ask user what type of inspiration he want
        p "What type of inspiration do you want ?"
        inspiration = gets.chomp
        etsy_array = scraper(inspiration)
        print_list_etsy(etsy_array)
        p "Choose a number to add in giflist"

        user_product_choice_etsy = {name: etsy_array[gets.chomp.to_i - 1], checked: false}



        giftlist << user_product_choice_etsy

        # list giftlist
        print_list(giftlist)

      else
        puts "This action is not defined, please try again"
        print ">"
        action = gets.chomp
   end
end
p "Goodbye"

