def count_one_bits(n)
    one_bits = 0
    
    while n > 0
        bit = n % 2
        one_bits += 1 if bit == 1
        n /= 2
    end
    one_bits
end

File.open(ARGV[0]).each_line do |line|
    n = line.chomp.to_i
    puts count_one_bits(n)
end
