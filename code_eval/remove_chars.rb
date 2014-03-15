def delete_chars(str, chars_string)
    chars_string.each_char do |char|
		str = str.delete char
	end
	str
end

File.open(ARGV[0]).each_line do |line|
	str, to_del = line.chomp.split(", ")
	puts delete_chars(str, to_del)
end