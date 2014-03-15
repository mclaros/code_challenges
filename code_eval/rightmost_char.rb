#Print -1 if char not found

File.open(ARGV[0]).each_line do |line|
    string, target = line.split(",")
    puts (string.rindex(target.chomp) || -1)
end