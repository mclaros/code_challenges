require 'set'

dictionary = Set.new
("a".."z").each do |letter|
   dictionary.add letter
end

File.open(ARGV[0]).each_line do |line|
    beauty = 0
    letter_count = Hash.new(0)
    max_factors = (1..26).to_a
    
    chars = line.chomp.split("").map(&:downcase)
    chars.each { |char| letter_count[char] += 1 if dictionary.include? char }
    letter_count.values.sort.each_with_index do |count, idx|
       beauty += count * max_factors[idx] 
    end
    puts beauty
end
