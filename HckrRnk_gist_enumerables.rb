def sum_terms(n)
  # your code here
    #formula says n > 0, so in (y..n) y is at least 1
    #call the inject method and start your output variable at 0
    #use the hash to run the fomula (n**2 + 1) and then add that number to sum variable
    (1..n).inject(0) { |sum, n| sum + n ** 2 + 1 }
end

def skip_animals(animals, skip)
  # Your code here
    arr = []
    animals.each_with_index { |value, index| arr << "#{index}:#{value}" unless index < skip}
    arr
end

