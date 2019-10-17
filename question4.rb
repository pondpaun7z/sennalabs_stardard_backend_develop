def possible_permutations(number)
  number.to_s.split('').permutation.map(&:join)
end


p possible_permutations(209324)
