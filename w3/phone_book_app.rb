require './phone_book.rb'

#phone = PhoneBook.new('Umut Koca','12312312313')

#full_name = gets.chomp
#number = gets.chomp

phone = PhoneBook.new('Umut', 'Koca','12312312313')

puts phone.print_full_name
