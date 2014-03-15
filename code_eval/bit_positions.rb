def to_bin(n)
    bin = ""
    while n > 0
        bin << (n % 2).to_s
        n /= 2
    end
    bin.reverse
end

File.open(ARGV[0]).each_line do |line|
    n, idx1, idx2 = line.split(",").map(&:to_i)
    bin = to_bin(n)
    puts (bin[-idx1] == bin[-idx2])
end