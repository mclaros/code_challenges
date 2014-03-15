def my_mod(n, m)
    	return n if n < m
		until n - m < 0
			n -= m
		end
		n
end

File.open(ARGV[0]).each_line do |line|
    n, m = line.split(",").map(&:to_i)
    puts my_mod(n, m)
end
