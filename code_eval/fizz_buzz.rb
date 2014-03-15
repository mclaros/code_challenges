File.open(ARGV[0]).each_line do |line|
    a, b, n = line.split(" ").map(&:to_i)
    result = ""
    (1..n).each do |num|
        if ((num % a == 0) && (num % b == 0))
            result << "FB "
        elsif (num % a == 0)
            result << "F " 
        elsif (num % b == 0)
            result << "B " 
        else
            result << "#{num} "
        end
    end
    
    puts result
end
