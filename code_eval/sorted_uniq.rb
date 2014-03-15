def uniq(arr)
    unique = []
    seen = nil
    arr.each do |el|
        unique << el if seen.nil? || (el > seen)
        seen = el
    end
    unique
end


File.open(ARGV[0]).each_line do |line|
    nums = line.split(",").map(&:to_i)
    puts uniq(nums).join(",")
end