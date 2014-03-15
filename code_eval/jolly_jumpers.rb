require 'set'
def jolly_jumpers?(num_seq)
    return 'Jolly' if num_seq.length == 1
    diffs = Set.new
    range = (1...num_seq.length)
    
    num_seq.each_with_index do |n, idx|
       next if idx == num_seq.length - 1
       diff = (num_seq[idx+1] - n).abs
       return 'Not jolly' if (diff < 1) || (diff > num_seq.length - 1)
       diffs.add diff
    end
    range.each { |n| return 'Not jolly' unless diffs.include? n }
    'Jolly'
end

File.open(ARGV[0]).each_line do |line|
    sequence = line.chomp.split(" ").map(&:to_i)
    puts jolly_jumpers?(sequence)
end