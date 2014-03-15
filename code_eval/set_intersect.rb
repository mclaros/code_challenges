File.open(ARGV[0]).each_line do |line|
    arr1, arr2 = line.chomp.split(";")
    arr1, arr2 = arr1.split(","), arr2.split(",")
    puts (arr1 & arr2).join(",")
end
