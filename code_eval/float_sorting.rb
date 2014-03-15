#using built in sort

File.open(ARGV[0]).each_line do |line|
    nums = line.chomp.split(" ").map(&:to_f).sort
    puts nums.join(" ")
end