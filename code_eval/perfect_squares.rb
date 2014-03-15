def num_of_square_addends(n)
    num_squares = 0
    squares_prior = Hash.new(false)
    root = 1
    
    while (root ** 2) <= (n / 2)
        square = root ** 2
        squares_prior[square] = true
        num_squares += 1 if squares_prior[n - square]
        root += 1
    end
    num_squares
end

File.open(ARGV[0]).each_line do |line|
    n = line.chomp.to_i
    puts num_of_square_addends(n)
end