def missing_letters(str)
    alphabet = "a".."z"
    missing = []
    letters_inc = Hash.new(false)
    
    (0...str.length).each do |idx|
        char = str[idx]
        next unless alphabet.include? char
        letters_inc[char] = true
    end
    alphabet.each do |letter|
       missing << letter unless letters_inc[letter] 
    end
    missing.empty? ? "NULL" : missing.join("")
end

File.open(ARGV[0]).each_line do |line|
    pangram = line.chomp.downcase
    puts missing_letters(pangram)
end