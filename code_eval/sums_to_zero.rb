def zero_sum_count(nums)
    count = 0
    nums.combination(4).each do |num_set|
       count += 1 if zero_sum?(num_set) 
    end
    count
end

def zero_sum?(nums)
   nums.inject(:+) == 0 
end

File.open(ARGV[0]).each_line do |line|
    nums = line.chomp.split(",").map(&:to_i)
    puts zero_sum_count(nums)
end