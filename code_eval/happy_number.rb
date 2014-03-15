require 'set'
def is_happy?(num)
    seen = Set.new
	done = false

	until done
		if seen.include? num
			puts 0
			done = true
		elsif num == 1
			puts 1
			done = true
		end
		seen.add(num)
		num = sq_digits_sum(num)
	end
end

def sq_digits_sum(num)
    sum = 0
	
	while num > 0
		sum += (num % 10) ** 2
		num /= 10
	end
	sum
end

File.open(ARGV[0]).each_line do |line|
    is_happy?(line.to_i)
end
