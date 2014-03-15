require 'set'

def sum_pairs(nums, target)
    seen = Set.new
    pairs = []
    nums.each do |n|
        if seen.include?(target - n)
            pairs << [n, target - n].sort
        end
        seen.add n
    end
    return "NULL" if pairs.empty?
    pairs = pairs.sort_by { |pair| pair.first }
    pairs.map! { |pair| pair.join(",") }
    pairs.join(";")
end

File.open(ARGV[0]).each_line do |line|
    nums, target = line.chomp.split(";")
    nums = nums.split(",").map(&:to_i)
    puts sum_pairs(nums, target.to_i)
end