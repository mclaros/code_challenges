def first_no_repeat(str)
    freq = Hash.new(0)
	str.each_char { |char| freq[char] += 1 }
	str.each_char { |char| return char if freq[char] == 1}
end

File.open(ARGV[0]).each_line do |line|
	str = line.chomp
	puts first_no_repeat(str)
end