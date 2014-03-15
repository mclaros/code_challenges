#assume input follows format: string N
File.open(ARGV[0]).each_line do |line|
    list = line.chomp.split(" ")
    rev_idx = list.pop.to_i
    puts list[-rev_idx]
end