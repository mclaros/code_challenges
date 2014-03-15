File.open(ARGV[0]).each_line do |line|
    letters = line.chomp.split("")
    perms = letters.permutation(letters.length).to_a
    perms.map! {|perm_arr| perm_arr.join("") }
    perms.sort! { |a, b| a[0] <=> b[0] }
    puts perms.join(",")
end
