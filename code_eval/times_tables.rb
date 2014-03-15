times_table = Array.new(12) { Array.new(12) }

times_table.each_index do |row|
   times_table.each_index do |col|
      times_table[row][col] = ((row + 1) * (col + 1)).to_s.rjust(4) 
   end
end
times_table.each do |row|
    puts row.join("")
end