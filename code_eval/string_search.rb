#using regexp; alternatively could use Trie structures

def includes?(str, target)
    (0...target.length).each do |idx|
        char = target[idx]
    if (char == "*") && (target[idx - 1] != "\\")
            target[idx] = "."
        end
    end
    
    query = Regexp.new target
    !(query =~ str).nil?
end

File.open(ARGV[0]).each_line do |line|
    str, target = line.chomp.split(",")
    puts includes?(str, target)
end
