def winning_numbers(winning_number)
  last_two_digit = winning_number.to_s[4..5]
  numbers = (0..9999).map { |number| format('%06d', "#{number}#{last_two_digit}".to_i) }

  numbers
end

p winning_numbers(120_888)
