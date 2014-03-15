File.open(ARGV[0]).each_line do |line|
    words = line.chomp.split(" ")
    puts words[-2]
end