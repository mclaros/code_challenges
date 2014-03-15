def is_armstrong?(num_str)
     return true if num_str.length == 1
     power = num_str.length
     sum = 0
     
     (0...num_str.length).each do |digit|
        sum += num_str[digit].to_i ** power 
     end
     num_str.to_i == sum
end

File.open(ARGV[0]).each_line do |line|
    puts is_armstrong?(line.chomp).to_s.capitalize
end