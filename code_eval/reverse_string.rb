File.open(ARGV[0]).each_line do |line|
    original = line.split(" ")
    reversed = ""
    (original.length - 1).downto(0) do |idx|
        reversed << original[idx] + " "
    end
    puts reversed.chomp
end