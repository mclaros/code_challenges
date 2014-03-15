require 'set'

def common_subseqs(arr1, arr2)    
    subseq = []
    common_left = arr1 & arr2
    common_right = arr2 & arr1
    
    combed = common_left.map { |el| common_right.index(el) }
    ordered = combed.select { |idx| idx <= (combed.index(idx) + 1) }
    if ordered[-1] < ordered[-2]
        ordered.pop
    end
    
    ordered.each { |idx| subseq << common_right[idx] }
    subseq
end

File.open(ARGV[0]).each_line do |line|
    next if line.chomp.empty?
    set1, set2 = line.chomp.split(";")
    set1, set2 = set1.split(""), set2.split("")
    puts common_subseqs(set1, set2).join("")
end
