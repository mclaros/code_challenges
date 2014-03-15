def sum_digits(n)
   sum = 0
   while n > 0
    sum += n % 10
    n /= 10
   end
   sum
end


File.open(ARGV[0]).each_line do |line|
    puts sum_digits(line.to_i)
end