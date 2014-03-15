n_longest = 0
str_lengths = Hash.new
File.open(ARGV[0]).each_line do |line|
    if line.chomp.to_i > 0
		n_longest = line.chomp.to_i
	else
		str_lengths[line.chomp] = line.chomp.length
	end
end
n_longest.times do 
	longest = str_lengths.max_by { |str, len| len }.first
	puts longest
	str_lengths[longest] = 0
end