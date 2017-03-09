require 'open-uri'
require 'nokogiri'

def scraper(ingredient)
  etsy_array = []
  html_file = open("https://www.etsy.com/search?q=#{ingredient}")
  html_doc = Nokogiri::HTML(html_file)

  html_doc.search(".card").each do |card|
    title = card.search(".card-title").text.strip
   etsy_array << title
  end
  return etsy_array
end

def print_list_etsy(etsy_array)
   etsy_array.each_with_index do |product, index|
    puts "#{index + 1} - #{product}"
  end
end


def print_list(array_of_hashs)
array_of_hashs.each_with_index do |product, index|
  if product[:checked]
        puts "[X]- #{index + 1} - #{product[:name]}"
  else
        puts "[ ]- #{index + 1} - #{product[:name]}"
        end
    end
end
