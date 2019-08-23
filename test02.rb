dial_book = {
    "newyork" => "212",
    "newbrunswick" => "633",
    "edison" => "331",
    "miami" => "305",
    "paloalto" => "650",
    "orlando" => "407",
    "lancaster" => "721"
}

def get_city_names(dbook)
  return dbook.keys
end


def get_area_code(dbook, city_name)
  dbook[city_name]
end

puts "Which City do you want get area code ? "
loop do
  cities = get_city_names(dial_book)
  puts cities
  selected_city = gets.chomp
  if dial_book.include?(selected_city)
    puts "The #{selected_city} area code is #{get_area_code(dial_book, selected_city)}"
  else
    puts "Sorry it doesn't have the city that you want Bye"
    break
  end
  puts "want another city area code ?"
  out = gets.chomp.downcase
  break if out == 'n'
end
