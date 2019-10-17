def hello(string)
  print "Hello, #{string}!\n"
end

require 'csv'

def csv
  names = CSV.read('question2.csv')
  names = names.to_a
               .map { |name| [name[0], name[1].strip] }
               .sort { |x, y| x[1].downcase <=> y[1].downcase }

  names.each do |first_name, last_name|
    next if first_name == 'FirstName' && last_name == 'LastName'

    puts "#{first_name} #{last_name}"
  end
end

def winning_numbers(winning_number)
  last_two_digit = winning_number.to_s[4..5]
  numbers = (0..9999).map { |number| format('%06d', "#{number}#{last_two_digit}".to_i) }

  numbers
end
