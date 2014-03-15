#without built-in index
File.open(ARGV[0]).each_line do |line|
    str, target = line.chomp.split(",")
	trailing = str[(str.length - target.length)..-1]
	puts (trailing == target ? 1 : 0)
end
