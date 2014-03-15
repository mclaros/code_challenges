def detect_loops(arr)
    str_indices = Hash.new
	arr.each_with_index do |char, idx|
		str_indices[char] ||= Array.new
		str_indices[char] << idx
	end

	str_indices.select do |str, indices|
		indices.length > 1 && evenly_spaced?(indices)
	end.keys
end

def evenly_spaced?(indices)
	gap = 0

	indices.map.with_index do |pos, idx|
		if idx == indices.length - 1
			curr_gap = (pos - indices[idx - 1]).abs
			return false if curr_gap != gap
			true
		else
			curr_gap = (pos - indices[idx + 1]).abs
			gap = curr_gap if idx == 0
			return false if curr_gap != gap
			true
		end
	end

	indices.all? { |truth| truth }
end

File.open(ARGV[0]).each_line do |line|
	chars = line.chomp.split(" ")
	puts detect_loops(chars).join(" ")
end
