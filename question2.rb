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

csv
