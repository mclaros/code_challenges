def is_email?(string)
    email_format = /^(\w+)@(\w+)\.(\S{2,})$/
    if string =~ email_format
        true
    else
        false
    end
end

File.open(ARGV[0]).each_line do |line|
    puts is_email?(line.chomp)
end