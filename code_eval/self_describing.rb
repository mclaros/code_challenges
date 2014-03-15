def describes_self?(string_num)
    (0..(string_num.length - 1)).each do |idx|
		if string_num[idx].to_i != string_num.count(idx.to_s)
			return 0
		end
	end
	1
end

File.open(ARGV[0]).each_line do |line|
    puts describes_self?(line.chomp)
end
