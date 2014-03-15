File.open(ARGV[0]).each_line do |line|
    floor, multiple = line.split(",").map(&:to_i)
    factor = 1
    while (multiple * factor) < floor
        factor += 1
    end
    puts multiple * factor
end